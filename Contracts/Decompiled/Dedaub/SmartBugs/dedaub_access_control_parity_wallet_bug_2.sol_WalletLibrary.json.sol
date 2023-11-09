// Decompiled by library.dedaub.com
// 2023.11.08 19:35 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _m_required; // STORAGE[0x0]
uint256 _m_numOwners; // STORAGE[0x1]
uint256 _m_dailyLimit; // STORAGE[0x2]
uint256 _m_spentToday; // STORAGE[0x3]
uint256 _m_lastDay; // STORAGE[0x4]
uint256 stor_6; // STORAGE[0x6]
mapping (uint256 => uint256) _isOwner; // STORAGE[0x105]
mapping (uint256 => struct_740) map_106; // STORAGE[0x106]
uint256[] array_107; // STORAGE[0x107]
mapping (uint256 => struct_738) _execute; // STORAGE[0x108]

struct struct_740 { uint256 field0; uint256 field1; uint256 field2; };

// Events
Deposit(address, uint256);
OwnerRemoved(address);
OwnerAdded(address);
MultiTransact(address, bytes32, uint256, address, bytes, address);
SingleTransact(address, uint256, address, bytes, address);
ConfirmationNeeded(bytes32, address, uint256, address, bytes);
Revoke(address, bytes32);
RequirementChanged(uint256);
OwnerChanged(address, address);
Confirmation(address, bytes32);

function () public payable { 
    if (msg.value > 0) {
        emit Deposit(msg.sender, msg.value);
    }
}

function 0x16f1(uint256 varg0, uint256 varg1) private { 
    require(_m_numOwners <= 0);
    _m_numOwners = varg1.length + 1;
    assert(bool(1 < 256));
    stor_6 = msg.sender;
    _isOwner[msg.sender] = 1;
    v0 = v1 = 0;
    while (v0 < varg1.length) {
        assert(bool(v0 < varg1.length));
        assert(bool(2 + v0 < 256));
        STORAGE[2 + v0 + 5] = address(varg1[v0]);
        assert(bool(v0 < varg1.length));
        _isOwner[address(varg1[v0])] = 2 + v0;
        v0 += 1;
    }
    _m_required = varg0;
    return ;
}

function removeOwner(address varg0) public nonPayable { 
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v1 = 0x1a42(keccak256(v0.data));
    if (v1) {
        if (_isOwner[varg0] != 0) {
            if (_m_required <= _m_numOwners - 1) {
                assert(bool(_isOwner[varg0] < 256));
                STORAGE[_isOwner[varg0] + 5] = 0;
                _isOwner[varg0] = 0;
                0x1c4c();
                0x1d78();
                emit OwnerRemoved(varg0);
            }
        }
    }
}

function 0x1a42(uint256 varg0) private { 
    if (_isOwner[msg.sender] != 0) {
        v0 = varg0;
        if (map_106[v0].field0 == 0) {
            map_106[v0].field0 = _m_required;
            map_106[v0].field1 = 0;
            array_107 = 1 + array_107.length;
            if (array_107.length > 1 + array_107.length) {
                v1 = v2 = keccak256(263) + (1 + array_107.length);
                while (keccak256(263) + array_107.length > v1) {
                    STORAGE[v1] = 0;
                    v1 += 1;
                }
            }
            map_106[v0].field2 = array_107.length;
            assert(bool(map_106[v0].field2 < array_107.length));
            array_107[map_106[v0].field2] = varg0;
        }
        if (map_106[v0].field1 & 2 ** _isOwner[msg.sender] == 0) {
            emit Confirmation(msg.sender, varg0);
            if (bool(map_106[v0].field0 > 1)) {
                map_106[v0].field0 = map_106[v0].field0 - 1;
                map_106[v0].field1 = map_106[v0].field1 | 2 ** _isOwner[msg.sender];
            } else {
                assert(bool(map_106[varg0].field2 < array_107.length));
                array_107[map_106[varg0].field2] = 0;
                v3 = varg0;
                map_106[v3].field0 = 0;
                map_106[v3].field1 = 0;
                map_106[v3].field2 = 0;
                return 1;
            }
        }
        return 0;
    } else {
        return 0;
    }
}

function 0x1c4c() private { 
    v0 = v1 = 0;
    while (v0 < array_107.length) {
        assert(bool(v0 < array_107.length));
        _execute[uint256(array_107[v0])].field0 = bytes12(_execute[uint256(uint256(array_107[v0]))].field0);
        _execute[uint256(array_107[v0])].field1 = 0;
        _execute[uint256(array_107[v0])].field2.length = 0;
        if (31 < ((!(0x1 & _execute[uint256(array_107[v0])].field2.length) << 8) - 1 & _execute[uint256(array_107[v0])].field2.length) >> 1) {
            v2 = v3 = _execute[uint256(array_107[v0])].field2.data;
            while (v3 + (31 + (((!(0x1 & _execute[uint256(array_107[v0])].field2.length) << 8) - 1 & _execute[uint256(array_107[v0])].field2.length) >> 1) >> 5) > v2) {
                STORAGE[v2] = 0;
                v2 += 1;
            }
        }
        assert(bool(v0 < array_107.length));
        if (!bool(uint256(array_107[v0]) == 0)) {
            assert(bool(v0 < array_107.length));
            map_106[uint256(array_107[v0])].field0 = 0;
            map_106[uint256(array_107[v0])].field1 = 0;
            map_106[uint256(array_107[v0])].field2 = 0;
        }
        v0 += 1;
    }
    array_107 = 0;
    v4 = v5 = array_107.data;
    while (v5 + array_107.length > v4) {
        STORAGE[v4] = 0;
        v4 += 1;
    }
    return ;
}

function isOwner(address varg0) public nonPayable { 
    return bool(_isOwner[address(address(varg0))] > 0);
}

function 0x1d78() private { 
    v0 = v1 = 1;
    while (v0 < _m_numOwners) {
        while (1) {
            v2 = v3 = v0 < _m_numOwners;
            if (v0 >= _m_numOwners) {
                // Unknown jump to Block 0x1dad. Refer to 3-address code (TAC);
            }
            assert(bool(v0 < 256));
            v2 = v4 = STORAGE[v0 + 5] != 0;
            if (!v2) {
                while (1) {
                    v5 = v6 = _m_numOwners > 1;
                    if (_m_numOwners <= 1) {
                        // Unknown jump to Block 0x1de4. Refer to 3-address code (TAC);
                    }
                    assert(bool(_m_numOwners < 256));
                    v5 = v7 = STORAGE[_m_numOwners + 5] == 0;
                    if (!v5) {
                        v8 = v9 = v0 < _m_numOwners;
                        if (v9) {
                            assert(bool(_m_numOwners < 256));
                            v8 = v10 = STORAGE[_m_numOwners + 5] != 0;
                        }
                        if (v8) {
                            assert(bool(v0 < 256));
                            v8 = v11 = STORAGE[v0 + 5] == 0;
                        }
                        if (v8) {
                            assert(bool(_m_numOwners < 256));
                            assert(bool(v0 < 256));
                            STORAGE[v0 + 5] = STORAGE[_m_numOwners + 5];
                            assert(bool(v0 < 256));
                            _isOwner[STORAGE[v0 + 5]] = v0;
                            assert(bool(_m_numOwners < 256));
                            STORAGE[_m_numOwners + 5] = 0;
                        }
                        continue;
                    } else {
                        _m_numOwners = _m_numOwners - 1;
                        continue;
                    }
                }
            } else {
                v0 += 1;
                continue;
            }
        }
    }
    return ;
}

function m_numOwners() public nonPayable { 
    return _m_numOwners;
}

function m_lastDay() public nonPayable { 
    return _m_lastDay;
}

function resetSpentToday() public nonPayable { 
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v1 = 0x1a42(keccak256(v0.data));
    if (v1) {
        _m_spentToday = 0;
    }
}

function m_spentToday() public nonPayable { 
    return _m_spentToday;
}

function addOwner(address varg0) public nonPayable { 
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v1 = 0x1a42(keccak256(v0.data));
    if (v1) {
        if (_isOwner[varg0] <= 0) {
            0x1c4c();
            if (!bool(_m_numOwners < 250)) {
                0x1d78();
            }
            if (bool(_m_numOwners < 250)) {
                _m_numOwners += 1;
                assert(bool(_m_numOwners < 256));
                STORAGE[_m_numOwners + 5] = varg0;
                _isOwner[varg0] = _m_numOwners;
                emit OwnerAdded(varg0);
            }
        }
    }
}

function m_required() public nonPayable { 
    return _m_required;
}

function confirm(bytes32 varg0) public nonPayable { 
    v0 = 0xa54(uint256(varg0));
    return bool(v0);
}

function initDaylimit(uint256 varg0) public nonPayable { 
    0xfe9(varg0);
}

function setDailyLimit(uint256 varg0) public nonPayable { 
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v1 = 0x1a42(keccak256(v0.data));
    if (v1) {
        _m_dailyLimit = varg0;
    }
}

function execute(address varg0, uint256 varg1, bytes varg2) public nonPayable { 
    v0 = v1 = 36 + varg2;
    v2 = v3 = 0;
    if (_isOwner[msg.sender] > 0) {
        v4 = v5 = varg2.word0 == 0;
        if (v5) {
            v4 = v6 = 0;
            if (_isOwner[msg.sender] > 0) {
                assert(bool(0x15180));
                if (block.timestamp / 0x15180 > _m_lastDay) {
                    _m_spentToday = 0;
                    assert(bool(0x15180));
                    _m_lastDay = block.timestamp / 0x15180;
                }
                v7 = v8 = _m_spentToday + varg1 >= _m_spentToday;
                if (!bool(_m_spentToday + varg1 < _m_spentToday)) {
                    v7 = _m_spentToday + varg1 <= _m_dailyLimit;
                }
                if (!v7) {
                    v4 = v9 = 0;
                } else {
                    _m_spentToday = _m_spentToday + varg1;
                    v4 = 1;
                }
            }
        }
        if (!v4) {
            v4 = v10 = _m_required == 1;
        }
        if (!v4) {
            CALLDATACOPY(v11.data, 0, msg.data.length);
            MEM[v11.data + msg.data.length] = block.number;
            v2 = v12 = keccak256(v11.data);
            v13 = v14 = address(_execute[uint256(uint256(v12))].field0) == 0;
            if (v14) {
                v13 = v15 = _execute[uint256(v12)].field1 == 0;
            }
            if (v13) {
                v13 = ((!(0x1 & _execute[uint256(v12)].field2.length) << 8) - 1 & _execute[uint256(v12)].field2.length) >> 1 == 0;
            }
            if (v13) {
                _execute[uint256(v12)].field0 = varg0 | bytes12(_execute[uint256(uint256(v12))].field0);
                _execute[uint256(v12)].field1 = varg1;
                v16 = v17 = _execute[uint256(v12)].field2.data;
                if (31 < varg2.word0) {
                    _execute[uint256(v12)].field2.length = 1 + (varg2.word0 + varg2.word0);
                    if (varg2.word0) {
                        while (v1 + varg2.word0 > v0) {
                            STORAGE[v16] = msg.data[v0];
                            v0 += 32;
                            v16 += 1;
                        }
                    }
                } else {
                    _execute[uint256(v12)].field2.length = varg2.word0 + varg2.word0 | bytes31(varg2.word1);
                }
                while (v17 + (31 + (((!(0x1 & _execute[uint256(v12)].field2.length) << 8) - 1 & _execute[uint256(v12)].field2.length) >> 1) >> 5) > v16) {
                    STORAGE[v16] = 0;
                    v16 += 1;
                }
            }
            v18 = 0xa54(v12);
            if (!bool(v18)) {
                v19 = new uint256[](varg2.word0);
                CALLDATACOPY(v19.data, v1, varg2.word0);
                emit ConfirmationNeeded(uint256(v12), msg.sender, varg1, varg0, v19);
            }
        } else {
            if (varg0 != 0) {
                CALLDATACOPY(MEM[64], v1, varg2.word0);
                v20 = varg0.call(MEM[(MEM[64]) len (MEM[64] + varg2.word0 - MEM[64])], MEM[(MEM[64]) len 0]).value(varg1).gas(msg.gas);
                require(bool(v20));
            } else {
                v21 = new bytes[](varg2.word0);
                CALLDATACOPY(v21.data, v1, varg2.word0);
                v2 = 0;
            }
            v22 = new uint256[](varg2.word0);
            CALLDATACOPY(v22.data, v1, varg2.word0);
            emit SingleTransact(msg.sender, varg1, varg0, v22, address(v2));
        }
    }
    return uint256(v2);
}

function revoke(bytes32 varg0) public nonPayable { 
    if (_isOwner[msg.sender] != 0) {
        if (map_106[uint256(varg0)].field1 & 2 ** _isOwner[msg.sender] > 0) {
            map_106[uint256(varg0)].field0 += 1;
            map_106[uint256(varg0)].field1 = map_106[uint256(varg0)].field1 - 2 ** _isOwner[msg.sender];
            emit Revoke(msg.sender, uint256(varg0));
        }
    }
}

function changeRequirement(uint256 varg0) public nonPayable { 
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v1 = 0x1a42(keccak256(v0.data));
    if (v1) {
        if (varg0 <= _m_numOwners) {
            _m_required = varg0;
            0x1c4c();
            emit RequirementChanged(varg0);
        }
    }
}

function hasConfirmed(bytes32 varg0, address varg1) public nonPayable { 
    if (_isOwner[varg1] != 0) {
        v0 = v1 = map_106[uint256(varg0)].field1 & 2 ** _isOwner[varg1] != 0;
    } else {
        v0 = v2 = 0;
    }
    return bool(v0);
}

function getOwner(uint256 varg0) public nonPayable { 
    assert(bool(varg0 + 1 < 256));
    return address(STORAGE[varg0 + 1 + 5]);
}

function initMultiowned(address[] varg0, uint256 varg1) public nonPayable { 
    v0 = new uint256[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length << 5);
    0x16f1(varg1, v0);
}

function kill(address varg0) public nonPayable { 
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v1 = 0x1a42(keccak256(v0.data));
    if (!v1) {
        // Unknown jump to Block 0x641. Refer to 3-address code (TAC);
    } else {
        selfdestruct(varg0);
    }
}

function initWallet(address[] varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    v0 = new uint256[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length << 5);
    require(_m_numOwners <= 0);
    0xfe9(varg2);
    0x16f1(varg1, v0);
}

function changeOwner(address varg0, address varg1) public nonPayable { 
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v1 = 0x1a42(keccak256(v0.data));
    if (v1) {
        if (_isOwner[varg1] <= 0) {
            if (_isOwner[varg0] != 0) {
                0x1c4c();
                assert(bool(_isOwner[varg0] < 256));
                STORAGE[_isOwner[varg0] + 5] = varg1;
                _isOwner[varg0] = 0;
                _isOwner[varg1] = _isOwner[varg0];
                emit OwnerChanged(varg0, varg1);
            }
        }
    }
}

function m_dailyLimit() public nonPayable { 
    return _m_dailyLimit;
}

function 0xa54(uint256 varg0) private { 
    v0 = v1 = 0;
    v2 = 0x1a42(varg0);
    if (v2) {
        v3 = v4 = address(_execute[uint256(uint256(varg0))].field0) != 0;
        if (address(_execute[uint256(uint256(varg0))].field0) == 0) {
            v3 = v5 = _execute[varg0].field1 != 0;
        }
        if (!v3) {
            v3 = v6 = ((!(0x1 & _execute[varg0].field2.length) << 8) - 1 & _execute[varg0].field2.length) >> 1 != 0;
        }
        if (v3) {
            if (address(_execute[uint256(uint256(varg0))].field0) != 0) {
                v7 = varg0;
                v8 = v9 = MEM[64];
                if (((!(0x1 & _execute[v7].field2.length) << 8) - 1 & _execute[v7].field2.length) >> 1) {
                    if (31 < ((!(0x1 & _execute[v7].field2.length) << 8) - 1 & _execute[v7].field2.length) >> 1) {
                        v10 = v11 = _execute[v7].field2.data;
                        do {
                            MEM[v8] = STORAGE[v10];
                            v10 += 1;
                            v8 += 32;
                        } while (v9 + (((!(0x1 & _execute[v7].field2.length) << 8) - 1 & _execute[v7].field2.length) >> 1) <= v8);
                    }
                }
                v12 = address(_execute[uint256(uint256(varg0))].field0).call(_execute[v7].field2.length >> 8 << 8).value(_execute[varg0].field1).gas(msg.gas);
                require(bool(v12));
            } else {
                v13 = _execute[varg0].field1;
                v14 = varg0;
                v15 = new bytes[](((!(0x1 & _execute[v14].field2.length) << 8) - 1 & _execute[v14].field2.length) >> 1);
                v16 = v17 = v15.data;
                if (((!(0x1 & _execute[v14].field2.length) << 8) - 1 & _execute[v14].field2.length) >> 1) {
                    if (31 < ((!(0x1 & _execute[v14].field2.length) << 8) - 1 & _execute[v14].field2.length) >> 1) {
                        v18 = v19 = _execute[v14].field2.data;
                        do {
                            MEM[v16] = STORAGE[v18];
                            v18 += 1;
                            v16 += 32;
                        } while (v17 + (((!(0x1 & _execute[v14].field2.length) << 8) - 1 & _execute[v14].field2.length) >> 1) <= v16);
                    } else {
                        MEM[v17] = _execute[v14].field2.length >> 8 << 8;
                    }
                }
                v0 = 0;
            }
            v20 = varg0;
            v21 = new uint256[](((!(0x1 & _execute[v20].field2.length) << 8) - 1 & _execute[v20].field2.length) >> 1);
            v22 = v23 = v21.data;
            if (((!(0x1 & _execute[v20].field2.length) << 8) - 1 & _execute[v20].field2.length) >> 1) {
                if (31 < ((!(0x1 & _execute[v20].field2.length) << 8) - 1 & _execute[v20].field2.length) >> 1) {
                    v24 = v25 = _execute[v20].field2.data;
                    do {
                        MEM[v22] = STORAGE[v24];
                        v24 += 1;
                        v22 += 32;
                    } while (v23 + (((!(0x1 & _execute[v20].field2.length) << 8) - 1 & _execute[v20].field2.length) >> 1) <= v22);
                } else {
                    MEM[v23] = _execute[v20].field2.length >> 8 << 8;
                }
            }
            emit MultiTransact(msg.sender, varg0, _execute[varg0].field1, address(_execute[uint256(uint256(varg0))].field0), v21, address(v0));
            v26 = varg0;
            _execute[v26].field0 = bytes12(_execute[v26].field0);
            _execute[v26].field1 = 0;
            _execute[v26].field2.length = 0;
            if (31 < ((!(0x1 & _execute[v26].field2.length) << 8) - 1 & _execute[v26].field2.length) >> 1) {
                v27 = v28 = _execute[v26].field2.data;
                while (v28 + (31 + (((!(0x1 & _execute[v26].field2.length) << 8) - 1 & _execute[v26].field2.length) >> 1) >> 5) > v27) {
                    STORAGE[v27] = 0;
                    v27 += 1;
                }
            }
            v0 = v29 = 1;
            // Unknown jump to Block 0xfe1. Refer to 3-address code (TAC);
        }
    }
    return v0;
}

function 0xfe9(uint256 varg0) private { 
    require(_m_numOwners <= 0);
    _m_dailyLimit = varg0;
    assert(bool(0x15180));
    _m_lastDay = block.timestamp / 0x15180;
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = uint32(function_selector >> 224);
        if (0x173825d9 == v0) {
            removeOwner(address);
        } else if (0x2f54bf6e == v0) {
            isOwner(address);
        } else if (0x4123cb6b == v0) {
            m_numOwners();
        } else if (0x52375093 == v0) {
            m_lastDay();
        } else if (0x5c52c2f5 == v0) {
            resetSpentToday();
        } else if (0x659010e7 == v0) {
            m_spentToday();
        } else if (0x7065cb48 == v0) {
            addOwner(address);
        } else if (0x746c9171 == v0) {
            m_required();
        } else if (0x797af627 == v0) {
            confirm(bytes32);
        } else if (0x9da5e0eb == v0) {
            initDaylimit(uint256);
        } else if (0xb20d30a9 == v0) {
            setDailyLimit(uint256);
        } else if (0xb61d27f6 == v0) {
            execute(address,uint256,bytes);
        } else if (0xb75c7dc6 == v0) {
            revoke(bytes32);
        } else if (0xba51a6df == v0) {
            changeRequirement(uint256);
        } else if (0xc2cf7326 == v0) {
            hasConfirmed(bytes32,address);
        } else if (0xc41a360a == v0) {
            getOwner(uint256);
        } else if (0xc57c5f60 == v0) {
            initMultiowned(address[],uint256);
        } else if (0xcbf0b0c0 == v0) {
            kill(address);
        } else if (0xe46dcfeb == v0) {
            initWallet(address[],uint256,uint256);
        } else if (0xf00d4b5d == v0) {
            changeOwner(address,address);
        } else if (0xf1736d86 == v0) {
            m_dailyLimit();
        }
    }
    ();
}
