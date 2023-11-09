// Decompiled by library.dedaub.com
// 2023.11.08 20:09 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256[] array_0; // STORAGE[0x0]



function () public payable { 
    revert();
}

function 0x20227db8() public nonPayable { 
    if (array_0.length >= 1500) {
        v0 = new uint256[](0);
        if (0) {
            MEM[(v0.data) len 0] = this.code[this.code.size len 0];
            v1 = v0.data;
        }
        v2 = v3 = v0.data;
        array_0 = v0.length;
        v4 = v5 = array_0.data;
        if (v0.length) {
            while (v0.data > v2) {
                STORAGE[v4] = address(MEM[v2]) | bytes12(STORAGE[v4]);
                v2 += 32;
                v4 += 1;
            }
        }
        while (v5 + array_0.length > v4) {
            STORAGE[v4] = bytes12(STORAGE[v4]);
            v4 += 1;
        }
        v6 = 0;
    } else {
        v7 = v8 = 0;
        while (v7 < 350) {
            array_0 = array_0.length + 1;
            array_0[array_0.length + 1 - 1] = msg.sender | bytes12(array_0[array_0.length + 1 - 1]);
            v7 += 1;
        }
        v6 = v9 = 1;
    }
    return bool(v6);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x20227db8 == uint32(function_selector >> 224)) {
            0x20227db8();
        }
    }
    ();
}
