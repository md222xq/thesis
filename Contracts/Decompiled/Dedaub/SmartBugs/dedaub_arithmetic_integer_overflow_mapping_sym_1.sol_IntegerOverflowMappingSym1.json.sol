// Decompiled by library.dedaub.com
// 2023.11.08 19:52 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _init; // STORAGE[0x0]



function () public payable { 
    revert();
}

function init(uint256 varg0, uint256 varg1) public nonPayable { 
    _init[varg0] = _init[varg0] - varg1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xa5843f08 == uint32(function_selector >> 224)) {
            init(uint256,uint256);
        }
    }
    ();
}
