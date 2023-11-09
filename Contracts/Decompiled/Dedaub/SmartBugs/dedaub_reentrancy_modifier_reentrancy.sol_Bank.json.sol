// Decompiled by library.dedaub.com
// 2023.11.08 20:53 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function () public payable { 
    revert();
}

function 0x4d5f327c() public nonPayable { 
    MEM[32 + MEM[64]] = 'Nu Token';
    v0 = v1 = v1.data;
    v2 = v3 = 32 + MEM[64];
    while (!bool(v4 < 32)) {
        MEM[v0] = MEM[v2];
        v0 = v0 + 32;
        v2 = v2 + 32;
        v4 = v4 - 32;
    }
    MEM[v0] = MEM[v2] & ~(256 ** (32 - v4) - 1) | MEM[v0] & 256 ** (32 - v4) - 1;
    return uint256(keccak256(MEM[(v1.data) len 8]));
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x4d5f327c == uint32(function_selector >> 224)) {
            0x4d5f327c();
        }
    }
    ();
}
