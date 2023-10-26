// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

contract MidasEmissions is IMidasEmissions, Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    IMidasToken public immutable MIDAS;
    IERC20 public immutable SHRAP;

    IBombingRange public bombingRange;

    address public constant burnAddress = 0x000000000000000000000000000000000000dEaD;

    address public midasEmissionsReceiver = 0xBa8a8f39b2315d4BC725C026CE3898c2C7e74f57;
    address public xMidasAddress = address(0);

    uint256 public midasPerSecond = 19539854450000000;
    uint256 public midasForFarm = 500;
    uint256 public midasForXMidas = 0;

    uint256 public immutable startTime;
    uint256 public lastMint;

    uint256 public currentFarmRewards;
    uint256 public accFarmRewards;

    uint256 public constant maxMidasPerSecond = 1e18;
    uint256 public constant maxAllocPoint = 100000;

    PoolInfo[] public poolInfo;
    mapping (uint256 => mapping (address => UserInfo)) public userInfo;
    uint256 public totalAllocPoint;

    constructor(
        uint256 _startTime,
        address midasAddress,
        address shrapAddress,
        address bombingRangeAddress
    ) {
        require(Address.isContract(midasAddress), "Midas is not a contract");
        require(Address.isContract(shrapAddress), "Shrapnel is not a contract");
        require(Address.isContract(bombingRangeAddress), "BombingRange is not a contract");

        startTime = _startTime;
        lastMint = _startTime;

        MIDAS = IMidasToken(midasAddress);
        SHRAP = IERC20(shrapAddress);
        bombingRange = IBombingRange(bombingRangeAddress);
    }

    function deposit(uint256 pid, uint256 amount) external {
        PoolInfo storage pool = poolInfo[pid];
        UserInfo storage user = userInfo[pid][msg.sender];

        updatePool(pid);

        uint256 pending = user.amount.mul(pool.accMidasPerShare).div(1e12).sub(user.rewardDebt);
        uint256 pendingShrap = user.amount.mul(pool.accShrapPerShare).div(1e12).sub(user.shrapRewardDebt);

        user.amount = user.amount.add(amount);

        user.rewardDebt = user.amount.mul(pool.accMidasPerShare).div(1e12);
        user.shrapRewardDebt = user.amount.mul(pool.accShrapPerShare).div(1e12);

        if (pending > 0) {
            _safeMidasTransfer(msg.sender, pending);
        }

        if (pendingShrap > 0) {
            _safeShrapTransfer(msg.sender, pendingShrap);
        }

        pool.lpToken.safeTransferFrom(address(msg.sender), address(this), amount);

        emit Deposit(msg.sender, pid, amount);
    }

    function withdraw(uint256 pid, uint256 amount) external {
        PoolInfo storage pool = poolInfo[pid];
        UserInfo storage user = userInfo[pid][msg.sender];

        require(user.amount >= amount, "Withdrawing too much");

        updatePool(pid);

        uint256 pending = user.amount.mul(pool.accMidasPerShare).div(1e12).sub(user.rewardDebt);
        uint256 pendingShrap = user.amount.mul(pool.accShrapPerShare).div(1e12).sub(user.shrapRewardDebt);

        user.amount = user.amount.sub(amount);

        user.rewardDebt = user.amount.mul(pool.accMidasPerShare).div(1e12);
        user.shrapRewardDebt = user.shrapRewardDebt.mul(pool.accShrapPerShare).div(1e12);

        if (pending > 0) {
            _safeMidasTransfer(msg.sender, pending);
        }

        if (pendingShrap > 0) {
            _safeShrapTransfer(msg.sender, pendingShrap);
        }

        pool.lpToken.safeTransfer(msg.sender, amount);

        emit Withdraw(msg.sender, pid, amount);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) external {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];

        uint oldUserAmount = user.amount;
        user.amount = 0;
        user.rewardDebt = 0;

        pool.lpToken.safeTransfer(address(msg.sender), oldUserAmount);

        emit EmergencyWithdraw(msg.sender, _pid, oldUserAmount);
    }

    function updatePool(uint256 pid) public {
        updateMint();
        _updatePool(pid, false);
    }

    function massUpdatePools() public {
        updateMint();
        uint256 len = poolInfo.length;
        for (uint256 pid = 0; pid < len; pid = pid.add(1)) {
            _updatePool(pid, true);
        }
        accFarmRewards = 0;
    }

    function updateMint() public {
        if (block.timestamp <= lastMint) return;

        uint256 midasTotal = MIDAS.totalSupply();
        uint256 midasMax = MIDAS.getMaxTotalSupply();

        uint256 amount = _getMultiplier(lastMint, block.timestamp).mul(midasPerSecond);
        amount = amount.add(midasTotal) > midasMax ? midasMax.sub(midasTotal) : amount;
        if (amount == 0) {
            lastMint = block.timestamp;
            return;
        }

        uint256 forFarm = amount.mul(midasForFarm).div(10000, "Invalid MIDAS for Farm");
        uint256 forXMidas = 0;

        MIDAS.mint(address(this), forFarm);
        currentFarmRewards = currentFarmRewards.add(forFarm);
        accFarmRewards = accFarmRewards.add(forFarm);

        if (xMidasAddress != address(0)) {
            forXMidas = amount.mul(midasForXMidas).div(10000, "Invalid MIDAS for XMIDAS");

            MIDAS.mint(xMidasAddress, forXMidas);
        }

        MIDAS.mint(midasEmissionsReceiver, amount.sub(forFarm).sub(forXMidas));

        lastMint = block.timestamp;
    }

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    function pendingRewards(uint256 pid, address _user) external view returns (uint256 pendingMidas, uint256 pendingShrap) {
        PoolInfo storage pool = poolInfo[pid];
        UserInfo storage user = userInfo[pid][_user];
        uint256 accMidasPerShare = pool.accMidasPerShare;
        uint256 accShrapPerShare = pool.accShrapPerShare;
        uint256 lpSupply = _getLPSupply(pool.lpToken);

        if (block.timestamp > lastMint && lpSupply != 0) {
            uint256 midasTotal = MIDAS.totalSupply();
            uint256 midasMax = MIDAS.getMaxTotalSupply();

            uint256 amount = _getMultiplier(lastMint, block.timestamp).mul(midasPerSecond);
            amount = amount.add(midasTotal) > midasMax ? midasMax.sub(midasTotal) : amount;

            uint256 forFarm = amount.mul(midasForFarm).div(10000, "Invalid MIDAS for Farm");

            uint256 _accFarmRewards = accFarmRewards.add(forFarm);

            uint256 midasReward = _accFarmRewards.mul(pool.allocPoint).div(totalAllocPoint).sub(pool.midasRewarded);
            accMidasPerShare = accMidasPerShare.add(midasReward.mul(1e12).div(lpSupply));
        }

        uint256 shrapRewards = 0;
        if (pool.shrapPoolEnabled) {
            // pendingSHRAP function is inaccurate
            uint256 pendingShrapRewards = bombingRange.pendingSHRAP(pool.shrapPoolId, address(this));
            uint256 toDev = pendingShrapRewards.div(10);
            shrapRewards = pendingShrapRewards.sub(toDev);
        }
        accShrapPerShare = accShrapPerShare.add(shrapRewards.mul(1e12).div(lpSupply));

        pendingMidas = user.amount.mul(accMidasPerShare).div(1e12).sub(user.rewardDebt);
        pendingShrap = user.amount.mul(accShrapPerShare).div(1e12).sub(user.shrapRewardDebt);
    }

    function addPool(uint256 allocPoint, IERC20 lpToken) external onlyOwner {
        require(allocPoint <= maxAllocPoint, "Too many alloc points");

        _checkForDuplicate(lpToken);

        massUpdatePools();

        totalAllocPoint = totalAllocPoint.add(allocPoint);

        poolInfo.push(PoolInfo({
            lpToken: lpToken,
            allocPoint: allocPoint,
            accMidasPerShare: 0,
            midasRewarded: 0,
            shrapPoolId: 0,
            shrapPoolEnabled: false,
            accShrapPerShare: 0,
            shrapDummyToken: new MidasShrapDummyToken()
        }));
    }

    function setPoolAllocPoint(uint256 pid, uint256 allocPoint) external onlyOwner {
        require(allocPoint <= maxAllocPoint, "Too many alloc points");

        massUpdatePools();

        totalAllocPoint = totalAllocPoint.sub(poolInfo[pid].allocPoint).add(allocPoint);
        poolInfo[pid].allocPoint = allocPoint;
    }

    function setMidasPerSecond(uint256 _midasPerSecond) external onlyOwner {
        require(_midasPerSecond < maxMidasPerSecond, "Too many MIDAS per second");

        massUpdatePools();
        midasPerSecond = _midasPerSecond;
    }

    function setMidasForFarm(uint256 _midasForFarm) external onlyOwner {
        massUpdatePools();
        midasForFarm = _midasForFarm;
    }

    function setMidasForXMidas(uint256 _midasForXMidas) external onlyOwner {
        updateMint();
        midasForXMidas = _midasForXMidas;
    }

    function setMidasEmissionsReceiver(address _midasEmissionsReceiver) external onlyOwner {
        midasEmissionsReceiver = _midasEmissionsReceiver;
    }

    function setShrapPoolIdMap(uint256 pid, uint256 shrapPid) external onlyOwner {
        PoolInfo storage pool = poolInfo[pid];
        pool.shrapPoolId = shrapPid;
        pool.shrapPoolEnabled = true;

        IMidasShrapDummyToken dummyToken = pool.shrapDummyToken;
        dummyToken.mint();
        dummyToken.approve(address(bombingRange), 1e18);
        bombingRange.deposit(shrapPid, 1e18);
    }

    function disableShrapPool(uint256 pid) external onlyOwner {
        poolInfo[pid].shrapPoolEnabled = false;
    }

    function _updatePool(uint256 pid, bool resetRewarded) internal {
        PoolInfo storage pool = poolInfo[pid];

        uint256 shrapRewards = 0;
        if (pool.shrapPoolEnabled) {
            // pendingSHRAP function is inaccurate, using this to get the exact amount of SHRAP recieved on harvesting
            uint256 currentShrap = SHRAP.balanceOf(address(this));
            bombingRange.deposit(pool.shrapPoolId, 0);
            shrapRewards = SHRAP.balanceOf(address(this)).sub(currentShrap);
        }

        uint256 lpSupply = _getLPSupply(pool.lpToken);
        if (lpSupply == 0) {
            SHRAP.transfer(burnAddress, shrapRewards);
            pool.midasRewarded = resetRewarded ? 0 : accFarmRewards.mul(pool.allocPoint).div(totalAllocPoint);
            return;
        }

        uint256 reward = accFarmRewards.mul(pool.allocPoint).div(totalAllocPoint).sub(pool.midasRewarded);

        pool.accMidasPerShare = pool.accMidasPerShare.add(reward.mul(1e12).div(lpSupply));
        pool.accShrapPerShare = pool.accShrapPerShare.add(shrapRewards.mul(1e12).div(lpSupply));
        pool.midasRewarded = resetRewarded ? 0 : pool.midasRewarded.add(reward);
    }

    function _safeMidasTransfer(address to, uint256 amount) internal {
        uint256 midasBal = currentFarmRewards;
        amount = amount > midasBal ? midasBal : amount;

        MIDAS.transfer(to, amount);
        currentFarmRewards = currentFarmRewards.sub(amount);
    }

    function _safeShrapTransfer(address to, uint256 amount) internal {
        uint256 shrapBal = SHRAP.balanceOf(address(this));
        amount = amount > shrapBal ? shrapBal : amount;

        SHRAP.transfer(to, amount);
    }

    function _getLPSupply(IERC20 lpToken) internal view returns (uint256) {
        if (lpToken == MIDAS) {
            return MIDAS.balanceOf(address(this)).sub(currentFarmRewards);
        }
        return lpToken.balanceOf(address(this));
    }

    function _getMultiplier(uint256 from, uint256 to) internal view returns (uint256) {
        from = from > startTime ? from : startTime;
        if (to < startTime) {
            return 0;
        }
        return to.sub(from, "Time error");
    }

    function _checkForDuplicate(IERC20 lpToken) internal view {
        uint256 len = poolInfo.length;
        for (uint256 pid = 0; pid < len; pid = pid.add(1)) {
            require(poolInfo[pid].lpToken != lpToken, "Pool already exists");
        }
    }
}
