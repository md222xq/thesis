// Decompiled by library.dedaub.com
// 2023.10.28 13:28 UTC
// Compiled using the solidity compiler version 0.8.20
// https://library.dedaub.com/decompile?md5=b118fadce1ae81e2e42ffd576b270ae2

// Data structures and variables inferred from the use of storage instructions
uint256 _someNumber; // STORAGE[0x2]
uint256 _lib; // STORAGE[0x0] bytes 0 to 19
uint256 _owner; // STORAGE[0x1] bytes 0 to 19



function () public payable { 
    revert();
}

function owner() public payable { 
    return _owner;
}

function lib() public payable { 
    return _lib;
}

function someNumber() public payable { 
    return _someNumber;
}

function doSomething(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(varg0 == varg0);
    v0 = v1 = 0;
    while (v0 < 36) {
        MEM[MEM[64] + v0] = MEM[MEM[64] + 32 + v0];
        v0 = v0 + 32;
    }
    MEM[MEM[64] + 36] = 0;
    v2, /* uint256 */ v3 = _lib.doSomething(uint224(varg0) | bytes4(0xa6b206bf00000000000000000000000000000000000000000000000000000000), varg0).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v4 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v4.data, 0, RETURNDATASIZE());
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0x92801230 == function_selector >> 224) {
            lib();
        } else if (0x931c9b99 == function_selector >> 224) {
            someNumber();
        } else if (0xa6b206bf == function_selector >> 224) {
            doSomething(uint256);
        }
    }
    ();
}
