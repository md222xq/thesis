// Decompiled by library.dedaub.com
// 2023.11.08 21:54 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _transferOwner; // STORAGE[0x0] bytes 0 to 19



function () public payable { 
    revert();
}

function transferOwner(address varg0) public nonPayable { 
    if (msg.sender == _transferOwner) {
        _transferOwner = varg0;
    }
}

function proxy(address varg0, bytes varg1) public payable { 
    v0 = new bytes[](varg1.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v1 = v2 = 0;
    while (v1 < v0.length) {
        MEM[v3.data + v1] = v0[v1];
        v1 = v1 + 32;
    }
    v4 = v5 = v0.length + v3.data;
    if (0x1f & v0.length) {
        MEM[v5 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v5 - (0x1f & v0.length)];
    }
    v6 = varg0.call(v3.data).value(msg.value).gas(msg.gas);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x4fb2e45d == uint32(function_selector >> 224)) {
            transferOwner(address);
        } else if (0xbe6d055a == uint32(function_selector >> 224)) {
            proxy(address,bytes);
        }
    }
    ();
}
