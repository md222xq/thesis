// Decompiled by library.dedaub.com
// 2023.11.08 20:36 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
struct_187[] _history; // STORAGE[0x0]
uint256[] array_2; // STORAGE[0x2]
uint256 stor_3; // STORAGE[0x3]
uint256 stor_4; // STORAGE[0x4]
uint256 stor_1_0_19; // STORAGE[0x1] bytes 0 to 19

struct struct_187 { uint256 field0; uint256[] field1; uint256 field2; uint256 field3; };


function () public payable { 
    revert();
}

function AddMessage(address varg0, uint256 varg1, string varg2) public nonPayable { 
    v0 = new bytes[](varg2.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    stor_1_0_19 = varg0;
    stor_4 = block.timestamp;
    stor_3 = varg1;
    v1 = v2 = v0.data;
    v3 = v4 = array_2.data;
    if (31 < v0.length) {
        array_2 = 1 + (v0.length + v0.length);
        if (v0.length) {
            while (v2 + v0.length > v1) {
                STORAGE[v3] = MEM[v1];
                v1 += 32;
                v3 += 1;
            }
        }
    } else {
        array_2 = v0.length + v0.length | bytes31(MEM[v2]);
    }
    while (v4 + (31 + (((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1) >> 5) > v3) {
        STORAGE[v3] = 0;
        v3 += 1;
    }
    _history = _history.length + 1;
    _history[_history.length + 1 - 1].field0 = stor_1_0_19 | bytes12(_history[_history.length + 1 - 1].field0);
    v5 = v6 = _history[_history.length + 1 - 1].field1.data;
    if (31 < ((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1) {
        _history[_history.length + 1 - 1].field1.length = 1 + ((((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1) + (((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1));
        if (((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1) {
            v7 = v8 = array_2.data;
            while (v8 + (31 + (((!(0x1 & array_2.length) << 8) - 1 & array_2.length) >> 1) >> 5) > v7) {
                STORAGE[v5] = STORAGE[v7];
                v7 += 1;
                v5 += 1;
            }
        }
    } else {
        _history[_history.length + 1 - 1].field1.length = array_2.length;
    }
    while (v6 + (31 + (((!(0x1 & _history[_history.length + 1 - 1].field1.length) << 8) - 1 & _history[_history.length + 1 - 1].field1.length) >> 1) >> 5) > v5) {
        STORAGE[v5] = 0;
        v5 += 1;
    }
    _history[_history.length + 1 - 1].field2 = stor_3;
    _history[_history.length + 1 - 1].field3 = stor_4;
}

function History(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _history.length));
    v0 = new bytes[](((!(0x1 & _history[varg0].field1.length) << 8) - 1 & _history[varg0].field1.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & _history[varg0].field1.length) << 8) - 1 & _history[varg0].field1.length) >> 1)) {
        v3 = v4 = _history[varg0].field2;
        v5 = v6 = _history[varg0].field3;
    } else if (31 < ((!(0x1 & _history[varg0].field1.length) << 8) - 1 & _history[varg0].field1.length) >> 1) {
        v7 = v8 = _history[varg0].field1.data;
        do {
            MEM[v1] = STORAGE[v7];
            v7 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & _history[varg0].field1.length) << 8) - 1 & _history[varg0].field1.length) >> 1) <= v1);
        v3 = v9 = _history[varg0].field2;
        v5 = v10 = _history[varg0].field3;
    } else {
        MEM[v2] = _history[varg0].field1.length >> 8 << 8;
        v3 = v11 = _history[varg0].field2;
        v5 = v12 = _history[varg0].field3;
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
    return address(_history[varg0].field0), v13, v3, v5;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x4c2f04a4 == uint32(function_selector >> 224)) {
            AddMessage(address,uint256,string);
        } else if (0xa21f0368 == uint32(function_selector >> 224)) {
            History(uint256);
        }
    }
    ();
}
