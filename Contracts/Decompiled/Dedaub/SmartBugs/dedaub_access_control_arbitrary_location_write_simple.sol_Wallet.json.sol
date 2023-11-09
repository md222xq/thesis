// Decompiled by library.dedaub.com
// 2023.11.08 18:04 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256[] array_0; // STORAGE[0x0]
uint256 _destroy; // STORAGE[0x1] bytes 0 to 19



function () public payable { 
}

function 0x4f798da7(uint256 varg0, uint256 varg1) public nonPayable { 
    require(bool(varg0 < array_0.length));
    assert(bool(varg0 < array_0.length));
    array_0[varg0] = varg1;
}

function 0x7adde4ef() public nonPayable { 
    require(bool(0 <= array_0.length));
    array_0 = array_0.length - 1;
    if (array_0.length > array_0.length - 1) {
        v0 = v1 = keccak256(0) + (array_0.length - 1);
        while (keccak256(0) + array_0.length > v0) {
            STORAGE[v0] = 0;
            v0 += 1;
        }
    }
}

function Destroy() public nonPayable { 
    require(bool(address(msg.sender) == _destroy));
    selfdestruct(msg.sender);
}

function 0xfd10d655(uint256 varg0) public nonPayable { 
    array_0 = array_0.length + 1;
    array_0[array_0.length + 1 - 1] = varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x4f798da7 == uint32(function_selector >> 224)) {
            0x4f798da7();
        } else if (0x7adde4ef == uint32(function_selector >> 224)) {
            0x7adde4ef();
        } else if (0xf58fef8e == uint32(function_selector >> 224)) {
            Destroy();
        } else if (0xfd10d655 == uint32(function_selector >> 224)) {
            0xfd10d655();
        }
    }
    ();
}
