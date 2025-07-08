// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../Dsl.sol";
import "../Context.sol";

struct ZoraFactory$function_UPGRADE_INTERFACE_VERSIONOutputs {
    string outArg0;
}

struct ZoraFactory$function_coinAddressInputs {
    address msgSender;
    string name;
    string symbol;
    bytes poolConfig;
    address platformReferrer;
    bytes32 coinSalt;
}

struct ZoraFactory$function_coinAddressOutputs {
    address outArg0;
}

struct ZoraFactory$function_coinImplOutputs {
    address outArg0;
}

struct ZoraFactory$function_coinV4ImplOutputs {
    address outArg0;
}

struct ZoraFactory$function_contentCoinHookOutputs {
    address outArg0;
}

struct ZoraFactory$function_contractNameOutputs {
    string outArg0;
}

struct ZoraFactory$function_contractVersionOutputs {
    string outArg0;
}

struct ZoraFactory$function_creatorCoinHookOutputs {
    address outArg0;
}

struct ZoraFactory$function_creatorCoinImplOutputs {
    address outArg0;
}

struct ZoraFactory$function_deployInputs {
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

struct ZoraFactory$function_deployOutputs {
    address outArg0;
    uint256 outArg1;
}

struct ZoraFactory$function_deployCreatorCoinInputs {
    address payoutRecipient;
    address[] owners;
    string uri;
    string name;
    string symbol;
    bytes poolConfig;
    address platformReferrer;
    bytes32 coinSalt;
}

struct ZoraFactory$function_deployCreatorCoinOutputs {
    address outArg0;
}

struct ZoraFactory$function_deployWithHookInputs {
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

struct ZoraFactory$function_deployWithHookOutputs {
    address coin;
    bytes hookDataOut;
}

struct ZoraFactory$function_getVersionForDeployedCoinInputs {
    address coin;
}

struct ZoraFactory$function_getVersionForDeployedCoinOutputs {
    uint8 outArg0;
}

struct ZoraFactory$function_implementationOutputs {
    address outArg0;
}

struct ZoraFactory$function_initializeInputs {
    address initialOwner;
}

struct ZoraFactory$function_ownerOutputs {
    address outArg0;
}

struct ZoraFactory$function_proxiableUUIDOutputs {
    bytes32 outArg0;
}

struct ZoraFactory$function_transferOwnershipInputs {
    address newOwner;
}

struct ZoraFactory$function_upgradeToAndCallInputs {
    address newImplementation;
    bytes data;
}

struct ZoraFactory$event_CoinCreatedInputs {
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

struct ZoraFactory$event_CoinCreatedV4Inputs {
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

struct ZoraFactory$event_CreatorCoinCreatedInputs {
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

struct ZoraFactory$event_InitializedInputs {
    uint64 version;
}

struct ZoraFactory$event_OwnershipTransferredInputs {
    address previousOwner;
    address newOwner;
}

struct ZoraFactory$event_UpgradedInputs {
    address implementation;
}

interface ZoraFactory$event_OnPostCoinCreated {
    function onPostCoinCreated(EventContext memory ctx, ZoraFactory$event_CoinCreatedInputs memory inputs) external;
}

interface ZoraFactory$event_OnPostCoinCreatedV4 {
    function onPostCoinCreatedV4(EventContext memory ctx, ZoraFactory$event_CoinCreatedV4Inputs memory inputs) external;
}

interface ZoraFactory$event_OnPostCreatorCoinCreated {
    function onPostCreatorCoinCreated(EventContext memory ctx, ZoraFactory$event_CreatorCoinCreatedInputs memory inputs) external;
}

interface ZoraFactory$event_OnPostInitialized {
    function onPostInitialized(EventContext memory ctx, ZoraFactory$event_InitializedInputs memory inputs) external;
}

interface ZoraFactory$event_OnPostOwnershipTransferred {
    function onPostOwnershipTransferred(EventContext memory ctx, ZoraFactory$event_OwnershipTransferredInputs memory inputs) external;
}

interface ZoraFactory$event_OnPostUpgraded {
    function onPostUpgraded(EventContext memory ctx, ZoraFactory$event_UpgradedInputs memory inputs) external;
}

interface ZoraFactory$function_OnPostUpgradeInterfaceVersion {
    function onPostUpgradeInterfaceVersion(FunctionContext memory ctx, ZoraFactory$function_UPGRADE_INTERFACE_VERSIONOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostCoinAddress {
    function onPostCoinAddress(FunctionContext memory ctx, ZoraFactory$function_coinAddressInputs memory inputs, ZoraFactory$function_coinAddressOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostCoinImpl {
    function onPostCoinImpl(FunctionContext memory ctx, ZoraFactory$function_coinImplOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostCoinV4Impl {
    function onPostCoinV4Impl(FunctionContext memory ctx, ZoraFactory$function_coinV4ImplOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostContentCoinHook {
    function onPostContentCoinHook(FunctionContext memory ctx, ZoraFactory$function_contentCoinHookOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostContractName {
    function onPostContractName(FunctionContext memory ctx, ZoraFactory$function_contractNameOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostContractVersion {
    function onPostContractVersion(FunctionContext memory ctx, ZoraFactory$function_contractVersionOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostCreatorCoinHook {
    function onPostCreatorCoinHook(FunctionContext memory ctx, ZoraFactory$function_creatorCoinHookOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostCreatorCoinImpl {
    function onPostCreatorCoinImpl(FunctionContext memory ctx, ZoraFactory$function_creatorCoinImplOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostDeploy {
    function onPostDeploy(FunctionContext memory ctx, ZoraFactory$function_deployInputs memory inputs, ZoraFactory$function_deployOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostDeployCreatorCoin {
    function onPostDeployCreatorCoin(FunctionContext memory ctx, ZoraFactory$function_deployCreatorCoinInputs memory inputs, ZoraFactory$function_deployCreatorCoinOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostDeployWithHook {
    function onPostDeployWithHook(FunctionContext memory ctx, ZoraFactory$function_deployWithHookInputs memory inputs, ZoraFactory$function_deployWithHookOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostGetVersionForDeployedCoin {
    function onPostGetVersionForDeployedCoin(FunctionContext memory ctx, ZoraFactory$function_getVersionForDeployedCoinInputs memory inputs, ZoraFactory$function_getVersionForDeployedCoinOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostImplementation {
    function onPostImplementation(FunctionContext memory ctx, ZoraFactory$function_implementationOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostInitialize {
    function onPostInitialize(FunctionContext memory ctx, ZoraFactory$function_initializeInputs memory inputs) external;
}

interface ZoraFactory$function_OnPostOwner {
    function onPostOwner(FunctionContext memory ctx, ZoraFactory$function_ownerOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostProxiableUuid {
    function onPostProxiableUuid(FunctionContext memory ctx, ZoraFactory$function_proxiableUUIDOutputs memory outputs) external;
}

interface ZoraFactory$function_OnPostRenounceOwnership {
    function onPostRenounceOwnership(FunctionContext memory ctx) external;
}

interface ZoraFactory$function_OnPostTransferOwnership {
    function onPostTransferOwnership(FunctionContext memory ctx, ZoraFactory$function_transferOwnershipInputs memory inputs) external;
}

interface ZoraFactory$function_OnPostUpgradeToAndCall {
    function onPostUpgradeToAndCall(FunctionContext memory ctx, ZoraFactory$function_upgradeToAndCallInputs memory inputs) external;
}
function ZoraFactory$Abi() pure returns (Abi memory) {
    return Abi("ZoraFactory");
}

function ZoraFactory$postCoinCreatedEvent() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.EVENT,
        selector: bytes32(0x3d1462491f7fa8396808c230d95c3fa60fd09ef59506d0b9bd1cf072d2a03f56),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postCoinCreatedV4Event() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.EVENT,
        selector: bytes32(0x2de436107c2096e039c98bbcc3c5a2560583738ce15c234557eecb4d3221aa81),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postCreatorCoinCreatedEvent() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.EVENT,
        selector: bytes32(0x74b670d628e152daa36ca95dda7cb0002d6ea7a37b55afe4593db7abd1515781),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postInitializedEvent() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.EVENT,
        selector: bytes32(0xc7f505b2f371ae2175ee4913f4499e1f2633a7b5936321eed1cdaeb6115181d2),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postOwnershipTransferredEvent() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.EVENT,
        selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postUpgradedEvent() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.EVENT,
        selector: bytes32(0xbc7cd75a20ee27fd9adebab32041f755214dbc6bffa90cc0225b39da2e5c2d3b),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postUpgradeInterfaceVersionFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0xad3cb1cc),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postCoinAddressFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x1f63f65f),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postCoinImplFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x109cbac5),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postCoinV4ImplFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0xc954661b),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postContentCoinHookFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x144f93dc),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postContractNameFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x75d0c0dc),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postContractVersionFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0xa0a8e460),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postCreatorCoinHookFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x12902a4d),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postCreatorCoinImplFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x20a20a4a),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postDeployFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x3c7bca94),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postDeployCreatorCoinFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0xa27a6dce),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postDeployWithHookFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x0d36fc77),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postGetVersionForDeployedCoinFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x885efbd2),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postImplementationFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x5c60da1b),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postInitializeFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0xc4d66de8),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postOwnerFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x8da5cb5b),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postProxiableUuidFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x52d1902d),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postRenounceOwnershipFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x715018a6),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postTransferOwnershipFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0xf2fde38b),
        abiName: "ZoraFactory"
    });
}

function ZoraFactory$postUpgradeToAndCallFunction() pure returns (Trigger memory) {
    return Trigger({
        triggerType: TriggerType.FUNCTION,
        selector: bytes4(0x4f1ef286),
        abiName: "ZoraFactory"
    });
}