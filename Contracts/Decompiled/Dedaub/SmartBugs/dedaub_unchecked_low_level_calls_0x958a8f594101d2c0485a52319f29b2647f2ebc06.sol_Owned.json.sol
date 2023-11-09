// Decompiled by library.dedaub.com
// 2023.11.08 21:44 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _newOwner; // STORAGE[0x1] bytes 0 to 19



function execute(address varg0, uint256 varg1, bytes varg2) public nonPayable { 
    v0 = new bytes[](varg2.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    require(bool(address(msg.sender) == _owner));
    v1 = v2 = 0;
    while (v1 < v0.length) {
        MEM[v3.data + v1] = v0[v1];
        v1 = v1 + 32;
    }
    v4 = v5 = v0.length + v3.data;
    if (0x1f & v0.length) {
        MEM[v5 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v5 - (0x1f & v0.length)];
    }
    v6 = varg0.call(v3.data).value(varg1).gas(msg.gas);
}

function newOwner() public nonPayable { 
    return _newOwner;
}

function () public payable { 
    revert();
}

function acceptOwnership() public nonPayable { 
    if (msg.sender == _newOwner) {
        _owner = _newOwner;
    }
}

function owner() public nonPayable { 
    return _owner;
}

function changeOwner(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    _newOwner = varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x79ba5097 == uint32(function_selector >> 224)) {
            acceptOwnership();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0xa6f9dae1 == uint32(function_selector >> 224)) {
            changeOwner(address);
        } else if (0xb61d27f6 == uint32(function_selector >> 224)) {
            execute(address,uint256,bytes);
        } else if (0xd4ee1d90 == uint32(function_selector >> 224)) {
            newOwner();
        }
    }
    ();
}
