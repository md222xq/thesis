// Decompiled by library.dedaub.com
// 2023.11.08 20:53 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _withdrawalLimit; // STORAGE[0x0]
mapping (uint256 => uint256) _lastWithdrawTime; // STORAGE[0x1]
mapping (uint256 => uint256) _depositFunds; // STORAGE[0x2]



function withdrawalLimit() public nonPayable { 
    return _withdrawalLimit;
}

function depositFunds() public payable { 
    _depositFunds[msg.sender] = _depositFunds[msg.sender] + msg.value;
}

function () public payable { 
    revert();
}

function lastWithdrawTime(address varg0) public nonPayable { 
    return _lastWithdrawTime[varg0];
}

function withdrawFunds(uint256 varg0) public nonPayable { 
    require(bool(_depositFunds[address(address(msg.sender))] >= varg0));
    require(bool(varg0 <= _withdrawalLimit));
    require(bool(block.timestamp >= _lastWithdrawTime[address(address(msg.sender))] + 0x93a80));
    v0 = msg.sender.call().value(varg0).gas(msg.gas);
    require(bool(v0));
    _depositFunds[msg.sender] = _depositFunds[msg.sender] - varg0;
    _lastWithdrawTime[msg.sender] = block.timestamp;
}

function balances(address varg0) public nonPayable { 
    return _depositFunds[varg0];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1031ec31 == uint32(function_selector >> 224)) {
            lastWithdrawTime(address);
        } else if (0x155dd5ee == uint32(function_selector >> 224)) {
            withdrawFunds(uint256);
        } else if (0x27e235e3 == uint32(function_selector >> 224)) {
            balances(address);
        } else if (0x7ddfe78d == uint32(function_selector >> 224)) {
            withdrawalLimit();
        } else if (0xe2c41dbc == uint32(function_selector >> 224)) {
            depositFunds();
        }
    }
    ();
}
