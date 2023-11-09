// Decompiled by library.dedaub.com
// 2023.11.08 19:50 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _add; // STORAGE[0x0]



function () public payable { 
    revert();
}

function add(uint256 varg0) public nonPayable { 
    _add = _add + varg0;
    return bool(0);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1003e2d2 == uint32(function_selector >> 224)) {
            add(uint256);
        }
    }
    ();
}
