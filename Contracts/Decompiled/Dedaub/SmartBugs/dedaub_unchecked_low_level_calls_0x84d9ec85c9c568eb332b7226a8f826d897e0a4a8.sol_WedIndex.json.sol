// Decompiled by library.dedaub.com
// 2023.11.08 21:39 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256[] array_2; // STORAGE[0x2]
uint256[] array_3; // STORAGE[0x3]
uint256 _indexdate; // STORAGE[0x4]
uint256 _weddingdate; // STORAGE[0x5]
uint256 _displaymultisig; // STORAGE[0x6]
struct_326[] _numberOfIndex; // STORAGE[0x7]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _newOwner; // STORAGE[0x1] bytes 0 to 19

struct struct_326 { uint256 field0; uint256[] field1; uint256[] field2; uint256 field3; uint256 field4; };

// Events
IndexWritten(uint256, string, string, uint256, uint256);

function partnernames() public nonPayable { 
    v0, v1 = 0x80a();
    v2 = new bytes[](v0.length);
    v3 = v4 = 0;
    while (v3 < v0.length) {
        v2[v3] = v0[v3];
        v3 = v3 + 32;
    }
    v5 = v6 = v0.length + v2.data;
    if (0x1f & v0.length) {
        MEM[v6 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v6 - (0x1f & v0.length)];
    }
    return v2;
}

function wedaddress() public nonPayable { 
    v0, v1 = 0x8a8();
    v2 = new bytes[](v0.length);
    v3 = v4 = 0;
    while (v3 < v0.length) {
        v2[v3] = v0[v3];
        v3 = v3 + 32;
    }
    v5 = v6 = v0.length + v2.data;
    if (0x1f & v0.length) {
        MEM[v6 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v6 - (0x1f & v0.length)];
    }
    return v2;
}

function indexdate() public nonPayable { 
    return _indexdate;
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

function indexarray(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _numberOfIndex.length));
    v0 = new bytes[](((!(0x1 & _numberOfIndex[varg0].field1.length) << 8) - 1 & _numberOfIndex[varg0].field1.length) >> 1);
    v1 = v2 = v0.data;
    if (((!(0x1 & _numberOfIndex[varg0].field1.length) << 8) - 1 & _numberOfIndex[varg0].field1.length) >> 1) {
        if (31 < ((!(0x1 & _numberOfIndex[varg0].field1.length) << 8) - 1 & _numberOfIndex[varg0].field1.length) >> 1) {
            v3 = v4 = _numberOfIndex[varg0].field1.data;
            do {
                MEM[v1] = STORAGE[v3];
                v3 += 1;
                v1 += 32;
            } while (v2 + (((!(0x1 & _numberOfIndex[varg0].field1.length) << 8) - 1 & _numberOfIndex[varg0].field1.length) >> 1) <= v1);
        } else {
            MEM[v2] = _numberOfIndex[varg0].field1.length >> 8 << 8;
        }
    }
    v5 = new bytes[](((!(0x1 & _numberOfIndex[varg0].field2.length) << 8) - 1 & _numberOfIndex[varg0].field2.length) >> 1);
    v6 = v7 = v5.data;
    if (!(((!(0x1 & _numberOfIndex[varg0].field2.length) << 8) - 1 & _numberOfIndex[varg0].field2.length) >> 1)) {
        v8 = v9 = _numberOfIndex[varg0].field3;
        v10 = v11 = _numberOfIndex[varg0].field4;
    } else if (31 < ((!(0x1 & _numberOfIndex[varg0].field2.length) << 8) - 1 & _numberOfIndex[varg0].field2.length) >> 1) {
        v12 = v13 = _numberOfIndex[varg0].field2.data;
        do {
            MEM[v6] = STORAGE[v12];
            v12 += 1;
            v6 += 32;
        } while (v7 + (((!(0x1 & _numberOfIndex[varg0].field2.length) << 8) - 1 & _numberOfIndex[varg0].field2.length) >> 1) <= v6);
        v8 = v14 = _numberOfIndex[varg0].field3;
        v10 = v15 = _numberOfIndex[varg0].field4;
    } else {
        MEM[v7] = _numberOfIndex[varg0].field2.length >> 8 << 8;
        v8 = v16 = _numberOfIndex[varg0].field3;
        v10 = v17 = _numberOfIndex[varg0].field4;
    }
    v18 = new bytes[](v0.length);
    v19 = v20 = 0;
    while (v19 < v0.length) {
        v18[v19] = v0[v19];
        v19 = v19 + 32;
    }
    if (0x1f & v0.length) {
        MEM[v0.length + v18.data - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v0.length + v18.data - (0x1f & v0.length)];
    }
    v21 = new bytes[](v5.length);
    v22 = v23 = 0;
    while (v22 < v5.length) {
        v21[v22] = v5[v22];
        v22 = v22 + 32;
    }
    v24 = v25 = v5.length + v21.data;
    if (0x1f & v5.length) {
        MEM[v25 - (0x1f & v5.length)] = ~(256 ** (32 - (0x1f & v5.length)) - 1) & MEM[v25 - (0x1f & v5.length)];
    }
    return _numberOfIndex[varg0].field0, v18, v21, v8, v10;
}

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

function weddingdate() public nonPayable { 
    return _weddingdate;
}

function displaymultisig() public nonPayable { 
    return _displaymultisig;
}

function newOwner() public nonPayable { 
    return _newOwner;
}

function 0x80a() private { 
    v0 = new bytes[](((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1)) {
        return v0, v3;
    } else if (31 < ((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) {
        v4 = v5 = array_3.data;
        do {
            MEM[v1] = STORAGE[v4];
            v4 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) <= v1);
        return v0, v3;
    } else {
        MEM[v2] = array_3.length >> 8 << 8;
        return v0, v3;
    }
}

function 0x8a8() private { 
    v0 = new bytes[](((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1)) {
        return v0, v3;
    } else if (31 < ((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1) {
        v4 = v5 = array_2.data;
        do {
            MEM[v1] = STORAGE[v4];
            v4 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1) <= v1);
        return v0, v3;
    } else {
        MEM[v2] = array_2.length >> 8 << 8;
        return v0, v3;
    }
}

function () public payable { 
    revert();
}

function numberOfIndex() public nonPayable { 
    return _numberOfIndex.length;
}

function writeIndex(uint256 varg0, string varg1, string varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    v0 = new bytes[](varg1.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v1 = new bytes[](varg2.length);
    CALLDATACOPY(v1.data, varg2.data, varg2.length);
    v2 = new struct(5);
    v2.word0 = block.timestamp;
    v2.word1 = v0;
    v2.word2 = v1;
    v2.word3 = varg3;
    v2.word4 = varg4;
    _numberOfIndex = _numberOfIndex.length + 1;
    _numberOfIndex[_numberOfIndex.length + 1 - 1].field0 = v2.word0;
    v3 = v2.word1;
    v4 = v5 = v3.data;
    v6 = v7 = _numberOfIndex[_numberOfIndex.length + 1 - 1].field1.data;
    if (31 < v3.length) {
        _numberOfIndex[_numberOfIndex.length + 1 - 1].field1.length = 1 + (v3.length + v3.length);
        if (v3.length) {
            while (v5 + v3.length > v4) {
                STORAGE[v6] = MEM[v4];
                v4 += 32;
                v6 += 1;
            }
        }
    } else {
        _numberOfIndex[_numberOfIndex.length + 1 - 1].field1.length = v3.length + v3.length | bytes31(MEM[v5]);
    }
    while (v7 + (31 + (((!(0x1 & _numberOfIndex[_numberOfIndex.length + 1 - 1].field1.length) << 8) - 1 & _numberOfIndex[_numberOfIndex.length + 1 - 1].field1.length) >> 1) >> 5) > v6) {
        STORAGE[v6] = 0;
        v6 += 1;
    }
    v8 = v2.word2;
    v9 = v10 = v8.data;
    v11 = v12 = _numberOfIndex[_numberOfIndex.length + 1 - 1].field2.data;
    if (31 < v8.length) {
        _numberOfIndex[_numberOfIndex.length + 1 - 1].field2.length = 1 + (v8.length + v8.length);
        if (v8.length) {
            while (v10 + v8.length > v9) {
                STORAGE[v11] = MEM[v9];
                v9 += 32;
                v11 += 1;
            }
        }
    } else {
        _numberOfIndex[_numberOfIndex.length + 1 - 1].field2.length = v8.length + v8.length | bytes31(MEM[v10]);
    }
    while (v12 + (31 + (((!(0x1 & _numberOfIndex[_numberOfIndex.length + 1 - 1].field2.length) << 8) - 1 & _numberOfIndex[_numberOfIndex.length + 1 - 1].field2.length) >> 1) >> 5) > v11) {
        STORAGE[v11] = 0;
        v11 += 1;
    }
    _numberOfIndex[_numberOfIndex.length + 1 - 1].field3 = v2.word3;
    _numberOfIndex[_numberOfIndex.length + 1 - 1].field4 = v2.word4;
    v13 = new bytes[](v0.length);
    v14 = v15 = 0;
    while (v14 < v0.length) {
        v13[v14] = v0[v14];
        v14 = v14 + 32;
    }
    if (0x1f & v0.length) {
        MEM[v0.length + v13.data - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v0.length + v13.data - (0x1f & v0.length)];
    }
    v16 = new bytes[](v1.length);
    v17 = v18 = 0;
    while (v17 < v1.length) {
        v16[v17] = v1[v17];
        v17 = v17 + 32;
    }
    v19 = v20 = v1.length + v16.data;
    if (0x1f & v1.length) {
        MEM[v20 - (0x1f & v1.length)] = ~(256 ** (32 - (0x1f & v1.length)) - 1) & MEM[v20 - (0x1f & v1.length)];
    }
    emit IndexWritten(block.timestamp, v13, v16, varg3, varg4);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x2168ca06 == uint32(function_selector >> 224)) {
            numberOfIndex();
        } else if (0x3d3057a9 == uint32(function_selector >> 224)) {
            writeIndex(uint256,string,string,uint256,uint256);
        } else if (0x48fdb8c1 == uint32(function_selector >> 224)) {
            partnernames();
        } else if (0x4f0e3333 == uint32(function_selector >> 224)) {
            wedaddress();
        } else if (0x59e33e35 == uint32(function_selector >> 224)) {
            indexdate();
        } else if (0x79ba5097 == uint32(function_selector >> 224)) {
            acceptOwnership();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0xa6f9dae1 == uint32(function_selector >> 224)) {
            changeOwner(address);
        } else if (0xb394c794 == uint32(function_selector >> 224)) {
            indexarray(uint256);
        } else if (0xb61d27f6 == uint32(function_selector >> 224)) {
            execute(address,uint256,bytes);
        } else if (0xbb1d7ffa == uint32(function_selector >> 224)) {
            weddingdate();
        } else if (0xc7fb9aab == uint32(function_selector >> 224)) {
            displaymultisig();
        } else if (0xd4ee1d90 == uint32(function_selector >> 224)) {
            newOwner();
        }
    }
    ();
}
