// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import {IERC20} from "./IERC20.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        Listener listener = new Listener();
        addTrigger(
            ChainIdContract(8453, 0x777777751622c0d3258f214F9DF38E35BF45baF3),
            listener.triggerOnCoinCreatedV4Event()
        );
    }
}

contract Listener is ZoraFactory$OnCoinCreatedV4Event {
    struct CoinCreatedEvent {
        uint64 chainId;
        address caller;
        address payoutRecipient;
        address platformReferrer;
        address currency;
        string uri;
        string name;
        string symbol;
        address coin;
        address poolKeyCurrency0;
        address poolKeyCurrency1;
        uint24 poolKeyFee;
        int24 poolKeyTickSpacing;
        address poolKeyHooks;
        uint256 balanceOfPoolManager;
        uint8 decimals;
    }

    event CoinCreated(CoinCreatedEvent);
    address public constant POOL_MANAGER = 0x498581fF718922c3f8e6A244956aF099B2652b2b;
    
    function onCoinCreatedV4Event(
        EventContext memory ctx,
        ZoraFactory$CoinCreatedV4EventParams memory inputs
    ) external override {

        CoinCreatedEvent memory coinCreatedEvent = CoinCreatedEvent({
            chainId: uint64(block.chainid),
            caller: inputs.caller,
            decimals: IERC20(inputs.coin).decimals(),
            payoutRecipient: inputs.payoutRecipient,
            platformReferrer: inputs.platformReferrer,
            currency: inputs.currency,
            uri: inputs.uri,
            name: inputs.name,
            symbol: inputs.symbol,
            coin: inputs.coin,
            poolKeyCurrency0: inputs.poolKey.currency0,
            poolKeyCurrency1: inputs.poolKey.currency1,
            poolKeyFee: inputs.poolKey.fee,
            poolKeyTickSpacing: inputs.poolKey.tickSpacing,
            poolKeyHooks: inputs.poolKey.hooks,
            balanceOfPoolManager: IERC20(inputs.coin).balanceOf(POOL_MANAGER)
        });

        emit CoinCreated(coinCreatedEvent);
    }
}
