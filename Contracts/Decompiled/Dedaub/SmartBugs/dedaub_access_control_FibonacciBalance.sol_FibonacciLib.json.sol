// Decompiled by library.dedaub.com
// 2023.11.08 18:31 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _setStart; // STORAGE[0x0]
uint256 stor_1; // STORAGE[0x1]



function 0x13f(uint256 varg0) private { 
    if (varg0 != 0) {
        if (varg0 != 1) {
            v0 = 0x13f(varg0 - 2);
            v1 = 0x13f(varg0 - 1);
            v2 = v1 + v0;
        } else {
            v2 = v3 = _setStart + 1;
        }
    } else {
        v2 = v4 = _setStart;
    }
    return v2;
}

function () public payable { 
    revert();
}

function 0xbbe1d75b() public nonPayable { 
    return stor_1;
}

function start() public nonPayable { 
    return _setStart;
}

function setStart(uint256 varg0) public nonPayable { 
    _setStart = varg0;
}

function 0xfe75faab(uint256 varg0) public nonPayable { 
    v0 = 0x13f(varg0);
    stor_1 = v0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xbbe1d75b == uint32(function_selector >> 224)) {
            0xbbe1d75b();
        } else if (0xbe9a6555 == uint32(function_selector >> 224)) {
            start();
        } else if (0xf6a03ebf == uint32(function_selector >> 224)) {
            setStart(uint256);
        } else if (0xfe75faab == uint32(function_selector >> 224)) {
            0xfe75faab();
        }
    }
    ();
}
