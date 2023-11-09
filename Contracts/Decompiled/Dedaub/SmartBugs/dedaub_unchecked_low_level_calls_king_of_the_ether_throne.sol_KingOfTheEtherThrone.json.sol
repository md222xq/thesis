// Decompiled by library.dedaub.com
// 2023.11.08 22:09 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 stor_1; // STORAGE[0x1]
uint256[] array_3; // STORAGE[0x3]
uint256 stor_4; // STORAGE[0x4]
uint256 stor_5; // STORAGE[0x5]
struct_285[] _numberOfMonarchs; // STORAGE[0x6]
uint256 _transferOwnership; // STORAGE[0x0] bytes 0 to 19
uint256 stor_2_0_19; // STORAGE[0x2] bytes 0 to 19

struct struct_285 { uint256 field0; uint256[] field1; uint256 field2; uint256 field3; };


function 0x7842c52d(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _numberOfMonarchs.length));
    v0 = new bytes[](((!(0x1 & _numberOfMonarchs[varg0].field1.length) << 8) - 1 & _numberOfMonarchs[varg0].field1.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & _numberOfMonarchs[varg0].field1.length) << 8) - 1 & _numberOfMonarchs[varg0].field1.length) >> 1)) {
        v3 = v4 = _numberOfMonarchs[varg0].field2;
        v5 = v6 = _numberOfMonarchs[varg0].field3;
    } else if (31 < ((!(0x1 & _numberOfMonarchs[varg0].field1.length) << 8) - 1 & _numberOfMonarchs[varg0].field1.length) >> 1) {
        v7 = v8 = _numberOfMonarchs[varg0].field1.data;
        do {
            MEM[v1] = STORAGE[v7];
            v7 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & _numberOfMonarchs[varg0].field1.length) << 8) - 1 & _numberOfMonarchs[varg0].field1.length) >> 1) <= v1);
        v3 = v9 = _numberOfMonarchs[varg0].field2;
        v5 = v10 = _numberOfMonarchs[varg0].field3;
    } else {
        MEM[v2] = _numberOfMonarchs[varg0].field1.length >> 8 << 8;
        v3 = v11 = _numberOfMonarchs[varg0].field2;
        v5 = v12 = _numberOfMonarchs[varg0].field3;
    }
    v13 = new bytes[](v0.length);
    v14 = v15 = 0;
    while (v14 < v0.length) {
        v13[v14] = v0[v14];
        v14 = v14 + 32;
    }
    v16 = v17 = v0.length + v13.data;
    if (0x1f & v0.length) {
        MEM[v17 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v17 - (0x1f & v0.length)];
    }
    return address(_numberOfMonarchs[varg0].field0), v13, v3, v5;
}

function claimThrone(string varg0) public nonPayable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    0x3b5(v0);
}

function numberOfMonarchs() public nonPayable { 
    return _numberOfMonarchs.length;
}

function 0xe40d0ac3() public nonPayable { 
    v0 = new bytes[](((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1)) {
        v3 = v4 = stor_4;
        v5 = v6 = stor_5;
    } else if (31 < ((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) {
        v7 = v8 = array_3.data;
        do {
            MEM[v1] = STORAGE[v7];
            v7 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) <= v1);
        v3 = v9 = stor_4;
        v5 = v10 = stor_5;
    } else {
        MEM[v2] = array_3.length >> 8 << 8;
        v3 = v11 = stor_4;
        v5 = v12 = stor_5;
    }
    v13 = new bytes[](v0.length);
    v14 = v15 = 0;
    while (v14 < v0.length) {
        v13[v14] = v0[v14];
        v14 = v14 + 32;
    }
    v16 = v17 = v0.length + v13.data;
    if (0x1f & v0.length) {
        MEM[v17 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v17 - (0x1f & v0.length)];
    }
    return stor_2_0_19, v13, v3, v5;
}

function transferOwnership(address varg0) public nonPayable { 
    if (msg.sender == _transferOwnership) {
        _transferOwnership = varg0;
    }
}

function 0x3b5(bytes varg0) private { 
    v0 = v1 = msg.value;
    if (v1 >= stor_1) {
        if (v1 > stor_1) {
            v2 = msg.sender.call().value(v1 - stor_1).gas(!(v1 - stor_1) * 2300);
            v0 = v3 = v1 - (v1 - stor_1);
        }
        assert(bool(100));
        if (!bool(stor_2_0_19 == _transferOwnership)) {
            v4 = stor_2_0_19.call().value(v0 - v0 / 100).gas(!(v0 - v0 / 100) * 2300);
        }
        _numberOfMonarchs = _numberOfMonarchs.length + 1;
        _numberOfMonarchs[_numberOfMonarchs.length + 1 - 1].field0 = stor_2_0_19 | bytes12(_numberOfMonarchs[_numberOfMonarchs.length + 1 - 1].field0);
        v5 = v6 = _numberOfMonarchs[_numberOfMonarchs.length + 1 - 1].field1.data;
        if (31 < ((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) {
            _numberOfMonarchs[_numberOfMonarchs.length + 1 - 1].field1.length = 1 + ((((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) + (((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1));
            if (((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) {
                v7 = v8 = array_3.data;
                while (v8 + (31 + (((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) >> 5) > v7) {
                    STORAGE[v5] = STORAGE[v7];
                    v7 += 1;
                    v5 += 1;
                }
            }
        } else {
            _numberOfMonarchs[_numberOfMonarchs.length + 1 - 1].field1.length = array_3.length;
        }
        while (v6 + (31 + (((!(0x1 & _numberOfMonarchs[_numberOfMonarchs.length + 1 - 1].field1.length) << 8) - 1 & _numberOfMonarchs[_numberOfMonarchs.length + 1 - 1].field1.length) >> 1) >> 5) > v5) {
            STORAGE[v5] = 0;
            v5 += 1;
        }
        _numberOfMonarchs[_numberOfMonarchs.length + 1 - 1].field2 = stor_4;
        _numberOfMonarchs[_numberOfMonarchs.length + 1 - 1].field3 = stor_5;
        stor_2_0_19 = msg.sender;
        v9 = MEM[varg0];
        v10 = v11 = 32 + varg0;
        v12 = v13 = array_3.data;
        if (31 < v9) {
            array_3 = 1 + (v9 + v9);
            if (v9) {
                while (v11 + v9 > v10) {
                    STORAGE[v12] = MEM[v10];
                    v10 += 32;
                    v12 += 1;
                }
            }
        } else {
            array_3 = v9 + v9 | bytes31(MEM[v11]);
        }
        while (v13 + (31 + (((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) >> 5) > v12) {
            STORAGE[v12] = 0;
            v12 += 1;
        }
        stor_4 = v0;
        stor_5 = block.timestamp;
        assert(bool(2));
        v14 = stor_1 * 3 >> 1;
        if (v14 >= 0x2386f26fc10000) {
            if (v14 >= 0x16345785d8a0000) {
                if (v14 >= 0xde0b6b3a7640000) {
                    if (v14 >= 0x8ac7230489e80000) {
                        if (v14 >= 0x56bc75e2d63100000) {
                            if (v14 >= 0x3635c9adc5dea00000) {
                                if (v14 >= 0x21e19e0c9bab2400000) {
                                    stor_1 = v14;
                                } else {
                                    assert(bool(0x8ac7230489e80000));
                                    stor_1 = 0x8ac7230489e80000 * (v14 / 0x8ac7230489e80000);
                                }
                            } else {
                                assert(bool(0xde0b6b3a7640000));
                                stor_1 = 0xde0b6b3a7640000 * (v14 / 0xde0b6b3a7640000);
                            }
                        } else {
                            assert(bool(0x16345785d8a0000));
                            stor_1 = 0x16345785d8a0000 * (v14 / 0x16345785d8a0000);
                        }
                    } else {
                        assert(bool(0x2386f26fc10000));
                        stor_1 = 0x2386f26fc10000 * (v14 / 0x2386f26fc10000);
                    }
                } else {
                    assert(bool(0x38d7ea4c68000));
                    stor_1 = 0x38d7ea4c68000 * (v14 / 0x38d7ea4c68000);
                }
            } else {
                assert(bool(0x5af3107a4000));
                stor_1 = 0x5af3107a4000 * (v14 / 0x5af3107a4000);
            }
        } else {
            stor_1 = v14;
        }
        v15 = new uint256[](((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1);
        v16 = v17 = v15.data;
        if (((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) {
            if (31 < ((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) {
                v18 = v19 = array_3.data;
                do {
                    MEM[v16] = STORAGE[v18];
                    v18 += 1;
                    v16 += 32;
                } while (v17 + (((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) <= v16);
            } else {
                MEM[v17] = array_3.length >> 8 << 8;
            }
        }
        emit 0x66dd2fa17295ffce5da0fb78b9a7146bc2c19cfbab9752e98fd016cfde14e0de(stor_2_0_19, v15, stor_1);
    } else {
        v20 = msg.sender.call().value(v1).gas(!v1 * 2300);
    }
    return ;
}

function () public nonPayable { 
    v0 = new bytes[](msg.data.length);
    CALLDATACOPY(v0.data, 0, msg.data.length);
    0x3b5(v0);
}

function sweepCommission(uint256 varg0) public nonPayable { 
    if (msg.sender == _transferOwnership) {
        v0 = _transferOwnership.call().value(varg0).gas(!varg0 * 2300);
    }
}

function 0x64325ddb() public nonPayable { 
    return stor_1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xeb3f5a0 == uint32(function_selector >> 224)) {
            sweepCommission(uint256);
        } else if (0x64325ddb == uint32(function_selector >> 224)) {
            0x64325ddb();
        } else if (0x7842c52d == uint32(function_selector >> 224)) {
            0x7842c52d();
        } else if (0xb66a323c == uint32(function_selector >> 224)) {
            claimThrone(string);
        } else if (0xc8fdc891 == uint32(function_selector >> 224)) {
            numberOfMonarchs();
        } else if (0xe40d0ac3 == uint32(function_selector >> 224)) {
            0xe40d0ac3();
        } else if (0xf2fde38b == uint32(function_selector >> 224)) {
            transferOwnership(address);
        }
    }
    ();
}
