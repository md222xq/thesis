// Decompiled by library.dedaub.com
// 2023.11.08 20:39 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _balances; // STORAGE[0x0]
uint256 _minDeposit; // STORAGE[0x1]
uint256 stor_2_0_19; // STORAGE[0x2] bytes 0 to 19



function Deposit() public payable { 
    if (msg.value > _minDeposit) {
        _balances[msg.sender] = _balances[msg.sender] + msg.value;
        require(bool(stor_2_0_19.code.size));
        v0 = stor_2_0_19.AddMessage(msg.sender, msg.value, 'Deposit').gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function () public payable { 
}

function MinDeposit() public nonPayable { 
    return _minDeposit;
}

function balances(address varg0) public nonPayable { 
    return _balances[varg0];
}

function CashOut(uint256 varg0) public payable { 
    if (!bool(varg0 > _balances[address(address(msg.sender))])) {
        v0 = msg.sender.call().value(varg0).gas(msg.gas);
        if (v0) {
            _balances[msg.sender] = _balances[msg.sender] - varg0;
            require(bool(stor_2_0_19.code.size));
            v1 = stor_2_0_19.AddMessage(msg.sender, varg0, 'CashOut').gas(msg.gas);
            require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x11bcd830 == uint32(function_selector >> 224)) {
            MinDeposit();
        } else if (0x27e235e3 == uint32(function_selector >> 224)) {
            balances(address);
        } else if (0x9ffa0711 == uint32(function_selector >> 224)) {
            CashOut(uint256);
        } else if (0xed21248c == uint32(function_selector >> 224)) {
            Deposit();
        }
    }
    ();
}
