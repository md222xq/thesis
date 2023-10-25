// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

interface IBombingRange {
    function deposit(uint256 _pid, uint256 _amount) external;
    function withdraw(uint256 _pid, uint256 _amount) external;
    function pendingSHRAP(uint256 _pid, address _user) external view returns (uint256);
}
