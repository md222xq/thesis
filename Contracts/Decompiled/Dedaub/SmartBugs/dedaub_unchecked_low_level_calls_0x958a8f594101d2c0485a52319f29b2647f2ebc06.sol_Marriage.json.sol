// Decompiled by library.dedaub.com
// 2023.11.08 21:43 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256[] array_2; // STORAGE[0x2]
uint256[] array_3; // STORAGE[0x3]
uint256 _marriageDate; // STORAGE[0x4]
uint256[] _sendMessage; // STORAGE[0x5]
uint256[] array_6; // STORAGE[0x6]
struct_704[] _numberOfMajorEvents; // STORAGE[0x7]
struct_703[] _numberOfMessages; // STORAGE[0x8]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _newOwner; // STORAGE[0x1] bytes 0 to 19

struct struct_704 { uint256 field0; uint256[] field1; uint256[] field2; uint256[] field3; };
struct struct_703 { uint256 field0; uint256[] field1; uint256[] field2; uint256[] field3; uint256 field4; };

// Events
MessageSent(string, string, string, uint256);
MajorEvent(string, string, string);

function messages(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _numberOfMessages.length));
    v0 = new bytes[](((!(0x1 & _numberOfMessages[varg0].field1.length) << 8) - 1 & _numberOfMessages[varg0].field1.length) >> 1);
    v1 = v2 = v0.data;
    if (((!(0x1 & _numberOfMessages[varg0].field1.length) << 8) - 1 & _numberOfMessages[varg0].field1.length) >> 1) {
        if (31 < ((!(0x1 & _numberOfMessages[varg0].field1.length) << 8) - 1 & _numberOfMessages[varg0].field1.length) >> 1) {
            v3 = v4 = _numberOfMessages[varg0].field1.data;
            do {
                MEM[v1] = STORAGE[v3];
                v3 += 1;
                v1 += 32;
            } while (v2 + (((!(0x1 & _numberOfMessages[varg0].field1.length) << 8) - 1 & _numberOfMessages[varg0].field1.length) >> 1) <= v1);
        } else {
            MEM[v2] = _numberOfMessages[varg0].field1.length >> 8 << 8;
        }
    }
    v5 = new bytes[](((!(0x1 & _numberOfMessages[varg0].field2.length) << 8) - 1 & _numberOfMessages[varg0].field2.length) >> 1);
    v6 = v7 = v5.data;
    if (((!(0x1 & _numberOfMessages[varg0].field2.length) << 8) - 1 & _numberOfMessages[varg0].field2.length) >> 1) {
        if (31 < ((!(0x1 & _numberOfMessages[varg0].field2.length) << 8) - 1 & _numberOfMessages[varg0].field2.length) >> 1) {
            v8 = v9 = _numberOfMessages[varg0].field2.data;
            do {
                MEM[v6] = STORAGE[v8];
                v8 += 1;
                v6 += 32;
            } while (v7 + (((!(0x1 & _numberOfMessages[varg0].field2.length) << 8) - 1 & _numberOfMessages[varg0].field2.length) >> 1) <= v6);
        } else {
            MEM[v7] = _numberOfMessages[varg0].field2.length >> 8 << 8;
        }
    }
    v10 = new bytes[](((!(0x1 & _numberOfMessages[varg0].field3.length) << 8) - 1 & _numberOfMessages[varg0].field3.length) >> 1);
    v11 = v12 = v10.data;
    if (!(((!(0x1 & _numberOfMessages[varg0].field3.length) << 8) - 1 & _numberOfMessages[varg0].field3.length) >> 1)) {
        v13 = v14 = _numberOfMessages[varg0].field4;
    } else if (31 < ((!(0x1 & _numberOfMessages[varg0].field3.length) << 8) - 1 & _numberOfMessages[varg0].field3.length) >> 1) {
        v15 = v16 = _numberOfMessages[varg0].field3.data;
        do {
            MEM[v11] = STORAGE[v15];
            v15 += 1;
            v11 += 32;
        } while (v12 + (((!(0x1 & _numberOfMessages[varg0].field3.length) << 8) - 1 & _numberOfMessages[varg0].field3.length) >> 1) <= v11);
        v13 = v17 = _numberOfMessages[varg0].field4;
    } else {
        MEM[v12] = _numberOfMessages[varg0].field3.length >> 8 << 8;
        v13 = v18 = _numberOfMessages[varg0].field4;
    }
    v19 = new bytes[](v0.length);
    v20 = v21 = 0;
    while (v20 < v0.length) {
        v19[v20] = v0[v20];
        v20 = v20 + 32;
    }
    if (0x1f & v0.length) {
        MEM[v0.length + v19.data - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v0.length + v19.data - (0x1f & v0.length)];
    }
    v22 = new bytes[](v5.length);
    v23 = v24 = 0;
    while (v23 < v5.length) {
        v22[v23] = v5[v23];
        v23 = v23 + 32;
    }
    if (0x1f & v5.length) {
        MEM[v5.length + v22.data - (0x1f & v5.length)] = ~(256 ** (32 - (0x1f & v5.length)) - 1) & MEM[v5.length + v22.data - (0x1f & v5.length)];
    }
    v25 = new bytes[](v10.length);
    v26 = v27 = 0;
    while (v26 < v10.length) {
        v25[v26] = v10[v26];
        v26 = v26 + 32;
    }
    v28 = v29 = v10.length + v25.data;
    if (0x1f & v10.length) {
        MEM[v29 - (0x1f & v10.length)] = ~(256 ** (32 - (0x1f & v10.length)) - 1) & MEM[v29 - (0x1f & v10.length)];
    }
    return _numberOfMessages[varg0].field0, v19, v22, v25, v13;
}

function 0x11cb(uint256 varg0) private { 
    assert(bool(varg0 < _numberOfMajorEvents.length));
    v0 = ((!(0x1 & _numberOfMajorEvents[varg0].field1.length) << 8) - 1 & _numberOfMajorEvents[varg0].field1.length) >> 1;
    v1 = new bytes[](v0);
    v2 = v3 = v1.data;
    v4 = ((!(0x1 & _numberOfMajorEvents[varg0].field1.length) << 8) - 1 & _numberOfMajorEvents[varg0].field1.length) >> 1;
    if (v4) {
        if (31 < v4) {
            v5 = v6 = _numberOfMajorEvents[varg0].field1.data;
            do {
                MEM[v2] = STORAGE[v5];
                v5 += 1;
                v2 += 32;
            } while (v3 + v4 <= v2);
        } else {
            MEM[v3] = _numberOfMajorEvents[varg0].field1.length >> 8 << 8;
        }
    }
    v7 = ((!(0x1 & _numberOfMajorEvents[varg0].field2.length) << 8) - 1 & _numberOfMajorEvents[varg0].field2.length) >> 1;
    v8 = new bytes[](v7);
    v9 = v10 = v8.data;
    v11 = ((!(0x1 & _numberOfMajorEvents[varg0].field2.length) << 8) - 1 & _numberOfMajorEvents[varg0].field2.length) >> 1;
    if (v11) {
        if (31 < v11) {
            v12 = v13 = _numberOfMajorEvents[varg0].field2.data;
            do {
                MEM[v9] = STORAGE[v12];
                v12 += 1;
                v9 += 32;
            } while (v10 + v11 <= v9);
        } else {
            MEM[v10] = _numberOfMajorEvents[varg0].field2.length >> 8 << 8;
        }
    }
    v14 = ((!(0x1 & _numberOfMajorEvents[varg0].field3.length) << 8) - 1 & _numberOfMajorEvents[varg0].field3.length) >> 1;
    v15 = new bytes[](v14);
    v16 = v17 = v15.data;
    v18 = ((!(0x1 & _numberOfMajorEvents[varg0].field3.length) << 8) - 1 & _numberOfMajorEvents[varg0].field3.length) >> 1;
    if (!v18) {
        return v15, v8, v1, _numberOfMajorEvents[varg0].field0, v19;
    } else if (31 < v18) {
        v20 = v21 = _numberOfMajorEvents[varg0].field3.data;
        do {
            MEM[v16] = STORAGE[v20];
            v20 += 1;
            v16 += 32;
        } while (v17 + v18 <= v16);
        return v15, v8, v1, _numberOfMajorEvents[varg0].field0, v19;
    } else {
        MEM[v17] = _numberOfMajorEvents[varg0].field3.length >> 8 << 8;
        return v15, v8, v1, _numberOfMajorEvents[varg0].field0, v19;
    }
}

function 0x13d2(bytes varg0, bytes varg1, bytes varg2) private { 
    require(bool(address(msg.sender) == _owner));
    v0 = v1 = v1.data;
    if (((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1) {
        if (31 < ((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1) {
            v0 = v2 = v1 + (((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1);
            v3 = v4 = _sendMessage.data;
            do {
                MEM[v0] = STORAGE[v3];
                v3 += 1;
                v0 += 32;
            } while (v2 <= v0);
        } else {
            MEM[v1] = _sendMessage.length >> 8 << 8;
        }
    }
    require(bool(uint256(keccak256(v1)) == uint256(keccak256('Married'))));
    _numberOfMajorEvents = _numberOfMajorEvents.length + 1;
    _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field0 = block.timestamp;
    v5 = MEM[varg2];
    v6 = v7 = 32 + varg2;
    v8 = v9 = _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field1.data;
    if (31 < v5) {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field1.length = 1 + (v5 + v5);
        if (v5) {
            while (v7 + v5 > v6) {
                STORAGE[v8] = MEM[v6];
                v6 += 32;
                v8 += 1;
            }
        }
    } else {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field1.length = v5 + v5 | bytes31(MEM[v7]);
    }
    while (v9 + (31 + (((!(0x1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field1.length) << 8) - 1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field1.length) >> 1) >> 5) > v8) {
        STORAGE[v8] = 0;
        v8 += 1;
    }
    v10 = MEM[varg1];
    v11 = v12 = 32 + varg1;
    v13 = v14 = _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field2.data;
    if (31 < v10) {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field2.length = 1 + (v10 + v10);
        if (v10) {
            while (v12 + v10 > v11) {
                STORAGE[v13] = MEM[v11];
                v11 += 32;
                v13 += 1;
            }
        }
    } else {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field2.length = v10 + v10 | bytes31(MEM[v12]);
    }
    while (v14 + (31 + (((!(0x1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field2.length) << 8) - 1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field2.length) >> 1) >> 5) > v13) {
        STORAGE[v13] = 0;
        v13 += 1;
    }
    v15 = MEM[varg0];
    v16 = v17 = 32 + varg0;
    v18 = v19 = _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field3.data;
    if (31 < v15) {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field3.length = 1 + (v15 + v15);
        if (v15) {
            while (v17 + v15 > v16) {
                STORAGE[v18] = MEM[v16];
                v16 += 32;
                v18 += 1;
            }
        }
    } else {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field3.length = v15 + v15 | bytes31(MEM[v17]);
    }
    while (v19 + (31 + (((!(0x1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field3.length) << 8) - 1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field3.length) >> 1) >> 5) > v18) {
        STORAGE[v18] = 0;
        v18 += 1;
    }
    v20 = new bytes[](varg2.length);
    v21 = v22 = 0;
    while (v21 < varg2.length) {
        v20[v21] = varg2[v21];
        v21 = v21 + 32;
    }
    if (0x1f & varg2.length) {
        MEM[varg2.length + v20.data - (0x1f & varg2.length)] = ~(256 ** (32 - (0x1f & varg2.length)) - 1) & MEM[varg2.length + v20.data - (0x1f & varg2.length)];
    }
    v23 = new bytes[](varg1.length);
    v24 = v25 = 0;
    while (v24 < varg1.length) {
        v23[v24] = varg1[v24];
        v24 = v24 + 32;
    }
    if (0x1f & varg1.length) {
        MEM[varg1.length + v23.data - (0x1f & varg1.length)] = ~(256 ** (32 - (0x1f & varg1.length)) - 1) & MEM[varg1.length + v23.data - (0x1f & varg1.length)];
    }
    v26 = new bytes[](varg0.length);
    v27 = v28 = 0;
    while (v27 < varg0.length) {
        v26[v27] = varg0[v27];
        v27 = v27 + 32;
    }
    v29 = v30 = varg0.length + v26.data;
    if (0x1f & varg0.length) {
        MEM[v30 - (0x1f & varg0.length)] = ~(256 ** (32 - (0x1f & varg0.length)) - 1) & MEM[v30 - (0x1f & varg0.length)];
    }
    emit MajorEvent(v20, v23, v26);
    return ;
}

function 0x17ca() private { 
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

function 0x188d() private { 
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

function 0x1b69() private { 
    v0 = new bytes[](((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1)) {
        return v0, v3;
    } else if (31 < ((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1) {
        v4 = v5 = array_6.data;
        do {
            MEM[v1] = STORAGE[v4];
            v4 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1) <= v1);
        return v0, v3;
    } else {
        MEM[v2] = array_6.length >> 8 << 8;
        return v0, v3;
    }
}

function 0x1c07() private { 
    v0 = new bytes[](((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1)) {
        return v0, v3;
    } else if (31 < ((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1) {
        v4 = v5 = _sendMessage.data;
        do {
            MEM[v1] = STORAGE[v4];
            v4 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1) <= v1);
        return v0, v3;
    } else {
        MEM[v2] = _sendMessage.length >> 8 << 8;
        return v0, v3;
    }
}

function sendMessage(string varg0, string varg1, string varg2) public payable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v1 = new bytes[](varg1.length);
    CALLDATACOPY(v1.data, varg1.data, varg1.length);
    v2 = new bytes[](varg2.length);
    CALLDATACOPY(v2.data, varg2.data, varg2.length);
    v3 = v4 = v4.data;
    if (((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1) {
        if (31 < ((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1) {
            v3 = v5 = v4 + (((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1);
            v6 = v7 = _sendMessage.data;
            do {
                MEM[v3] = STORAGE[v6];
                v6 += 1;
                v3 += 32;
            } while (v5 <= v3);
        } else {
            MEM[v4] = _sendMessage.length >> 8 << 8;
        }
    }
    require(bool(uint256(keccak256(v4)) == uint256(keccak256('Married'))));
    if (msg.value > 0) {
        v8 = _owner.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v9 = new struct(5);
    v9.word0 = block.timestamp;
    v9.word1 = v0;
    v9.word2 = v1;
    v9.word3 = v2;
    v9.word4 = msg.value;
    _numberOfMessages = _numberOfMessages.length + 1;
    _numberOfMessages[_numberOfMessages.length + 1 - 1].field0 = v9.word0;
    v10 = v9.word1;
    v11 = v12 = v10.data;
    v13 = v14 = _numberOfMessages[_numberOfMessages.length + 1 - 1].field1.data;
    if (31 < v10.length) {
        _numberOfMessages[_numberOfMessages.length + 1 - 1].field1.length = 1 + (v10.length + v10.length);
        if (v10.length) {
            while (v12 + v10.length > v11) {
                STORAGE[v13] = MEM[v11];
                v11 += 32;
                v13 += 1;
            }
        }
    } else {
        _numberOfMessages[_numberOfMessages.length + 1 - 1].field1.length = v10.length + v10.length | bytes31(MEM[v12]);
    }
    while (v14 + (31 + (((!(0x1 & _numberOfMessages[_numberOfMessages.length + 1 - 1].field1.length) << 8) - 1 & _numberOfMessages[_numberOfMessages.length + 1 - 1].field1.length) >> 1) >> 5) > v13) {
        STORAGE[v13] = 0;
        v13 += 1;
    }
    v15 = v9.word2;
    v16 = v17 = v15.data;
    v18 = v19 = _numberOfMessages[_numberOfMessages.length + 1 - 1].field2.data;
    if (31 < v15.length) {
        _numberOfMessages[_numberOfMessages.length + 1 - 1].field2.length = 1 + (v15.length + v15.length);
        if (v15.length) {
            while (v17 + v15.length > v16) {
                STORAGE[v18] = MEM[v16];
                v16 += 32;
                v18 += 1;
            }
        }
    } else {
        _numberOfMessages[_numberOfMessages.length + 1 - 1].field2.length = v15.length + v15.length | bytes31(MEM[v17]);
    }
    while (v19 + (31 + (((!(0x1 & _numberOfMessages[_numberOfMessages.length + 1 - 1].field2.length) << 8) - 1 & _numberOfMessages[_numberOfMessages.length + 1 - 1].field2.length) >> 1) >> 5) > v18) {
        STORAGE[v18] = 0;
        v18 += 1;
    }
    v20 = v9.word3;
    v21 = v22 = v20.data;
    v23 = v24 = _numberOfMessages[_numberOfMessages.length + 1 - 1].field3.data;
    if (31 < v20.length) {
        _numberOfMessages[_numberOfMessages.length + 1 - 1].field3.length = 1 + (v20.length + v20.length);
        if (v20.length) {
            while (v22 + v20.length > v21) {
                STORAGE[v23] = MEM[v21];
                v21 += 32;
                v23 += 1;
            }
        }
    } else {
        _numberOfMessages[_numberOfMessages.length + 1 - 1].field3.length = v20.length + v20.length | bytes31(MEM[v22]);
    }
    while (v24 + (31 + (((!(0x1 & _numberOfMessages[_numberOfMessages.length + 1 - 1].field3.length) << 8) - 1 & _numberOfMessages[_numberOfMessages.length + 1 - 1].field3.length) >> 1) >> 5) > v23) {
        STORAGE[v23] = 0;
        v23 += 1;
    }
    _numberOfMessages[_numberOfMessages.length + 1 - 1].field4 = v9.word4;
    v25 = new bytes[](v0.length);
    v26 = v27 = 0;
    while (v26 < v0.length) {
        v25[v26] = v0[v26];
        v26 = v26 + 32;
    }
    if (0x1f & v0.length) {
        MEM[v0.length + v25.data - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v0.length + v25.data - (0x1f & v0.length)];
    }
    v28 = new bytes[](v1.length);
    v29 = v30 = 0;
    while (v29 < v1.length) {
        v28[v29] = v1[v29];
        v29 = v29 + 32;
    }
    if (0x1f & v1.length) {
        MEM[v1.length + v28.data - (0x1f & v1.length)] = ~(256 ** (32 - (0x1f & v1.length)) - 1) & MEM[v1.length + v28.data - (0x1f & v1.length)];
    }
    v31 = new bytes[](v2.length);
    v32 = v33 = 0;
    while (v32 < v2.length) {
        v31[v32] = v2[v32];
        v32 = v32 + 32;
    }
    v34 = v35 = v2.length + v31.data;
    if (0x1f & v2.length) {
        MEM[v35 - (0x1f & v2.length)] = ~(256 ** (32 - (0x1f & v2.length)) - 1) & MEM[v35 - (0x1f & v2.length)];
    }
    emit MessageSent(v25, v28, v31, msg.value);
}

function marriageDate() public nonPayable { 
    return _marriageDate;
}

function majorEvents(uint256 varg0) public nonPayable { 
    v0, v1, v2, v3, v4 = 0x11cb(varg0);
    v5 = new bytes[](v2.length);
    v6 = v7 = 0;
    while (v6 < v2.length) {
        v5[v6] = v2[v6];
        v6 = v6 + 32;
    }
    if (0x1f & v2.length) {
        MEM[v2.length + v5.data - (0x1f & v2.length)] = ~(256 ** (32 - (0x1f & v2.length)) - 1) & MEM[v2.length + v5.data - (0x1f & v2.length)];
    }
    v8 = new bytes[](v1.length);
    v9 = v10 = 0;
    while (v9 < v1.length) {
        v8[v9] = v1[v9];
        v9 = v9 + 32;
    }
    if (0x1f & v1.length) {
        MEM[v1.length + v8.data - (0x1f & v1.length)] = ~(256 ** (32 - (0x1f & v1.length)) - 1) & MEM[v1.length + v8.data - (0x1f & v1.length)];
    }
    v11 = new bytes[](v0.length);
    v12 = v13 = 0;
    while (v12 < v0.length) {
        v11[v12] = v0[v12];
        v12 = v12 + 32;
    }
    v14 = v15 = v0.length + v11.data;
    if (0x1f & v0.length) {
        MEM[v15 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v15 - (0x1f & v0.length)];
    }
    return v3, v5, v8, v11;
}

function setMajorEvent(string varg0, string varg1, string varg2) public nonPayable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v1 = new bytes[](varg1.length);
    CALLDATACOPY(v1.data, varg1.data, varg1.length);
    v2 = new bytes[](varg2.length);
    CALLDATACOPY(v2.data, varg2.data, varg2.length);
    0x13d2(v2, v1, v0);
}

function acceptOwnership() public nonPayable { 
    if (msg.sender == _newOwner) {
        _owner = _newOwner;
    }
}

function partner2() public nonPayable { 
    v0, v1 = 0x17ca();
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

function owner() public nonPayable { 
    return _owner;
}

function partner1() public nonPayable { 
    v0, v1 = 0x188d();
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

function changeOwner(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    _newOwner = varg0;
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

function setStatus(string varg0, string varg1) public nonPayable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v1 = new bytes[](varg1.length);
    CALLDATACOPY(v1.data, varg1.data, varg1.length);
    require(bool(address(msg.sender) == _owner));
    v2 = v3 = v0.data;
    v4 = v5 = _sendMessage.data;
    if (31 < v0.length) {
        _sendMessage = 1 + (v0.length + v0.length);
        if (v0.length) {
            while (v3 + v0.length > v2) {
                STORAGE[v4] = MEM[v2];
                v2 += 32;
                v4 += 1;
            }
        }
    } else {
        _sendMessage = v0.length + v0.length | bytes31(MEM[v3]);
    }
    while (v5 + (31 + (((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1) >> 5) > v4) {
        STORAGE[v4] = 0;
        v4 += 1;
    }
    0x13d2(v1, v0, 'Changed Status');
}

function vows() public nonPayable { 
    v0, v1 = 0x1b69();
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

function marriageStatus() public nonPayable { 
    v0, v1 = 0x1c07();
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

function newOwner() public nonPayable { 
    return _newOwner;
}

function numberOfMajorEvents() public nonPayable { 
    return _numberOfMajorEvents.length;
}

function createMarriage(string varg0, string varg1, string varg2, string varg3) public nonPayable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v1 = new bytes[](varg1.length);
    CALLDATACOPY(v1.data, varg1.data, varg1.length);
    v2 = new bytes[](varg2.length);
    CALLDATACOPY(v2.data, varg2.data, varg2.length);
    v3 = new bytes[](varg3.length);
    CALLDATACOPY(v3.data, varg3.data, varg3.length);
    require(bool(address(msg.sender) == _owner));
    require(bool(_numberOfMajorEvents.length == 0));
    v4 = v5 = v0.data;
    v6 = v7 = array_2.data;
    if (31 < v0.length) {
        array_2 = 1 + (v0.length + v0.length);
        if (v0.length) {
            while (v5 + v0.length > v4) {
                STORAGE[v6] = MEM[v4];
                v4 += 32;
                v6 += 1;
            }
        }
    } else {
        array_2 = v0.length + v0.length | bytes31(MEM[v5]);
    }
    while (v7 + (31 + (((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1) >> 5) > v6) {
        STORAGE[v6] = 0;
        v6 += 1;
    }
    v8 = v9 = v1.data;
    v10 = v11 = array_3.data;
    if (31 < v1.length) {
        array_3 = 1 + (v1.length + v1.length);
        if (v1.length) {
            while (v9 + v1.length > v8) {
                STORAGE[v10] = MEM[v8];
                v8 += 32;
                v10 += 1;
            }
        }
    } else {
        array_3 = v1.length + v1.length | bytes31(MEM[v9]);
    }
    while (v11 + (31 + (((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) >> 5) > v10) {
        STORAGE[v10] = 0;
        v10 += 1;
    }
    _marriageDate = block.timestamp;
    v12 = v13 = v2.data;
    v14 = v15 = array_6.data;
    if (31 < v2.length) {
        array_6 = 1 + (v2.length + v2.length);
        if (v2.length) {
            while (v13 + v2.length > v12) {
                STORAGE[v14] = MEM[v12];
                v12 += 32;
                v14 += 1;
            }
        }
    } else {
        array_6 = v2.length + v2.length | bytes31(MEM[v13]);
    }
    while (v15 + (31 + (((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1) >> 5) > v14) {
        STORAGE[v14] = 0;
        v14 += 1;
    }
    v16 = v17 = v18.data;
    v19 = v20 = _sendMessage.data;
    if (31 < v18.length) {
        _sendMessage = 15;
        if (v18.length) {
            while (v17 + v18.length > v16) {
                STORAGE[v19] = MEM[v16];
                v16 += 32;
                v19 += 1;
            }
        }
    } else {
        _sendMessage = 0xe | bytes31('Married');
    }
    while (v20 + (31 + (((!(0x1 & _sendMessage.length) << 8) - 1 & _sendMessage.length) >> 1) >> 5) > v19) {
        STORAGE[v19] = 0;
        v19 += 1;
    }
    v21 = new struct(4);
    v21.word0 = block.timestamp;
    v22.word0 = 8;
    v23 = v22.data;
    v22.word1 = 'Marriage';
    v21.word1 = 'Marriage';
    v24 = new bytes[](((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1);
    v25 = v26 = v24.data;
    if (((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1) {
        if (31 < ((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1) {
            v27 = v28 = array_6.data;
            do {
                MEM[v25] = STORAGE[v27];
                v27 += 1;
                v25 += 32;
            } while (v26 + (((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1) <= v25);
        } else {
            MEM[v26] = array_6.length >> 8 << 8;
        }
    }
    v21.word2 = v24;
    v21.word3 = v3;
    _numberOfMajorEvents = _numberOfMajorEvents.length + 1;
    _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field0 = v21.word0;
    v29 = v21.word1;
    v30 = v31 = v29.data;
    v32 = v33 = _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field1.data;
    if (31 < v29.length) {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field1.length = 1 + (v29.length + v29.length);
        if (v29.length) {
            while (v31 + v29.length > v30) {
                STORAGE[v32] = MEM[v30];
                v30 += 32;
                v32 += 1;
            }
        }
    } else {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field1.length = v29.length + v29.length | bytes31(MEM[v31]);
    }
    while (v33 + (31 + (((!(0x1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field1.length) << 8) - 1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field1.length) >> 1) >> 5) > v32) {
        STORAGE[v32] = 0;
        v32 += 1;
    }
    v34 = v21.word2;
    v35 = v36 = v34.data;
    v37 = v38 = _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field2.data;
    if (31 < v34.length) {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field2.length = 1 + (v34.length + v34.length);
        if (v34.length) {
            while (v36 + v34.length > v35) {
                STORAGE[v37] = MEM[v35];
                v35 += 32;
                v37 += 1;
            }
        }
    } else {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field2.length = v34.length + v34.length | bytes31(MEM[v36]);
    }
    while (v38 + (31 + (((!(0x1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field2.length) << 8) - 1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field2.length) >> 1) >> 5) > v37) {
        STORAGE[v37] = 0;
        v37 += 1;
    }
    v39 = v21.word3;
    v40 = v41 = v39.data;
    v42 = v43 = _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field3.data;
    if (31 < v39.length) {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field3.length = 1 + (v39.length + v39.length);
        if (v39.length) {
            while (v41 + v39.length > v40) {
                STORAGE[v42] = MEM[v40];
                v40 += 32;
                v42 += 1;
            }
        }
    } else {
        _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field3.length = v39.length + v39.length | bytes31(MEM[v41]);
    }
    while (v43 + (31 + (((!(0x1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field3.length) << 8) - 1 & _numberOfMajorEvents[_numberOfMajorEvents.length + 1 - 1].field3.length) >> 1) >> 5) > v42) {
        STORAGE[v42] = 0;
        v42 += 1;
    }
    v44 = new uint256[](((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1);
    v45 = v46 = v44.data;
    if (((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1) {
        if (31 < ((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1) {
            v47 = v48 = array_6.data;
            do {
                MEM[v45] = STORAGE[v47];
                v47 += 1;
                v45 += 32;
            } while (v46 + (((!(0x1 & array_6.length) << 8) - 1 & array_6.length) >> 1) <= v45);
        } else {
            MEM[v46] = array_6.length >> 8 << 8;
        }
    }
    v45 = new bytes[](v3.length);
    v49 = v50 = 0;
    while (v49 < v3.length) {
        v45[v49] = v3[v49];
        v49 = v49 + 32;
    }
    v51 = v52 = v3.length + v45.data;
    if (0x1f & v3.length) {
        MEM[v52 - (0x1f & v3.length)] = ~(256 ** (32 - (0x1f & v3.length)) - 1) & MEM[v52 - (0x1f & v3.length)];
    }
    emit MajorEvent('Marrigage', v44, v45);
}

function numberOfMessages() public nonPayable { 
    return _numberOfMessages.length;
}

function () public payable { 
    revert();
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xd80fefd == uint32(function_selector >> 224)) {
            messages(uint256);
        } else if (0xeabeffe == uint32(function_selector >> 224)) {
            sendMessage(string,string,string);
        } else if (0x4d7d8a60 == uint32(function_selector >> 224)) {
            marriageDate();
        } else if (0x58c721ce == uint32(function_selector >> 224)) {
            majorEvents(uint256);
        } else if (0x6753a3c1 == uint32(function_selector >> 224)) {
            setMajorEvent(string,string,string);
        } else if (0x79ba5097 == uint32(function_selector >> 224)) {
            acceptOwnership();
        } else if (0x8b35a244 == uint32(function_selector >> 224)) {
            partner2();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0xa4c7c7b3 == uint32(function_selector >> 224)) {
            partner1();
        } else if (0xa6f9dae1 == uint32(function_selector >> 224)) {
            changeOwner(address);
        } else if (0xb61d27f6 == uint32(function_selector >> 224)) {
            execute(address,uint256,bytes);
        } else if (0xc5590033 == uint32(function_selector >> 224)) {
            setStatus(string,string);
        } else if (0xd081b681 == uint32(function_selector >> 224)) {
            vows();
        } else if (0xd2521034 == uint32(function_selector >> 224)) {
            marriageStatus();
        } else if (0xd4ee1d90 == uint32(function_selector >> 224)) {
            newOwner();
        } else if (0xdc0c1a27 == uint32(function_selector >> 224)) {
            numberOfMajorEvents();
        } else if (0xfadcd861 == uint32(function_selector >> 224)) {
            createMarriage(string,string,string,string);
        } else if (0xfbda68e2 == uint32(function_selector >> 224)) {
            numberOfMessages();
        }
    }
    ();
}
