// Decompiled by library.dedaub.com
// 2023.11.08 19:40 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _changeOwner; // STORAGE[0x0] bytes 0 to 19



function () public payable { 
    revert();
}

function changeOwner(address varg0) public nonPayable { 
    _changeOwner = varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xa6f9dae1 == uint32(function_selector >> 224)) {
            changeOwner(address);
        }
    }
    ();
}
