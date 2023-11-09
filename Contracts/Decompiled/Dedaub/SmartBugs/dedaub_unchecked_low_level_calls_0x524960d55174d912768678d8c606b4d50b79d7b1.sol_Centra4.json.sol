// Decompiled by library.dedaub.com
// 2023.11.08 21:18 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function () public payable { 
    revert();
}

function transfer() public nonPayable { 
    v0 = address(0x96a65609a7b84e8842732deb08f56c3e21ac6f8a).call('register', 'CentraToken').gas(msg.gas);
    v1 = address(0x96a65609a7b84e8842732deb08f56c3e21ac6f8a).transfer(address(0xaa27f8c1160886aacba64b2319d8d5469ef2af79), 1).gas(msg.gas);
    if (bool(v1)) {
        v2 = v3 = 1;
    } else {
        v2 = v4 = 0;
    }
    return bool(v2);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x8a4068dd == uint32(function_selector >> 224)) {
            transfer();
        }
    }
    ();
}
