// Decompiled by library.dedaub.com
// 2023.11.08 18:30 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 stor_1; // STORAGE[0x1]
uint256 _start; // STORAGE[0x2]
uint256 _withdrawalCounter; // STORAGE[0x3]
uint256 _fallback; // STORAGE[0x0] bytes 0 to 19



function withdrawalCounter() public nonPayable { 
    return _withdrawalCounter;
}

function withdraw() public nonPayable { 
    _withdrawalCounter = _withdrawalCounter + 1;
    v0 = _fallback.setFibonacci(_withdrawalCounter).gas(msg.gas);
    require(bool(v0));
    v1 = msg.sender.call().value(stor_1 * 0xde0b6b3a7640000).gas(!(stor_1 * 0xde0b6b3a7640000) * 2300);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0xbbe1d75b() public nonPayable { 
    return stor_1;
}

function start() public nonPayable { 
    return _start;
}

function () public nonPayable { 
    CALLDATACOPY(MEM[64], 0, msg.data.length);
    v0 = _fallback.delegatecall(MEM[(MEM[64]) len (MEM[64] + msg.data.length - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);
    require(bool(v0));
}

function 0x1d0e8e9a() public nonPayable { 
    return _fallback;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1d0e8e9a == uint32(function_selector >> 224)) {
            0x1d0e8e9a();
        } else if (0x20d786b5 == uint32(function_selector >> 224)) {
            withdrawalCounter();
        } else if (0x3ccfd60b == uint32(function_selector >> 224)) {
            withdraw();
        } else if (0xbbe1d75b == uint32(function_selector >> 224)) {
            0xbbe1d75b();
        } else if (0xbe9a6555 == uint32(function_selector >> 224)) {
            start();
        }
    }
    ();
}
