// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;
interface IMidasToken is IERC20 {
    function mint(address to, uint256 amount) external;
    function getMaxTotalSupply() external pure returns (uint256);
}
