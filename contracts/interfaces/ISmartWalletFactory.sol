// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISmartWalletFactory {
    struct CreateWalletParams {
        address owner;
        address allowlistOperator;
        address linkToken;
        address clRegistrar;
        address clRegistry;
        address uniswapV3Router;
        address wethToken;
        bytes wethToLinkSwapPath;
    }

    function createWallet(
        address owner,
        address allowlistOperator
    ) external returns (address);

    function create2Wallet(
        address owner,
        address allowlistOperator,
        bytes32 salt
    ) external returns (address);

    function predictCreate2Wallet(bytes32 salt) external view returns (address);

    function validateWallet(address wallet) external view returns (bool);
}
