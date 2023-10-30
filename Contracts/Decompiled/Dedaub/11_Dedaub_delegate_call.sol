// Decompiled by library.dedaub.com
// 2023.10.28 13:29 UTC
// Compiled using the solidity compiler version 0.8.20
// https://library.dedaub.com/decompile?md5=714185faee093218a6e3f2f19e851407

// Data structures and variables inferred from the use of storage instructions
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _fallback; // STORAGE[0x1] bytes 0 to 19



function () public payable { 
    CALLDATACOPY(MEM[64], 0, msg.data.length);
    MEM[MEM[64] + msg.data.length] = 0;
    v0, /* uint256 */ v1 = _fallback.delegatecall(MEM[(MEM[64]) len (MEM[64] + msg.data.length - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v2 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v2.data, 0, RETURNDATASIZE());
    }
}

function owner() public nonPayable { 
    return _owner;
}

function lib() public nonPayable { 
    return _fallback;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        ();
    } else if (0x8da5cb5b == function_selector >> 224) {
        owner();
    } else if (0x92801230 == function_selector >> 224) {
        lib();
    } else {
        CALLDATACOPY(MEM[64], 0, msg.data.length);
        MEM[MEM[64] + msg.data.length] = 0;
        v0, /* uint256 */ v1 = _fallback.delegatecall(MEM[(MEM[64]) len (MEM[64] + msg.data.length - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v2 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v2.data, 0, RETURNDATASIZE());
        }
        exit;
    }
}
