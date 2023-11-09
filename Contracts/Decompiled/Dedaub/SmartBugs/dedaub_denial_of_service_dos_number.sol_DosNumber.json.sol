// Decompiled by library.dedaub.com
// 2023.11.08 20:09 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _clear; // STORAGE[0x0]
uint256[] array_1; // STORAGE[0x1]



function 0xaefee53e() public nonPayable { 
    return _clear;
}

function () public payable { 
    revert();
}

function 0x263e5d3c() public nonPayable { 
    require(bool(_clear > 1500));
    v0 = new uint256[](0);
    if (0) {
        MEM[(v0.data) len 0] = this.code[this.code.size len 0];
        v1 = v0.data;
    }
    v2 = v3 = v0.data;
    array_1 = v0.length;
    v4 = v5 = array_1.data;
    if (v0.length) {
        while (v0.data > v2) {
            STORAGE[v4] = MEM[v2];
            v2 += 32;
            v4 += 1;
        }
    }
    while (v5 + array_1.length > v4) {
        STORAGE[v4] = 0;
        v4 += 1;
    }
    _clear = 0;
}

function 0x529f6f2d(uint256 varg0, uint256 varg1) public nonPayable { 
    v0 = v1 = 0;
    while (v0 < varg1) {
        if (_clear == array_1.length) {
            array_1 = array_1.length + 1;
            if (array_1.length > array_1.length + 1) {
                v2 = v3 = keccak256(1) + (array_1.length + 1);
                while (keccak256(1) + array_1.length > v2) {
                    STORAGE[v2] = 0;
                    v2 += 1;
                }
            }
        }
        _clear += 1;
        assert(bool(_clear < array_1.length));
        array_1[_clear] = varg0;
        v0 += 1;
    }
}

function clear() public nonPayable { 
    require(bool(_clear > 1500));
    _clear = 0;
}

function 0x6a6f7257() public nonPayable { 
    return array_1.length;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x263e5d3c == uint32(function_selector >> 224)) {
            0x263e5d3c();
        } else if (0x529f6f2d == uint32(function_selector >> 224)) {
            0x529f6f2d();
        } else if (0x52efea6e == uint32(function_selector >> 224)) {
            clear();
        } else if (0x6a6f7257 == uint32(function_selector >> 224)) {
            0x6a6f7257();
        } else if (0xaefee53e == uint32(function_selector >> 224)) {
            0xaefee53e();
        }
    }
    ();
}
