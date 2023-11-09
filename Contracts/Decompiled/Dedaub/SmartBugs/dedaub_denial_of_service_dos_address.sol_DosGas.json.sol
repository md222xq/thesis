// Decompiled by library.dedaub.com
// 2023.11.08 20:08 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256[] array_0; // STORAGE[0x0]
uint256 stor_1_0_0; // STORAGE[0x1] bytes 0 to 0



function () public payable { 
    revert();
}

function 0x0d870b7f() public nonPayable { 
    if (array_0.length > 1500) {
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
        stor_1_0_0 = 1;
    }
}

function 0x2e51673d() public nonPayable { 
    return array_0.length;
}

function 0x357785a5() public nonPayable { 
    v0 = v1 = 0;
    while (v0 < 350) {
        array_0 = array_0.length + 1;
        array_0[array_0.length + 1 - 1] = msg.sender | bytes12(array_0[array_0.length + 1 - 1]);
        v0 += 1;
    }
    return bool(1);
}

function 0x8292a656() public nonPayable { 
    return stor_1_0_0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xd870b7f == uint32(function_selector >> 224)) {
            0x0d870b7f();
        } else if (0x2e51673d == uint32(function_selector >> 224)) {
            0x2e51673d();
        } else if (0x357785a5 == uint32(function_selector >> 224)) {
            0x357785a5();
        } else if (0x8292a656 == uint32(function_selector >> 224)) {
            0x8292a656();
        }
    }
    ();
}
