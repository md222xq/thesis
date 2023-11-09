// Decompiled by library.dedaub.com
// 2023.11.08 19:39 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function () public payable { 
    revert();
}

function 0xa56a3b5a() public nonPayable { 
    selfdestruct(msg.sender);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xa56a3b5a == uint32(function_selector >> 224)) {
            0xa56a3b5a();
        }
    }
    ();
}
