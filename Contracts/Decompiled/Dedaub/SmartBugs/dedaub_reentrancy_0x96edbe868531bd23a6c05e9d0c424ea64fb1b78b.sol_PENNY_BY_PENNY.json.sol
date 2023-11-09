// Decompiled by library.dedaub.com
// 2023.11.08 20:36 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => struct_178) _acc; // STORAGE[0x0]
uint256 _minSum; // STORAGE[0x1]
uint256 stor_2_0_19; // STORAGE[0x2] bytes 0 to 19
uint256 _initialized; // STORAGE[0x2] bytes 20 to 20

struct struct_178 { uint256 field0; uint256 field1; };


function SetMinSum(uint256 varg0) public nonPayable { 
    require(!_initialized);
    _minSum = varg0;
}

function Put(uint256 varg0) public payable { 
    0x1df(varg0);
}

function Acc(address varg0) public nonPayable { 
    return _acc[varg0].field0, _acc[varg0].field1;
}

function MinSum() public nonPayable { 
    return _minSum;
}

function 0x1df(uint256 varg0) private { 
    _acc[msg.sender].field1 = _acc[msg.sender].field1 + msg.value;
    if (block.timestamp + varg0 > _acc[msg.sender].field0) {
        _acc[msg.sender].field0 = block.timestamp + varg0;
    }
    require(bool(stor_2_0_19.code.size));
    v0 = stor_2_0_19.AddMessage(msg.sender, msg.value, 0x507574).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function () public payable { 
    0x1df(0);
}

function SetLogFile(address varg0) public nonPayable { 
    require(!_initialized);
    stor_2_0_19 = varg0;
}

function Collect(uint256 varg0) public payable { 
    v0 = v1 = _acc[msg.sender].field1 >= _minSum;
    if (!bool(_acc[msg.sender].field1 < _minSum)) {
        v0 = v2 = _acc[msg.sender].field1 >= varg0;
    }
    if (v0) {
        v0 = block.timestamp > _acc[msg.sender].field0;
    }
    if (v0) {
        v3 = msg.sender.call().value(varg0).gas(msg.gas);
        if (v3) {
            _acc[msg.sender].field1 = _acc[msg.sender].field1 - varg0;
            require(bool(stor_2_0_19.code.size));
            v4 = stor_2_0_19.AddMessage(msg.sender, varg0, 'Collect').gas(msg.gas);
            require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    }
}

function Initialized() public nonPayable { 
    _initialized = 1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x303b9379 == uint32(function_selector >> 224)) {
            SetLogFile(address);
        } else if (0x3fe43822 == uint32(function_selector >> 224)) {
            Collect(uint256);
        } else if (0x5daa87a0 == uint32(function_selector >> 224)) {
            Initialized();
        } else if (0x640d3017 == uint32(function_selector >> 224)) {
            SetMinSum(uint256);
        } else if (0x65f3c31a == uint32(function_selector >> 224)) {
            Put(uint256);
        } else if (0x7731cd2a == uint32(function_selector >> 224)) {
            Acc(address);
        } else if (0xc2808d1a == uint32(function_selector >> 224)) {
            MinSum();
        }
    }
    ();
}
