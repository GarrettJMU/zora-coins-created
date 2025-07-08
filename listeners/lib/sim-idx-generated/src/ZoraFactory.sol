// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function ZoraFactory$Abi() pure returns (Abi memory) {
    return Abi("ZoraFactory");
}
struct ZoraFactory$UpgradeInterfaceVersionFunctionOutputs {
    string outArg0;
}

struct ZoraFactory$CoinAddressFunctionInputs {
    address msgSender;
    string name;
    string symbol;
    bytes poolConfig;
    address platformReferrer;
    bytes32 coinSalt;
}

struct ZoraFactory$CoinAddressFunctionOutputs {
    address outArg0;
}

struct ZoraFactory$CoinImplFunctionOutputs {
    address outArg0;
}

struct ZoraFactory$CoinV4ImplFunctionOutputs {
    address outArg0;
}

struct ZoraFactory$ContentCoinHookFunctionOutputs {
    address outArg0;
}

struct ZoraFactory$ContractNameFunctionOutputs {
    string outArg0;
}

struct ZoraFactory$ContractVersionFunctionOutputs {
    string outArg0;
}

struct ZoraFactory$CreatorCoinHookFunctionOutputs {
    address outArg0;
}

struct ZoraFactory$CreatorCoinImplFunctionOutputs {
    address outArg0;
}

struct ZoraFactory$Deploy0x3C7BCA94FunctionInputs {
    address payoutRecipient;
    address[] owners;
    string uri;
    string name;
    string symbol;
    address platformReferrer;
    address currency;
    int24 outArg7;
    uint256 orderSize;
}

struct ZoraFactory$Deploy0x3C7BCA94FunctionOutputs {
    address outArg0;
    uint256 outArg1;
}

struct ZoraFactory$Deploy0xA423ADA1FunctionInputs {
    address payoutRecipient;
    address[] owners;
    string uri;
    string name;
    string symbol;
    bytes poolConfig;
    address platformReferrer;
    address postDeployHook;
    bytes postDeployHookData;
    bytes32 coinSalt;
}

struct ZoraFactory$Deploy0xA423ADA1FunctionOutputs {
    address coin;
    bytes postDeployHookDataOut;
}

struct ZoraFactory$Deploy0xC7CE4E16FunctionInputs {
    address payoutRecipient;
    address[] owners;
    string uri;
    string name;
    string symbol;
    bytes poolConfig;
    address platformReferrer;
    uint256 orderSize;
}

struct ZoraFactory$Deploy0xC7CE4E16FunctionOutputs {
    address outArg0;
    uint256 outArg1;
}

struct ZoraFactory$DeployCreatorCoinFunctionInputs {
    address payoutRecipient;
    address[] owners;
    string uri;
    string name;
    string symbol;
    bytes poolConfig;
    address platformReferrer;
    bytes32 coinSalt;
}

struct ZoraFactory$DeployCreatorCoinFunctionOutputs {
    address outArg0;
}

struct ZoraFactory$DeployWithHookFunctionInputs {
    address payoutRecipient;
    address[] owners;
    string uri;
    string name;
    string symbol;
    bytes poolConfig;
    address platformReferrer;
    address hook;
    bytes hookData;
}

struct ZoraFactory$DeployWithHookFunctionOutputs {
    address coin;
    bytes hookDataOut;
}

struct ZoraFactory$GetVersionForDeployedCoinFunctionInputs {
    address coin;
}

struct ZoraFactory$GetVersionForDeployedCoinFunctionOutputs {
    uint8 outArg0;
}

struct ZoraFactory$ImplementationFunctionOutputs {
    address outArg0;
}

struct ZoraFactory$InitializeFunctionInputs {
    address initialOwner;
}

struct ZoraFactory$OwnerFunctionOutputs {
    address outArg0;
}

struct ZoraFactory$ProxiableUuidFunctionOutputs {
    bytes32 outArg0;
}

struct ZoraFactory$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct ZoraFactory$UpgradeToAndCallFunctionInputs {
    address newImplementation;
    bytes data;
}

struct ZoraFactory$CoinCreatedEventParams {
    address caller;
    address payoutRecipient;
    address platformReferrer;
    address currency;
    string uri;
    string name;
    string symbol;
    address coin;
    address pool;
    string version;
}

struct ZoraFactory$PoolKey {
    address currency0;
    address currency1;
    uint24 fee;
    int24 tickSpacing;
    address hooks;
}

struct ZoraFactory$CoinCreatedV4EventParams {
    address caller;
    address payoutRecipient;
    address platformReferrer;
    address currency;
    string uri;
    string name;
    string symbol;
    address coin;
    ZoraFactory$PoolKey poolKey;
    bytes32 poolKeyHash;
    string version;
}

struct ZoraFactory$CreatorCoinCreatedEventParams {
    address caller;
    address payoutRecipient;
    address platformReferrer;
    address currency;
    string uri;
    string name;
    string symbol;
    address coin;
    ZoraFactory$PoolKey poolKey;
    bytes32 poolKeyHash;
    string version;
}

struct ZoraFactory$InitializedEventParams {
    uint64 version;
}

struct ZoraFactory$OwnershipTransferredEventParams {
    address previousOwner;
    address newOwner;
}

struct ZoraFactory$UpgradedEventParams {
    address implementation;
}

abstract contract ZoraFactory$OnCoinCreatedEvent {
    function onCoinCreatedEvent(EventContext memory ctx, ZoraFactory$CoinCreatedEventParams memory inputs) virtual external;

    function triggerOnCoinCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes32(0x3d1462491f7fa8396808c230d95c3fa60fd09ef59506d0b9bd1cf072d2a03f56),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCoinCreatedEvent.selector
        });
    }
}

abstract contract ZoraFactory$OnCoinCreatedV4Event {
    function onCoinCreatedV4Event(EventContext memory ctx, ZoraFactory$CoinCreatedV4EventParams memory inputs) virtual external;

    function triggerOnCoinCreatedV4Event() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes32(0x2de436107c2096e039c98bbcc3c5a2560583738ce15c234557eecb4d3221aa81),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCoinCreatedV4Event.selector
        });
    }
}

abstract contract ZoraFactory$OnCreatorCoinCreatedEvent {
    function onCreatorCoinCreatedEvent(EventContext memory ctx, ZoraFactory$CreatorCoinCreatedEventParams memory inputs) virtual external;

    function triggerOnCreatorCoinCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes32(0x74b670d628e152daa36ca95dda7cb0002d6ea7a37b55afe4593db7abd1515781),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatorCoinCreatedEvent.selector
        });
    }
}

abstract contract ZoraFactory$OnInitializedEvent {
    function onInitializedEvent(EventContext memory ctx, ZoraFactory$InitializedEventParams memory inputs) virtual external;

    function triggerOnInitializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes32(0xc7f505b2f371ae2175ee4913f4499e1f2633a7b5936321eed1cdaeb6115181d2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializedEvent.selector
        });
    }
}

abstract contract ZoraFactory$OnOwnershipTransferredEvent {
    function onOwnershipTransferredEvent(EventContext memory ctx, ZoraFactory$OwnershipTransferredEventParams memory inputs) virtual external;

    function triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract ZoraFactory$OnUpgradedEvent {
    function onUpgradedEvent(EventContext memory ctx, ZoraFactory$UpgradedEventParams memory inputs) virtual external;

    function triggerOnUpgradedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes32(0xbc7cd75a20ee27fd9adebab32041f755214dbc6bffa90cc0225b39da2e5c2d3b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpgradedEvent.selector
        });
    }
}

abstract contract ZoraFactory$OnUpgradeInterfaceVersionFunction {
    function onUpgradeInterfaceVersionFunction(FunctionContext memory ctx, ZoraFactory$UpgradeInterfaceVersionFunctionOutputs memory outputs) virtual external;

    function triggerOnUpgradeInterfaceVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xad3cb1cc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpgradeInterfaceVersionFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreUpgradeInterfaceVersionFunction {
    function preUpgradeInterfaceVersionFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUpgradeInterfaceVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xad3cb1cc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpgradeInterfaceVersionFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnCoinAddressFunction {
    function onCoinAddressFunction(FunctionContext memory ctx, ZoraFactory$CoinAddressFunctionInputs memory inputs, ZoraFactory$CoinAddressFunctionOutputs memory outputs) virtual external;

    function triggerOnCoinAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x1f63f65f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCoinAddressFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreCoinAddressFunction {
    function preCoinAddressFunction(PreFunctionContext memory ctx, ZoraFactory$CoinAddressFunctionInputs memory inputs) virtual external;

    function triggerPreCoinAddressFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x1f63f65f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCoinAddressFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnCoinImplFunction {
    function onCoinImplFunction(FunctionContext memory ctx, ZoraFactory$CoinImplFunctionOutputs memory outputs) virtual external;

    function triggerOnCoinImplFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x109cbac5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCoinImplFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreCoinImplFunction {
    function preCoinImplFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCoinImplFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x109cbac5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCoinImplFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnCoinV4ImplFunction {
    function onCoinV4ImplFunction(FunctionContext memory ctx, ZoraFactory$CoinV4ImplFunctionOutputs memory outputs) virtual external;

    function triggerOnCoinV4ImplFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xc954661b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCoinV4ImplFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreCoinV4ImplFunction {
    function preCoinV4ImplFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCoinV4ImplFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xc954661b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCoinV4ImplFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnContentCoinHookFunction {
    function onContentCoinHookFunction(FunctionContext memory ctx, ZoraFactory$ContentCoinHookFunctionOutputs memory outputs) virtual external;

    function triggerOnContentCoinHookFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x144f93dc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onContentCoinHookFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreContentCoinHookFunction {
    function preContentCoinHookFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreContentCoinHookFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x144f93dc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preContentCoinHookFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnContractNameFunction {
    function onContractNameFunction(FunctionContext memory ctx, ZoraFactory$ContractNameFunctionOutputs memory outputs) virtual external;

    function triggerOnContractNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x75d0c0dc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onContractNameFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreContractNameFunction {
    function preContractNameFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreContractNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x75d0c0dc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preContractNameFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnContractVersionFunction {
    function onContractVersionFunction(FunctionContext memory ctx, ZoraFactory$ContractVersionFunctionOutputs memory outputs) virtual external;

    function triggerOnContractVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xa0a8e460),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onContractVersionFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreContractVersionFunction {
    function preContractVersionFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreContractVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xa0a8e460),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preContractVersionFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnCreatorCoinHookFunction {
    function onCreatorCoinHookFunction(FunctionContext memory ctx, ZoraFactory$CreatorCoinHookFunctionOutputs memory outputs) virtual external;

    function triggerOnCreatorCoinHookFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x12902a4d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatorCoinHookFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreCreatorCoinHookFunction {
    function preCreatorCoinHookFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCreatorCoinHookFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x12902a4d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreatorCoinHookFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnCreatorCoinImplFunction {
    function onCreatorCoinImplFunction(FunctionContext memory ctx, ZoraFactory$CreatorCoinImplFunctionOutputs memory outputs) virtual external;

    function triggerOnCreatorCoinImplFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x20a20a4a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatorCoinImplFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreCreatorCoinImplFunction {
    function preCreatorCoinImplFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCreatorCoinImplFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x20a20a4a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreatorCoinImplFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnDeploy0x3C7BCA94Function {
    function onDeploy0x3C7BCA94Function(FunctionContext memory ctx, ZoraFactory$Deploy0x3C7BCA94FunctionInputs memory inputs, ZoraFactory$Deploy0x3C7BCA94FunctionOutputs memory outputs) virtual external;

    function triggerOnDeploy0x3C7BCA94Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x3c7bca94),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDeploy0x3C7BCA94Function.selector
        });
    }
}

abstract contract ZoraFactory$PreDeploy0x3C7BCA94Function {
    function preDeploy0x3C7BCA94Function(PreFunctionContext memory ctx, ZoraFactory$Deploy0x3C7BCA94FunctionInputs memory inputs) virtual external;

    function triggerPreDeploy0x3C7BCA94Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x3c7bca94),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDeploy0x3C7BCA94Function.selector
        });
    }
}

abstract contract ZoraFactory$OnDeploy0xA423ADA1Function {
    function onDeploy0xA423ADA1Function(FunctionContext memory ctx, ZoraFactory$Deploy0xA423ADA1FunctionInputs memory inputs, ZoraFactory$Deploy0xA423ADA1FunctionOutputs memory outputs) virtual external;

    function triggerOnDeploy0xA423ADA1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xa423ada1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDeploy0xA423ADA1Function.selector
        });
    }
}

abstract contract ZoraFactory$PreDeploy0xA423ADA1Function {
    function preDeploy0xA423ADA1Function(PreFunctionContext memory ctx, ZoraFactory$Deploy0xA423ADA1FunctionInputs memory inputs) virtual external;

    function triggerPreDeploy0xA423ADA1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xa423ada1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDeploy0xA423ADA1Function.selector
        });
    }
}

abstract contract ZoraFactory$OnDeploy0xC7CE4E16Function {
    function onDeploy0xC7CE4E16Function(FunctionContext memory ctx, ZoraFactory$Deploy0xC7CE4E16FunctionInputs memory inputs, ZoraFactory$Deploy0xC7CE4E16FunctionOutputs memory outputs) virtual external;

    function triggerOnDeploy0xC7CE4E16Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xc7ce4e16),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDeploy0xC7CE4E16Function.selector
        });
    }
}

abstract contract ZoraFactory$PreDeploy0xC7CE4E16Function {
    function preDeploy0xC7CE4E16Function(PreFunctionContext memory ctx, ZoraFactory$Deploy0xC7CE4E16FunctionInputs memory inputs) virtual external;

    function triggerPreDeploy0xC7CE4E16Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xc7ce4e16),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDeploy0xC7CE4E16Function.selector
        });
    }
}

abstract contract ZoraFactory$OnDeployCreatorCoinFunction {
    function onDeployCreatorCoinFunction(FunctionContext memory ctx, ZoraFactory$DeployCreatorCoinFunctionInputs memory inputs, ZoraFactory$DeployCreatorCoinFunctionOutputs memory outputs) virtual external;

    function triggerOnDeployCreatorCoinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xa27a6dce),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDeployCreatorCoinFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreDeployCreatorCoinFunction {
    function preDeployCreatorCoinFunction(PreFunctionContext memory ctx, ZoraFactory$DeployCreatorCoinFunctionInputs memory inputs) virtual external;

    function triggerPreDeployCreatorCoinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xa27a6dce),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDeployCreatorCoinFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnDeployWithHookFunction {
    function onDeployWithHookFunction(FunctionContext memory ctx, ZoraFactory$DeployWithHookFunctionInputs memory inputs, ZoraFactory$DeployWithHookFunctionOutputs memory outputs) virtual external;

    function triggerOnDeployWithHookFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x0d36fc77),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDeployWithHookFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreDeployWithHookFunction {
    function preDeployWithHookFunction(PreFunctionContext memory ctx, ZoraFactory$DeployWithHookFunctionInputs memory inputs) virtual external;

    function triggerPreDeployWithHookFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x0d36fc77),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDeployWithHookFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnGetVersionForDeployedCoinFunction {
    function onGetVersionForDeployedCoinFunction(FunctionContext memory ctx, ZoraFactory$GetVersionForDeployedCoinFunctionInputs memory inputs, ZoraFactory$GetVersionForDeployedCoinFunctionOutputs memory outputs) virtual external;

    function triggerOnGetVersionForDeployedCoinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x885efbd2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetVersionForDeployedCoinFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreGetVersionForDeployedCoinFunction {
    function preGetVersionForDeployedCoinFunction(PreFunctionContext memory ctx, ZoraFactory$GetVersionForDeployedCoinFunctionInputs memory inputs) virtual external;

    function triggerPreGetVersionForDeployedCoinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x885efbd2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetVersionForDeployedCoinFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnImplementationFunction {
    function onImplementationFunction(FunctionContext memory ctx, ZoraFactory$ImplementationFunctionOutputs memory outputs) virtual external;

    function triggerOnImplementationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x5c60da1b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onImplementationFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreImplementationFunction {
    function preImplementationFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreImplementationFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x5c60da1b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preImplementationFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx, ZoraFactory$InitializeFunctionInputs memory inputs) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xc4d66de8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx, ZoraFactory$InitializeFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xc4d66de8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnOwnerFunction {
    function onOwnerFunction(FunctionContext memory ctx, ZoraFactory$OwnerFunctionOutputs memory outputs) virtual external;

    function triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnerFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreOwnerFunction {
    function preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOwnerFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnProxiableUuidFunction {
    function onProxiableUuidFunction(FunctionContext memory ctx, ZoraFactory$ProxiableUuidFunctionOutputs memory outputs) virtual external;

    function triggerOnProxiableUuidFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x52d1902d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProxiableUuidFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreProxiableUuidFunction {
    function preProxiableUuidFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProxiableUuidFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x52d1902d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProxiableUuidFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnRenounceOwnershipFunction {
    function onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreRenounceOwnershipFunction {
    function preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnTransferOwnershipFunction {
    function onTransferOwnershipFunction(FunctionContext memory ctx, ZoraFactory$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferOwnershipFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreTransferOwnershipFunction {
    function preTransferOwnershipFunction(PreFunctionContext memory ctx, ZoraFactory$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferOwnershipFunction.selector
        });
    }
}

abstract contract ZoraFactory$OnUpgradeToAndCallFunction {
    function onUpgradeToAndCallFunction(FunctionContext memory ctx, ZoraFactory$UpgradeToAndCallFunctionInputs memory inputs) virtual external;

    function triggerOnUpgradeToAndCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x4f1ef286),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpgradeToAndCallFunction.selector
        });
    }
}

abstract contract ZoraFactory$PreUpgradeToAndCallFunction {
    function preUpgradeToAndCallFunction(PreFunctionContext memory ctx, ZoraFactory$UpgradeToAndCallFunctionInputs memory inputs) virtual external;

    function triggerPreUpgradeToAndCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ZoraFactory",
            selector: bytes4(0x4f1ef286),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpgradeToAndCallFunction.selector
        });
    }
}

contract ZoraFactory$EmitAllEvents is
  ZoraFactory$OnCoinCreatedEvent,
ZoraFactory$OnCoinCreatedV4Event,
ZoraFactory$OnCreatorCoinCreatedEvent,
ZoraFactory$OnInitializedEvent,
ZoraFactory$OnOwnershipTransferredEvent,
ZoraFactory$OnUpgradedEvent
{
  event CoinCreated(address caller, address payoutRecipient, address platformReferrer, address currency, string uri, string name, string symbol, address coin, address pool, string version);
event CoinCreatedV4(address caller, address payoutRecipient, address platformReferrer, address currency, string uri, string name, string symbol, address coin, ZoraFactory$PoolKey poolKey, bytes32 poolKeyHash, string version);
event CreatorCoinCreated(address caller, address payoutRecipient, address platformReferrer, address currency, string uri, string name, string symbol, address coin, ZoraFactory$PoolKey poolKey, bytes32 poolKeyHash, string version);
event Initialized(uint64 version);
event OwnershipTransferred(address previousOwner, address newOwner);
event Upgraded(address implementation);

  function onCoinCreatedEvent(EventContext memory ctx, ZoraFactory$CoinCreatedEventParams memory inputs) virtual external override {
    emit CoinCreated(inputs.caller, inputs.payoutRecipient, inputs.platformReferrer, inputs.currency, inputs.uri, inputs.name, inputs.symbol, inputs.coin, inputs.pool, inputs.version);
  }
function onCoinCreatedV4Event(EventContext memory ctx, ZoraFactory$CoinCreatedV4EventParams memory inputs) virtual external override {
    emit CoinCreatedV4(inputs.caller, inputs.payoutRecipient, inputs.platformReferrer, inputs.currency, inputs.uri, inputs.name, inputs.symbol, inputs.coin, inputs.poolKey, inputs.poolKeyHash, inputs.version);
  }
function onCreatorCoinCreatedEvent(EventContext memory ctx, ZoraFactory$CreatorCoinCreatedEventParams memory inputs) virtual external override {
    emit CreatorCoinCreated(inputs.caller, inputs.payoutRecipient, inputs.platformReferrer, inputs.currency, inputs.uri, inputs.name, inputs.symbol, inputs.coin, inputs.poolKey, inputs.poolKeyHash, inputs.version);
  }
function onInitializedEvent(EventContext memory ctx, ZoraFactory$InitializedEventParams memory inputs) virtual external override {
    emit Initialized(inputs.version);
  }
function onOwnershipTransferredEvent(EventContext memory ctx, ZoraFactory$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(inputs.previousOwner, inputs.newOwner);
  }
function onUpgradedEvent(EventContext memory ctx, ZoraFactory$UpgradedEventParams memory inputs) virtual external override {
    emit Upgraded(inputs.implementation);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](6);
    triggers[0] = this.triggerOnCoinCreatedEvent();
    triggers[1] = this.triggerOnCoinCreatedV4Event();
    triggers[2] = this.triggerOnCreatorCoinCreatedEvent();
    triggers[3] = this.triggerOnInitializedEvent();
    triggers[4] = this.triggerOnOwnershipTransferredEvent();
    triggers[5] = this.triggerOnUpgradedEvent();
    return triggers;
  }
}