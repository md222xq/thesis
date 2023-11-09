// Decompiled by library.dedaub.com
// 2023.11.08 20:16 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _unlocked; // STORAGE[0x0]
mapping (uint256 => struct_135) owner_1; // STORAGE[0x1]
mapping (uint256 => uint256) _resolve; // STORAGE[0x2]

struct struct_135 { uint256 field0; uint256 field1; };


function register(bytes32 varg0, address varg1) public nonPayable { 
    _unlocked = uint256(varg0);
    owner_1 = varg1 | bytes12(owner_1);
    _resolve[uint256(varg0)] = varg1 | bytes12(_resolve[uint256(uint256(uint256(varg0)))]);
    owner_1[msg.sender].field0 = uint256(_unlocked);
    owner_1[msg.sender].field1 = address(owner_1) | bytes12(owner_1[address(address(msg.sender))].field1);
    require(bool(uint8(_unlocked)));
}

function 0xe59a0407(address varg0) public nonPayable { 
    return uint256(owner_1[address(varg0)].field0), address(owner_1[address(varg0)].field1);
}

function () public payable { 
    revert();
}

function resolve(bytes32 varg0) public nonPayable { 
    return address(_resolve[uint256(varg0)]);
}

function unlocked() public nonPayable { 
    return bool(uint8(_unlocked));
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x5c23bdf5 == uint32(function_selector >> 224)) {
            resolve(bytes32);
        } else if (0x6a5e2650 == uint32(function_selector >> 224)) {
            unlocked();
        } else if (0xd22057a9 == uint32(function_selector >> 224)) {
            register(bytes32,address);
        } else if (0xe59a0407 == uint32(function_selector >> 224)) {
            0xe59a0407();
        }
    }
    ();
}
