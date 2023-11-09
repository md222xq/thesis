// Decompiled by library.dedaub.com
// 2023.11.08 21:01 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _jackpot; // STORAGE[0x2]
uint256 _lastInvestmentTimestamp; // STORAGE[0x3]
uint256 stor_4; // STORAGE[0x4]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _lastInvestor; // STORAGE[0x1] bytes 0 to 19



function lastInvestor() public nonPayable { 
    return _lastInvestor;
}

function invest() public nonPayable { 
    assert(bool(2));
    require(msg.value >= _jackpot >> 1);
    _lastInvestor = msg.sender;
    assert(bool(2));
    _jackpot = _jackpot + (msg.value >> 1);
    _lastInvestmentTimestamp = block.timestamp;
}

function lastInvestmentTimestamp() public nonPayable { 
    return _lastInvestmentTimestamp;
}

function () public payable { 
    revert();
}

function 0x51294de7() public nonPayable { 
    require(block.timestamp >= _lastInvestmentTimestamp + stor_4);
    v0 = _lastInvestor.call().value(_jackpot).gas(!_jackpot * 2300);
    v1 = _owner.call().value((address(this)).balance - 0xde0b6b3a7640000).gas(!((address(this)).balance - 0xde0b6b3a7640000) * 2300);
    _lastInvestor = 0;
    _jackpot = 0xde0b6b3a7640000;
    _lastInvestmentTimestamp = 0;
}

function 0x552eea49() public nonPayable { 
    return stor_4;
}

function jackpot() public nonPayable { 
    return _jackpot;
}

function owner() public nonPayable { 
    return _owner;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x51294de7 == uint32(function_selector >> 224)) {
            0x51294de7();
        } else if (0x552eea49 == uint32(function_selector >> 224)) {
            0x552eea49();
        } else if (0x6b31ee01 == uint32(function_selector >> 224)) {
            jackpot();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0xb2977aeb == uint32(function_selector >> 224)) {
            lastInvestor();
        } else if (0xe8b5e51f == uint32(function_selector >> 224)) {
            invest();
        } else if (0xee2bee59 == uint32(function_selector >> 224)) {
            lastInvestmentTimestamp();
        }
    }
    ();
}
