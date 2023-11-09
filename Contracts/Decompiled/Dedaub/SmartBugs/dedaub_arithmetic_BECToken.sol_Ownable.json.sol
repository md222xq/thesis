// Decompiled by library.dedaub.com
// 2023.11.08 19:46 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _owner; // STORAGE[0x0] bytes 0 to 19


// Events
OwnershipTransferred(address, address);

function () public payable { 
    revert();
}

function owner() public nonPayable { 
    return _owner;
}

function transferOwnership(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(bool(address(address(varg0)) != address(0x0)));
    emit OwnershipTransferred(_owner, varg0);
    _owner = varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0xf2fde38b == uint32(function_selector >> 224)) {
            transferOwnership(address);
        }
    }
    ();
}
