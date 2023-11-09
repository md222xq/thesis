// Decompiled by library.dedaub.com
// 2023.11.08 21:40 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _gAS_PRICE; // STORAGE[0x0]
uint256 _mIN_FEE; // STORAGE[0x1]
uint256 _cANCELLATION_FEE; // STORAGE[0x2]
uint256 _killswitch; // STORAGE[0x3] bytes 0 to 0
uint256 _externalCallFlag; // STORAGE[0x3] bytes 1 to 1
uint256 _requestCnt; // STORAGE[0x3] bytes 2 to 9
uint256 _suspend; // STORAGE[0x4] bytes 0 to 19
uint256 _unrespondedCnt; // STORAGE[0x3] bytes 10 to 17
uint256 _newVersion; // STORAGE[0x40000000000000004]


// Events
Upgrade(address);
DeliverInfo(uint64, uint256, uint256, uint256, uint256, bytes32, uint64, bytes32);
RequestInfo(uint64, uint8, address, uint256, address, bytes32, uint256, bytes32[]);
Reset(uint256, uint256, uint256);

function 0x1092(uint64 varg0) private { 
    require(!_externalCallFlag);
    if (!_killswitch) {
        assert(bool(uint64(varg0) < 0x10000000000000000));
        v0 = STORAGE[1 + ((varg0 << 2) + 4)];
        assert(bool(uint64(varg0) < 0x10000000000000000));
        v1 = v2 = address(STORAGE[0 + ((uint64(varg0) << 2) + 4)]) == msg.sender;
        if (v2) {
            v1 = v3 = v0 >= _cANCELLATION_FEE;
        }
        if (!v1) {
            assert(bool(uint64(varg0) < 0x10000000000000000));
            emit 0xe2984d10e577bb65e890413616fdf852498a063437ca194d43fe257b33cd1ce(varg0, msg.sender, address(STORAGE[0 + ((uint64(varg0) << 2) + 4)]), v0, uint256.max);
            return 0x400000000000000000000000000000000000000000000000000000000000000;
        } else {
            assert(bool(uint64(varg0) < 0x10000000000000000));
            STORAGE[1 + ((varg0 << 2) + 4)] = 1;
            _externalCallFlag = 1;
            v4 = msg.sender.call().value(v0 - _cANCELLATION_FEE).gas(msg.gas);
            require(bool(v4));
            _externalCallFlag = 0;
            assert(bool(uint64(varg0) < 0x10000000000000000));
            assert(bool(uint64(varg0) < 0x10000000000000000));
            emit 0xe2984d10e577bb65e890413616fdf852498a063437ca194d43fe257b33cd1ce(varg0, msg.sender, address(STORAGE[0 + ((uint64(varg0) << 2) + 4)]), STORAGE[1 + ((varg0 << 2) + 4)], 1);
            return 1;
        }
    } else {
        return 0;
    }
}

function () public nonPayable { 
}

function upgrade(address varg0) public nonPayable { 
    assert(bool(0 < 0x10000000000000000));
    v0 = v1 = msg.sender == _suspend;
    if (v1) {
        v0 = _unrespondedCnt == 0;
    }
    if (v0) {
        _newVersion = 0 - varg0;
        _killswitch = 1;
        emit Upgrade(varg0);
    }
}

function 0x14b3(uint256 varg0, uint256 varg1, uint256 varg2, address varg3, uint8 varg4) private { 
    require(!_externalCallFlag);
    if (!_killswitch) {
        if (msg.value >= _mIN_FEE) {
            _requestCnt += 1;
            _unrespondedCnt += 1;
            MEM[v0.data] = varg4 << 248;
            v1 = v2 = 0;
            while (v1 < varg0.length << 5) {
                MEM[1 + v0.data + v1] = MEM[varg0.data + v1];
                v1 = v1 + 32;
            }
            assert(bool(_requestCnt < 0x10000000000000000));
            STORAGE[0 + ((_requestCnt << 2) + 4)] = msg.sender | bytes12(STORAGE[0 + ((_requestCnt << 2) + 4)]);
            assert(bool(_requestCnt < 0x10000000000000000));
            STORAGE[1 + ((_requestCnt << 2) + 4)] = msg.value;
            assert(bool(_requestCnt < 0x10000000000000000));
            STORAGE[2 + ((_requestCnt << 2) + 4)] = varg3 | bytes12(STORAGE[2 + ((_requestCnt << 2) + 4)]);
            assert(bool(_requestCnt < 0x10000000000000000));
            STORAGE[2 + ((_requestCnt << 2) + 4)] = varg2 >> 224 << 160 | ~0xffffffff0000000000000000000000000000000000000000 & STORAGE[2 + ((_requestCnt << 2) + 4)];
            assert(bool(_requestCnt < 0x10000000000000000));
            STORAGE[3 + ((_requestCnt << 2) + 4)] = uint256(keccak256(v0.data));
            v3 = new uint256[](varg0.length);
            v4 = v5 = 0;
            while (v4 < varg0.length << 5) {
                MEM[v3.data + v4] = MEM[varg0.data + v4];
                v4 = v4 + 32;
            }
            emit RequestInfo(_requestCnt, varg4, msg.sender, msg.value, varg3, uint256(keccak256(v0.data)), varg1, v3);
            return _requestCnt;
        } else {
            _externalCallFlag = 1;
            v6 = msg.sender.call().value(msg.value).gas(msg.gas);
            require(bool(v6));
            _externalCallFlag = 0;
            return 0x400000000000000000000000000000000000000000000000000000000000000;
        }
    } else {
        _externalCallFlag = 1;
        v7 = msg.sender.call().value(msg.value).gas(msg.gas);
        require(bool(v7));
        _externalCallFlag = 0;
        return _newVersion;
    }
}

function restart() public nonPayable { 
    assert(bool(0 < 0x10000000000000000));
    v0 = v1 = msg.sender == _suspend;
    if (v1) {
        v0 = _newVersion == 0;
    }
    if (v0) {
        _killswitch = 0;
    }
}

function newVersion() public nonPayable { 
    return _newVersion;
}

function SGX_ADDRESS() public nonPayable { 
    return address(0x18513702ccd928f2a3eb63d900adf03c9cc81593);
}

function DELIVERED_FEE_FLAG() public nonPayable { 
    return 0;
}

function withdraw() public nonPayable { 
    assert(bool(0 < 0x10000000000000000));
    v0 = v1 = msg.sender == _suspend;
    if (v1) {
        v0 = _unrespondedCnt == 0;
    }
    if (v0) {
        assert(bool(0 < 0x10000000000000000));
        v2 = _suspend.call().value((address(this)).balance).gas(msg.gas);
        require(bool(v2));
    }
}

function killswitch() public nonPayable { 
    return _killswitch;
}

function deliver(uint64 varg0, bytes32 varg1, uint64 varg2, bytes32 varg3) public nonPayable { 
    v0 = v1 = msg.sender != address(0x18513702ccd928f2a3eb63d900adf03c9cc81593);
    if (msg.sender == address(0x18513702ccd928f2a3eb63d900adf03c9cc81593)) {
        v0 = varg0 <= 0;
    }
    if (!v0) {
        assert(bool(uint64(uint64(varg0)) < 0x10000000000000000));
        v0 = v2 = address(STORAGE[0 + ((uint64(uint64(varg0)) << 2) + 4)]) == 0;
    }
    if (!v0) {
        assert(bool(uint64(uint64(varg0)) < 0x10000000000000000));
        v0 = v3 = STORAGE[1 + ((varg0 << 2) + 4)] == 0;
    }
    if (!v0) {
        assert(bool(uint64(uint64(varg0)) < 0x10000000000000000));
        assert(bool(uint64(uint64(varg0)) < 0x10000000000000000));
        if (bool(uint256(STORAGE[3 + ((uint64(uint64(varg0)) << 2) + 4)]) == uint256(uint256(varg1)))) {
            if (STORAGE[1 + ((varg0 << 2) + 4)] != 1) {
                assert(bool(uint64(uint64(varg0)) < 0x10000000000000000));
                STORAGE[1 + ((varg0 << 2) + 4)] = 0;
                _unrespondedCnt = _unrespondedCnt - 1;
                if (varg2 >= 2) {
                    _externalCallFlag = 1;
                    assert(bool(uint64(uint64(varg0)) < 0x10000000000000000));
                    v4 = address(STORAGE[0 + ((uint64(uint64(varg0)) << 2) + 4)]).call().value(STORAGE[1 + ((varg0 << 2) + 4)]).gas(2300);
                    _externalCallFlag = 0;
                } else {
                    v5 = address(0x18513702ccd928f2a3eb63d900adf03c9cc81593).call().value(STORAGE[1 + ((varg0 << 2) + 4)]).gas(!STORAGE[1 + ((varg0 << 2) + 4)] * 2300);
                }
                assert(bool(msg.gas));
                v6 = v7 = (STORAGE[1 + ((varg0 << 2) + 4)] - _mIN_FEE) / msg.gas;
                emit DeliverInfo(varg0, STORAGE[1 + ((varg0 << 2) + 4)], msg.gas, msg.gas, v7, uint256(varg1), varg2, uint256(varg3));
                if (v7 > msg.gas - 5000) {
                    v6 = v8 = msg.gas - 5000;
                }
                _externalCallFlag = 1;
                assert(bool(uint64(uint64(varg0)) < 0x10000000000000000));
                assert(bool(uint64(uint64(varg0)) < 0x10000000000000000));
                v9 = address(STORAGE[2 + ((uint64(uint64(varg0)) << 2) + 4)]).call(uint32(STORAGE[2 + ((uint64(uint64(varg0)) << 2) + 4)] >> 160 << 224 >> 224), varg0, varg2, uint256(varg3)).gas(v6);
                _externalCallFlag = 0;
                // Unknown jump to Block 0x2e9. Refer to 3-address code (TAC);
            } else {
                v10 = address(0x18513702ccd928f2a3eb63d900adf03c9cc81593).call().value(_cANCELLATION_FEE).gas(!_cANCELLATION_FEE * 2300);
                assert(bool(uint64(uint64(varg0)) < 0x10000000000000000));
                STORAGE[1 + ((varg0 << 2) + 4)] = 0;
                _unrespondedCnt = _unrespondedCnt - 1;
                // Unknown jump to Block 0x2e9. Refer to 3-address code (TAC);
            }
        } else {
            // Unknown jump to Block 0x2e9. Refer to 3-address code (TAC);
        }
    }
}

function cancel(uint64 varg0) public nonPayable { 
    v0 = 0x1092(varg0);
    return v0;
}

function request(uint8 varg0, address varg1, bytes4 varg2, uint256 varg3, bytes32[] varg4) public payable { 
    v0 = new uint256[](varg4.length);
    CALLDATACOPY(v0.data, varg4.data, varg4.length << 5);
    v1 = 0x14b3(v0, varg3, varg2, varg1, varg0);
    return v1;
}

function FAIL_FLAG() public nonPayable { 
    return 0x400000000000000000000000000000000000000000000000000000000000000;
}

function requestCnt() public nonPayable { 
    return _requestCnt;
}

function MIN_FEE() public nonPayable { 
    return _mIN_FEE;
}

function CANCELLATION_FEE() public nonPayable { 
    return _cANCELLATION_FEE;
}

function requests(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < 0x10000000000000000));
    return address(STORAGE[0 + ((varg0 << 2) + 4)]), STORAGE[1 + ((varg0 << 2) + 4)], address(STORAGE[2 + ((varg0 << 2) + 4)]), bytes4(STORAGE[2 + ((varg0 << 2) + 4)] >> 160 << 224), uint256(STORAGE[3 + ((varg0 << 2) + 4)]);
}

function GAS_PRICE() public nonPayable { 
    return _gAS_PRICE;
}

function unrespondedCnt() public nonPayable { 
    return _unrespondedCnt;
}

function reset(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    assert(bool(0 < 0x10000000000000000));
    v0 = v1 = msg.sender == _suspend;
    if (v1) {
        v0 = _unrespondedCnt == 0;
    }
    if (v0) {
        _gAS_PRICE = varg0;
        _mIN_FEE = varg0 * varg1;
        _cANCELLATION_FEE = varg0 * varg2;
        emit Reset(_gAS_PRICE, _mIN_FEE, _cANCELLATION_FEE);
    }
}

function CANCELLED_FEE_FLAG() public nonPayable { 
    return 1;
}

function SUCCESS_FLAG() public nonPayable { 
    return 1;
}

function suspend() public nonPayable { 
    assert(bool(0 < 0x10000000000000000));
    if (msg.sender == _suspend) {
        _killswitch = 1;
    }
}

function externalCallFlag() public nonPayable { 
    return _externalCallFlag;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = uint32(function_selector >> 224);
        if (0x900f010 == v0) {
            upgrade(address);
        } else if (0x1ef3755d == v0) {
            restart();
        } else if (0x29cdda23 == v0) {
            newVersion();
        } else if (0x2e28b3f5 == v0) {
            SGX_ADDRESS();
        } else if (0x39c2697c == v0) {
            DELIVERED_FEE_FLAG();
        } else if (0x3ccfd60b == v0) {
            withdraw();
        } else if (0x42dd96f7 == v0) {
            killswitch();
        } else if (0x487a6e32 == v0) {
            deliver(uint64,bytes32,uint64,bytes32);
        } else if (0x4c125e79 == v0) {
            cancel(uint64);
        } else if (0x58487bee == v0) {
            request(uint8,address,bytes4,uint256,bytes32[]);
        } else if (0x66a39350 == v0) {
            FAIL_FLAG();
        } else if (0x6ba7ffd5 == v0) {
            requestCnt();
        } else if (0x76c7a3c7 == v0) {
            MIN_FEE();
        } else if (0x78b17ccf == v0) {
            CANCELLATION_FEE();
        } else if (0x81d12c58 == v0) {
            requests(uint256);
        } else if (0x8b0ee5a3 == v0) {
            GAS_PRICE();
        } else if (0x908f68ee == v0) {
            unrespondedCnt();
        } else if (0xa6801cbd == v0) {
            reset(uint256,uint256,uint256);
        } else if (0xbe0da251 == v0) {
            CANCELLED_FEE_FLAG();
        } else if (0xd073ca3d == v0) {
            SUCCESS_FLAG();
        } else if (0xe6400bbe == v0) {
            suspend();
        } else if (0xfc9bfaa6 == v0) {
            externalCallFlag();
        }
    }
    ();
}
