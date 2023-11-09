// Decompiled by library.dedaub.com
// 2023.11.08 20:53 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 stor_0_0_0; // STORAGE[0x0] bytes 0 to 0



function () public payable { 
    revert();
}

function 0x4d5f327c() public nonPayable { 
    if (!stor_0_0_0) {
        stor_0_0_0 = 1;
        require(bool((address(msg.sender)).code.size));
        v0 = msg.sender.airDrop().gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    MEM[32 + MEM[64]] = 'Nu Token';
    v1 = v2 = v2.data;
    v3 = v4 = 32 + MEM[64];
    while (!bool(v5 < 32)) {
        MEM[v1] = MEM[v3];
        v1 = v1 + 32;
        v3 = v3 + 32;
        v5 = v5 - 32;
    }
    MEM[v1] = MEM[v3] & ~(256 ** (32 - v5) - 1) | MEM[v1] & 256 ** (32 - v5) - 1;
    return uint256(keccak256(MEM[(v2.data) len 8]));
}

function call(address varg0) public nonPayable { 
    require(bool((address(address(varg0))).code.size));
    v0 = varg0.airDrop().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x4d5f327c == uint32(function_selector >> 224)) {
            0x4d5f327c();
        } else if (0xf55332ab == uint32(function_selector >> 224)) {
            call(address);
        }
    }
    ();
}
