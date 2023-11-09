// Decompiled by library.dedaub.com
// 2023.11.08 19:57 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _balances; // STORAGE[0x0]
mapping (uint256 => uint256) _increaseLockTime; // STORAGE[0x1]



function lockTime(address varg0) public nonPayable { 
    return _increaseLockTime[varg0];
}

function deposit() public payable { 
    _balances[msg.sender] = _balances[msg.sender] + msg.value;
    _increaseLockTime[msg.sender] = block.timestamp + 0x93a80;
}

function () public payable { 
    revert();
}

function balances(address varg0) public nonPayable { 
    return _balances[varg0];
}

function withdraw() public nonPayable { 
    require(bool(_balances[address(address(msg.sender))] > 0));
    require(bool(block.timestamp > _increaseLockTime[address(address(msg.sender))]));
    _balances[msg.sender] = 0;
    v0 = msg.sender.call().value(_balances[msg.sender]).gas(!_balances[msg.sender] * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function increaseLockTime(uint256 varg0) public nonPayable { 
    _increaseLockTime[msg.sender] = _increaseLockTime[msg.sender] + varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x27e235e3 == uint32(function_selector >> 224)) {
            balances(address);
        } else if (0x3ccfd60b == uint32(function_selector >> 224)) {
            withdraw();
        } else if (0x79af55e4 == uint32(function_selector >> 224)) {
            increaseLockTime(uint256);
        } else if (0xa4beda63 == uint32(function_selector >> 224)) {
            lockTime(address);
        } else if (0xd0e30db0 == uint32(function_selector >> 224)) {
            deposit();
        }
    }
    ();
}
