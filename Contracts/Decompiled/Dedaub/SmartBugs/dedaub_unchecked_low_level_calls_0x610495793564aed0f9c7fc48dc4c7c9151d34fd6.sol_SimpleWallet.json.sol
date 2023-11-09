// Decompiled by library.dedaub.com
// 2023.11.08 21:20 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _fallback; // STORAGE[0x1]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19



function sendMoney(address varg0, uint256 varg1, bytes varg2) public nonPayable { 
    v0 = new bytes[](varg2.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    require(bool(address(msg.sender) == _owner));
    v1 = v2 = 0;
    while (v1 < v0.length) {
        MEM[v3.data + v1] = v0[v1];
        v1 = v1 + 32;
    }
    v4 = v5 = v0.length + v3.data;
    if (0x1f & v0.length) {
        MEM[v5 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v5 - (0x1f & v0.length)];
    }
    v6 = varg0.call(v3.data).value(varg1).gas(msg.gas);
}

function 0x1da(uint256 varg0) private { 
    require(bool(address(msg.sender) == _owner));
    v0 = msg.sender.call().value(varg0).gas(!varg0 * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function () public payable { 
    _fallback += 1;
}

function withdraw(uint256 varg0) public nonPayable { 
    0x1da(varg0);
}

function depositsCount() public nonPayable { 
    return _fallback;
}

function withdrawAll() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    0x1da((address(this)).balance);
}

function owner() public nonPayable { 
    return _owner;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x2e1a7d4d == uint32(function_selector >> 224)) {
            withdraw(uint256);
        } else if (0x4506e935 == uint32(function_selector >> 224)) {
            depositsCount();
        } else if (0x853828b6 == uint32(function_selector >> 224)) {
            withdrawAll();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0xf8025049 == uint32(function_selector >> 224)) {
            sendMoney(address,uint256,bytes);
        }
    }
    ();
}
