// Decompiled by library.dedaub.com
// 2023.11.08 21:05 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function () public payable { 
    revert();
}

function callAddress(address varg0) public nonPayable { 
    v0 = varg0.call().gas(msg.gas);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x907c0ff9 == uint32(function_selector >> 224)) {
            callAddress(address);
        }
    }
    ();
}
