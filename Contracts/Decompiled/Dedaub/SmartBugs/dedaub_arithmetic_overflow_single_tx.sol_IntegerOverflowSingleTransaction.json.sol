// Decompiled by library.dedaub.com
// 2023.11.08 19:56 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _count; // STORAGE[0x0]



function 0x5c68bc06(uint256 varg0) public nonPayable { 
    _count = _count * varg0;
}

function 0x69fb0f5d(uint256 varg0) public nonPayable { 
}

function 0xdef92d68(uint256 varg0) public nonPayable { 
    _count = _count + varg0;
}

function 0xe6dca5ea(uint256 varg0) public nonPayable { 
}

function () public payable { 
    revert();
}

function 0x0642f32a(uint256 varg0) public nonPayable { 
}

function count() public nonPayable { 
    return _count;
}

function 0x4c4f50f3(uint256 varg0) public nonPayable { 
    _count = _count - varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x642f32a == uint32(function_selector >> 224)) {
            0x0642f32a();
        } else if (0x6661abd == uint32(function_selector >> 224)) {
            count();
        } else if (0x4c4f50f3 == uint32(function_selector >> 224)) {
            0x4c4f50f3();
        } else if (0x5c68bc06 == uint32(function_selector >> 224)) {
            0x5c68bc06();
        } else if (0x69fb0f5d == uint32(function_selector >> 224)) {
            0x69fb0f5d();
        } else if (0xdef92d68 == uint32(function_selector >> 224)) {
            0xdef92d68();
        } else if (0xe6dca5ea == uint32(function_selector >> 224)) {
            0xe6dca5ea();
        }
    }
    ();
}
