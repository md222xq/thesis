// Decompiled by library.dedaub.com
// 2023.11.08 19:55 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _run; // STORAGE[0x0]
uint256 _count; // STORAGE[0x1]



function () public payable { 
    revert();
}

function count() public nonPayable { 
    return _count;
}

function run(uint256 varg0) public nonPayable { 
    if (_run != 0) {
        _count = _count - varg0;
    } else {
        _run = 1;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x6661abd == uint32(function_selector >> 224)) {
            count();
        } else if (0xa444f5e9 == uint32(function_selector >> 224)) {
            run(uint256);
        }
    }
    ();
}
