// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;
interface IMidasEmissions {
    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);

    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt;
        uint256 shrapRewardDebt;
    }

    struct PoolInfo {
        IERC20 lpToken;
        uint256 allocPoint;
        uint256 accMidasPerShare;
        uint256 midasRewarded;
        uint256 shrapPoolId;
        bool shrapPoolEnabled;
        uint256 accShrapPerShare;
        IMidasShrapDummyToken shrapDummyToken;
    }
}
