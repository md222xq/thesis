// Decompiled by library.dedaub.com
// 2023.11.08 21:37 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _currentBetLimit; // STORAGE[0x1]
uint256 _currentDifficulty; // STORAGE[0x2]
mapping (uint256 => uint256) owner_5; // STORAGE[0x5]
mapping (uint256 => uint256) _hasPlayerWagered; // STORAGE[0x6]
uint256 stor_8; // STORAGE[0x8]
uint256 stor_0_0_19; // STORAGE[0x0] bytes 0 to 19
uint256 _wager; // STORAGE[0x7] bytes 0 to 0
uint256 _openToThePublic; // STORAGE[0x4] bytes 0 to 19


// Events
DifficultyChanged(uint256);
Wager(uint256, address);
BetLimitChanged(uint256);
Win(uint256, address);
Lose(uint256, address);
Donate(uint256, address, address);

function ethBalance() public nonPayable { 
    return (address(this)).balance;
}

function currentDifficulty() public nonPayable { 
    return _currentDifficulty;
}

function wager() public payable { 
    require(_wager);
    require(bool(address(msg.sender) == address(tx.origin)));
    require(bool(msg.value == _currentBetLimit));
    owner_5[msg.sender] = block.number;
    _hasPlayerWagered[msg.sender] = msg.value;
    emit Wager(msg.value, msg.sender);
}

function winnersPot() public nonPayable { 
    assert(bool(2));
    return (address(this)).balance >> 1;
}

function play() public nonPayable { 
    require(_wager);
    require(bool(address(msg.sender) == address(tx.origin)));
    require(bool(_hasPlayerWagered[address(address(msg.sender))] > 0));
    require(owner_5[msg.sender] < block.number);
    owner_5[msg.sender] = 0;
    _hasPlayerWagered[msg.sender] = 0;
    MEM[32 + MEM[64]] = uint256(block.blockhash(owner_5[msg.sender]));
    MEM[64 + MEM[64]] = msg.sender << 96;
    v0 = v1 = v1.data;
    v2 = v3 = 32 + MEM[64];
    while (!bool(v4 < 32)) {
        MEM[v0] = MEM[v2];
        v0 = v0 + 32;
        v2 = v2 + 32;
        v4 = v4 - 32;
    }
    MEM[v0] = MEM[v2] & ~(256 ** (32 - v4) - 1) | MEM[v0] & 256 ** (32 - v4) - 1;
    assert(bool(_currentDifficulty));
    assert(bool(2));
    if (keccak256(MEM[(v1.data) len 52]) % _currentDifficulty + 1 != _currentDifficulty >> 1) {
        assert(bool(2));
        v5 = stor_0_0_19.donate().value(_currentBetLimit >> 1).gas(msg.gas);
        stor_8 = stor_8 + (_currentBetLimit >> 1);
        emit Lose(_currentBetLimit >> 1, msg.sender);
    } else {
        assert(bool(2));
        v6 = msg.sender.call().value((address(this)).balance >> 1).gas(!((address(this)).balance >> 1) * 2300);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        emit Win((address(this)).balance >> 1, msg.sender);
    }
}

function currentBetLimit() public nonPayable { 
    return _currentBetLimit;
}

function AdjustBetAmounts(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _openToThePublic));
    _currentBetLimit = varg0;
    emit BetLimitChanged(_currentBetLimit);
}

function transferAnyERC20Token(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(bool(address(msg.sender) == _openToThePublic));
    require(bool((address(address(varg0))).code.size));
    v0, /* bool */ v1 = varg0.transfer(varg1, varg2).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    return bool(v1);
}

function hasPlayerWagered(address varg0) public nonPayable { 
    if (_hasPlayerWagered[varg0] <= 0) {
        v0 = v1 = 0;
    } else {
        v0 = v2 = 1;
    }
    return bool(v0);
}

function donate() public payable { 
    require(_wager);
    v0 = stor_0_0_19.donate().value(msg.value).gas(msg.gas);
    stor_8 = stor_8 + msg.value;
    emit Donate(msg.value, stor_0_0_19, msg.sender);
}

function () public payable { 
}

function AdjustDifficulty(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _openToThePublic));
    _currentDifficulty = varg0;
    emit DifficultyChanged(_currentDifficulty);
}

function OpenToThePublic() public nonPayable { 
    require(bool(address(msg.sender) == _openToThePublic));
    _wager = 1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x38503f55 == uint32(function_selector >> 224)) {
            AdjustDifficulty(uint256);
        } else if (0x4a376c97 == uint32(function_selector >> 224)) {
            OpenToThePublic();
        } else if (0x4e6630b0 == uint32(function_selector >> 224)) {
            ethBalance();
        } else if (0x5c062d6c == uint32(function_selector >> 224)) {
            currentDifficulty();
        } else if (0x667d5d22 == uint32(function_selector >> 224)) {
            wager();
        } else if (0x755a11dc == uint32(function_selector >> 224)) {
            winnersPot();
        } else if (0x93e84cd9 == uint32(function_selector >> 224)) {
            play();
        } else if (0xc9e3af7e == uint32(function_selector >> 224)) {
            currentBetLimit();
        } else if (0xd191b336 == uint32(function_selector >> 224)) {
            AdjustBetAmounts(uint256);
        } else if (0xd493b9ac == uint32(function_selector >> 224)) {
            transferAnyERC20Token(address,address,uint256);
        } else if (0xeb605e9f == uint32(function_selector >> 224)) {
            hasPlayerWagered(address);
        } else if (0xed88c68e == uint32(function_selector >> 224)) {
            donate();
        }
    }
    ();
}
