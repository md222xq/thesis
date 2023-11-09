// Decompiled by library.dedaub.com
// 2023.11.08 22:02 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _totalToDistribute; // STORAGE[0x2]
uint256 _next; // STORAGE[0x3]
struct_272[] _nTransfers; // STORAGE[0x4]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _token; // STORAGE[0x1] bytes 0 to 19

struct struct_272 { uint256 field0; uint256 field1; };


function next() public nonPayable { 
    return _next;
}

function hasTerminated() public nonPayable { 
    v0 = 0x3f2();
    return bool(v0);
}

function fill(uint256[] varg0) public nonPayable { 
    v0 = new uint256[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length << 5);
    v1 = v2 = 0;
    if (msg.sender == _owner) {
        require(_next <= 0);
        _nTransfers = _nTransfers.length + v0.length;
        if (_nTransfers.length > _nTransfers.length + v0.length) {
            v3 = v4 = keccak256(4) + (_nTransfers.length + v0.length << 1);
            while (keccak256(4) + (_nTransfers.length << 1) > v3) {
                STORAGE[v3 + 0] = bytes12(STORAGE[v3 + 0]);
                STORAGE[v3 + 1] = 0;
                v3 += 2;
            }
        }
        v5 = v6 = 0;
        while (v5 < v0.length) {
            assert(bool(v5 < v0.length));
            assert(bool(v5 < v0.length));
            assert(bool(0x10000000000000000000000000000000000000000));
            assert(bool(_nTransfers.length + v5 < _nTransfers.length));
            _nTransfers[_nTransfers.length + v5].field0 = address(v0[v5]) | bytes12(_nTransfers[_nTransfers.length + v5].field0);
            assert(bool(_nTransfers.length + v5 < _nTransfers.length));
            _nTransfers[_nTransfers.length + v5].field1 = v0[v5] >> 160;
            v1 = v1 + (v0[v5] >> 160);
            v5 += 1;
        }
        _totalToDistribute = _totalToDistribute + v1;
    }
}

function owner() public nonPayable { 
    return _owner;
}

function transfers(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _nTransfers.length));
    return address(_nTransfers[varg0].field0), _nTransfers[varg0].field1;
}

function changeOwner(address varg0) public nonPayable { 
    if (msg.sender == _owner) {
        _owner = varg0;
    }
}

function execute(address varg0, uint256 varg1, bytes varg2) public nonPayable { 
    v0 = new bytes[](varg2.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    if (msg.sender == _owner) {
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
}

function run() public nonPayable { 
    if (msg.sender == _owner) {
        if (_nTransfers.length != 0) {
            v0 = v1 = _next;
            _next = _nTransfers.length;
            v2 = v3 = v1 == 0;
            if (v3) {
                require(bool(_token.code.size));
                v4, /* uint256 */ v5 = _token.balanceOf(address(this)).gas(msg.gas);
                require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(RETURNDATASIZE() >= 32);
                v2 = v5 != _totalToDistribute;
            }
            require(!v2);
            while (1) {
                v6 = v0 < _nTransfers.length;
                if (v0 >= _nTransfers.length) {
                    // Unknown jump to Block 0x989B0x377. Refer to 3-address code (TAC);
                }
                v6 = v7 = msg.gas > 0x249f0;
                if (!v6) {
                    _next = v0;
                } else {
                    assert(bool(v0 < _nTransfers.length));
                    assert(bool(v0 < _nTransfers.length));
                    if (_nTransfers[v0].field1 > 0) {
                        assert(bool(v0 < _nTransfers.length));
                        require(bool(_token.code.size));
                        v8, /* bool */ v9 = _token.transfer(address(_nTransfers[v0].field0), _nTransfers[v0].field1).gas(msg.gas);
                        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        require(RETURNDATASIZE() >= 32);
                        require(bool(v9));
                    }
                    v0 += 1;
                }
            }
        }
    }
}

function token() public nonPayable { 
    return _token;
}

function 0x3f2() private { 
    if (_nTransfers.length != 0) {
        if (_next >= _nTransfers.length) {
            return 1;
        } else {
            return 0;
        }
    } else {
        return 0;
    }
}

function () public payable { 
    revert();
}

function totalToDistribute() public nonPayable { 
    return _totalToDistribute;
}

function nTransfers() public nonPayable { 
    return _nTransfers.length;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x211a04db == uint32(function_selector >> 224)) {
            totalToDistribute();
        } else if (0x3585e500 == uint32(function_selector >> 224)) {
            nTransfers();
        } else if (0x4c8fe526 == uint32(function_selector >> 224)) {
            next();
        } else if (0x5f2befb9 == uint32(function_selector >> 224)) {
            hasTerminated();
        } else if (0x884b5dc2 == uint32(function_selector >> 224)) {
            fill(uint256[]);
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0x9377d711 == uint32(function_selector >> 224)) {
            transfers(uint256);
        } else if (0xa6f9dae1 == uint32(function_selector >> 224)) {
            changeOwner(address);
        } else if (0xb61d27f6 == uint32(function_selector >> 224)) {
            execute(address,uint256,bytes);
        } else if (0xc0406226 == uint32(function_selector >> 224)) {
            run();
        } else if (0xfc0c546a == uint32(function_selector >> 224)) {
            token();
        }
    }
    ();
}
