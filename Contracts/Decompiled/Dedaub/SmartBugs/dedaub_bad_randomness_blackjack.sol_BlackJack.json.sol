// Decompiled by library.dedaub.com
// 2023.11.08 16:11 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _minBet; // STORAGE[0x0]
uint256 _maxBet; // STORAGE[0x1]
mapping (uint256 => struct_877) _games; // STORAGE[0x3]
uint256 stor_2_0_0; // STORAGE[0x2] bytes 0 to 0


// Events
Deal(bool, uint8);
GameStatus(uint8, uint8, uint8, uint8);
Log(uint8);

function 0x1266() private { 
    require(address(_games[address(address(msg.sender))].field0) != 0);
    assert(1 <= 3);
    assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
    if (uint8(_games[address(address(msg.sender))].field4) != 1) {
        assert(3 <= 3);
        assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
        if (uint8(_games[address(address(msg.sender))].field4) != 3) {
            assert(2 <= 3);
            assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
            if (uint8(_games[address(address(msg.sender))].field4) != 2) {
                return 0;
            } else {
                return 3;
            }
        } else {
            return 2;
        }
    } else {
        return 1;
    }
}

function getHouseCard(uint8 varg0) public nonPayable { 
    v0 = v1 = address(_games[address(address(msg.sender))].field0) == 0;
    if (address(_games[address(address(msg.sender))].field0) != 0) {
        assert(0 <= 3);
        assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
        v0 = v2 = uint8(_games[address(address(msg.sender))].field4) != 0;
    }
    require(!v0);
    v3 = v4 = varg0 < 0;
    if (varg0 >= 0) {
        v3 = v5 = varg0 > _games[msg.sender].field2.length;
    }
    require(!v3);
    assert(bool(uint8(uint8(varg0)) < _games[address(address(msg.sender))].field2.length));
    return uint8(_games[address(address(msg.sender))].field2[uint8(uint8(varg0)) >> 5] / 256 ** (uint8(uint8(varg0)) % 32));
}

function getHouseCardsNumber() public nonPayable { 
    v0 = v1 = address(_games[address(address(msg.sender))].field0) == 0;
    if (address(_games[address(address(msg.sender))].field0) != 0) {
        assert(0 <= 3);
        assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
        v0 = v2 = uint8(_games[address(address(msg.sender))].field4) != 0;
    }
    require(!v0);
    return _games[msg.sender].field2.length;
}

function minBet() public nonPayable { 
    return _minBet;
}

function getGameState() public nonPayable { 
    v0 = 0x1266();
    return uint8(v0);
}

function 0x2599(uint256 varg0) private { 
    v0 = v1 = 0;
    v2 = v3 = 0;
    v4 = v5 = 0;
    v6 = v7 = 0;
    while (v6 < varg0.length) {
        assert(bool(v6 < varg0.length));
        assert(bool(4));
        v8 = v9 = uint8(uint8(varg0[v6]) >> 2) == 1;
        if (v9) {
            v8 = !v4;
        }
        if (!v8) {
            v10 = 0x2641(0, varg0[v6]);
            v2 = v2 + v10;
        } else {
            v11 = 0x2641(1, varg0[v6]);
            v2 = v2 + v11;
            v4 = 1;
        }
        v12 = 0x2641(0, varg0[v6]);
        v0 = v0 + v12;
        v6 += 1;
    }
    return v2, v0;
}

function 0x2641(uint256 varg0, uint8 varg1) private { 
    assert(bool(4));
    v0 = varg1 >> 2;
    v1 = v2 = uint8(v0) == 0;
    if (uint8(v0) != 0) {
        v1 = v3 = uint8(v0) == 11;
    }
    if (!v1) {
        v1 = v4 = uint8(v0) == 12;
    }
    if (!v1) {
        varg0 = v5 = uint8(v0) == 1;
        if (!varg0) {
            return v0;
        } else {
            return 11;
        }
    } else {
        return 10;
    }
}

function stand() public nonPayable { 
    v0 = v1 = address(_games[address(address(msg.sender))].field0) == 0;
    if (address(_games[address(address(msg.sender))].field0) != 0) {
        assert(0 <= 3);
        assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
        v0 = uint8(_games[address(address(msg.sender))].field4) != 0;
    }
    require(!v0);
    v2 = new uint256[](_games[msg.sender].field2.length);
    v3 = v4 = v2.data;
    if (_games[msg.sender].field2.length) {
        v5 = v6 = _games[msg.sender].field2.data;
        v7 = v8 = 0;
        do {
            MEM[v3] = uint8(STORAGE[v5] / 256 ** v7);
            v3 += 32;
            v5 += 1 + v7 >> 5;
            v7 = (1 + v7) * (1 - (1 + v7 >> 5));
        } while (v4 + (_games[msg.sender].field2.length << 5) <= v3);
    }
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (v12 < v2.length) {
        assert(bool(v12 < v2.length));
        assert(bool(4));
        v13 = uint8(uint8(v2[v12]) >> 2) == 1;
        if (v13) {
            v13 = v14 = !v11;
        }
        if (!v13) {
            v15 = 0x2641(0, v2[v12]);
            v10 = v10 + v15;
        } else {
            v16 = 0x2641(1, v2[v12]);
            v10 = v10 + v16;
            v11 = v17 = 1;
        }
        v18 = 0x2641(0, v2[v12]);
        v9 = v9 + v18;
        v12 += 1;
    }
    while (uint8(v10) < 17) {
        assert(bool(52));
        v19 = keccak256(uint256(block.blockhash(block.number)), msg.sender, uint8(_games[address(address(msg.sender))].field4 >> 8), block.timestamp) % 52;
        _games[msg.sender].field2.length = _games[msg.sender].field2.length + 1;
        _games[msg.sender].field2[_games[msg.sender].field2.length + 1 - 1 >> 5] = uint8(v19) * 256 ** ((_games[msg.sender].field2.length + 1 - 1) % 32) | ~(uint8.max * 256 ** ((_games[msg.sender].field2.length + 1 - 1) % 32)) & _games[msg.sender].field2[_games[msg.sender].field2.length + 1 - 1 >> 5];
        _games[msg.sender].field4 = uint8(uint8(_games[address(address(msg.sender))].field4 >> 8) + 1) << 8 | ~0xff00 & _games[msg.sender].field4;
        v20 = 0x2641(1, v19);
        v10 = v10 + v20;
        emit Deal(bool(0), uint8(v19));
    }
    v21 = new struct(6);
    v21.word0 = address(_games[address(address(msg.sender))].field0);
    v21.word1 = _games[msg.sender].field1;
    v22 = new uint256[](_games[msg.sender].field2.length);
    v23 = v24 = v22.data;
    if (_games[msg.sender].field2.length) {
        v25 = v26 = _games[msg.sender].field2.data;
        v27 = v28 = 0;
        do {
            MEM[v23] = uint8(STORAGE[v25] / 256 ** v27);
            v23 += 32;
            v25 += 1 + v27 >> 5;
            v27 = (1 + v27) * (1 - (1 + v27 >> 5));
        } while (v24 + (_games[msg.sender].field2.length << 5) <= v23);
    }
    v21.word2 = v22;
    v29 = new uint256[](_games[msg.sender].field3.length);
    v30 = v31 = v29.data;
    if (_games[msg.sender].field3.length) {
        v32 = v33 = _games[msg.sender].field3.data;
        v34 = v35 = 0;
        do {
            MEM[v30] = uint8(STORAGE[v32] / 256 ** v34);
            v30 += 32;
            v32 += 1 + v34 >> 5;
            v34 = (1 + v34) * (1 - (1 + v34 >> 5));
        } while (v31 + (_games[msg.sender].field3.length << 5) <= v30);
    }
    v21.word3 = v29;
    assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
    assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
    v21.word4 = uint8(_games[address(address(msg.sender))].field4);
    v21.word5 = uint8(_games[address(address(msg.sender))].field4 >> 8);
    v36 = v21.word2;
    v37, v38 = 0x2599(v21.word2);
    v39 = v21.word3;
    v40, v41 = 0x2599(v21.word3);
    emit GameStatus(uint8(v38), uint8(v37), uint8(v41), uint8(v40));
    v42 = v43 = uint8(v37) == stor_2_0_0;
    if (uint8(v37) != stor_2_0_0) {
        v42 = uint8(v38) == stor_2_0_0;
    }
    if (!v42) {
        v44 = v45 = uint8(v41) == stor_2_0_0;
        if (uint8(v41) != stor_2_0_0) {
            v44 = uint8(v40) == stor_2_0_0;
        }
        if (!v44) {
            if (uint8(v41) <= stor_2_0_0) {
                if (bool(1)) {
                    if (uint8(v40) <= stor_2_0_0) {
                        v46 = stor_2_0_0 - v40;
                    } else if (uint8(v41) <= stor_2_0_0) {
                        v46 = v47 = stor_2_0_0 - v41;
                    } else {
                        assert(3 <= 3);
                        _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
                    }
                    if (uint8(v37) <= stor_2_0_0) {
                        v48 = stor_2_0_0 - v37;
                    } else if (uint8(v38) <= stor_2_0_0) {
                        v48 = v49 = stor_2_0_0 - v38;
                    } else {
                        v50 = msg.sender.call().value(v21.word1 << 1).gas(!(v21.word1 << 1) * 2300);
                        require(bool(v50));
                        assert(1 <= 3);
                        _games[msg.sender].field4 = 0x1 | bytes31(_games[address(address(msg.sender))].field4);
                    }
                    if (uint8(v48) != uint8(v46)) {
                        if (uint8(v48) <= uint8(v46)) {
                            assert(3 <= 3);
                            _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
                        } else {
                            v51 = msg.sender.call().value(v21.word1 << 1).gas(!(v21.word1 << 1) * 2300);
                            require(bool(v51));
                            assert(1 <= 3);
                            _games[msg.sender].field4 = 0x1 | bytes31(_games[address(address(msg.sender))].field4);
                        }
                    } else {
                        v52 = msg.sender.call().value(v21.word1).gas(!v21.word1 * 2300);
                        require(bool(v52));
                        assert(2 <= 3);
                        _games[msg.sender].field4 = 0x2 | bytes31(_games[address(address(msg.sender))].field4);
                    }
                }
            } else {
                emit Log(uint8(1));
                assert(3 <= 3);
                _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
            }
        } else {
            v53 = v21.word3;
            v54 = v55 = v53.length == 2;
            if (v55) {
                v56 = v57 = 8121;
                v58 = v21.word3;
                assert(bool(0 < v58.length));
                v59 = v58[0];
                while (!bool(4)) {
                    v54 = uint8(uint8(v59) >> 2) == 10;
                    // Unknown jump to Block {'0x1fb90x13e3B0x286', '0x1fe40x13e3B0x286'}. Refer to 3-address code (TAC);
                    if (uint8(uint8(v59) >> 2) != 10) {
                        v56 = v60 = 8164;
                        v61 = v21.word3;
                        assert(bool(1 < v61.length));
                        v59 = v62 = v61[1];
                    }
                }
                throw();
            }
            if (!v54) {
                v63 = msg.sender.call().value(v21.word1 << 1).gas(!(v21.word1 << 1) * 2300);
                require(bool(v63));
            } else {
                assert(bool(2));
                v64 = msg.sender.call().value(v21.word1 * 5 >> 1).gas(!(v21.word1 * 5 >> 1) * 2300);
                require(bool(v64));
            }
            assert(1 <= 3);
            _games[msg.sender].field4 = 0x1 | bytes31(_games[address(address(msg.sender))].field4);
        }
    } else {
        v65 = v66 = uint8(v41) == stor_2_0_0;
        if (uint8(v41) != stor_2_0_0) {
            v65 = uint8(v40) == stor_2_0_0;
        }
        if (!v65) {
            assert(3 <= 3);
            _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
        } else {
            v67 = msg.sender.call().value(v21.word1).gas(!v21.word1 * 2300);
            require(bool(v67));
            assert(2 <= 3);
            _games[msg.sender].field4 = 0x2 | bytes31(_games[address(address(msg.sender))].field4);
        }
    }
}

function getPlayerCard(uint8 varg0) public nonPayable { 
    v0 = v1 = address(_games[address(address(msg.sender))].field0) == 0;
    if (address(_games[address(address(msg.sender))].field0) != 0) {
        assert(0 <= 3);
        assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
        v0 = v2 = uint8(_games[address(address(msg.sender))].field4) != 0;
    }
    require(!v0);
    v3 = v4 = varg0 < 0;
    if (varg0 >= 0) {
        v3 = v5 = varg0 > _games[msg.sender].field3.length;
    }
    require(!v3);
    assert(bool(uint8(uint8(varg0)) < _games[address(address(msg.sender))].field3.length));
    return uint8(_games[address(address(msg.sender))].field3[uint8(uint8(varg0)) >> 5] / 256 ** (uint8(uint8(varg0)) % 32));
}

function getPlayerCardsNumber() public nonPayable { 
    v0 = v1 = address(_games[address(address(msg.sender))].field0) == 0;
    if (address(_games[address(address(msg.sender))].field0) != 0) {
        assert(0 <= 3);
        assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
        v0 = v2 = uint8(_games[address(address(msg.sender))].field4) != 0;
    }
    require(!v0);
    return _games[msg.sender].field3.length;
}

function () public payable { 
}

function hit() public nonPayable { 
    v0 = v1 = address(_games[address(address(msg.sender))].field0) == 0;
    if (address(_games[address(address(msg.sender))].field0) != 0) {
        assert(0 <= 3);
        assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
        v0 = uint8(_games[address(address(msg.sender))].field4) != 0;
    }
    require(!v0);
    assert(bool(52));
    _games[msg.sender].field3.length = _games[msg.sender].field3.length + 1;
    _games[msg.sender].field3[_games[msg.sender].field3.length + 1 - 1 >> 5] = uint8(keccak256(uint256(uint256(block.blockhash(block.number))), address(address(msg.sender)), uint8(uint8(uint8(_games[address(address(msg.sender))].field4 >> 8))), block.timestamp) % 52) * 256 ** ((_games[msg.sender].field3.length + 1 - 1) % 32) | ~(uint8.max * 256 ** ((_games[msg.sender].field3.length + 1 - 1) % 32)) & _games[msg.sender].field3[_games[msg.sender].field3.length + 1 - 1 >> 5];
    _games[msg.sender].field4 = uint8(uint8(_games[address(address(msg.sender))].field4 >> 8) + 1) << 8 | ~0xff00 & _games[msg.sender].field4;
    assert(bool(_games[address(address(msg.sender))].field3.length - 1 < _games[address(address(msg.sender))].field3.length));
    emit Deal(bool(1), uint8(_games[address(address(msg.sender))].field3[_games[address(address(msg.sender))].field3.length - 1 >> 5] / 256 ** ((_games[address(address(msg.sender))].field3.length - 1) % 32)));
    v2 = new struct(6);
    v2.word0 = address(_games[address(address(msg.sender))].field0);
    v2.word1 = _games[msg.sender].field1;
    v3 = new uint256[](_games[msg.sender].field2.length);
    v4 = v5 = v3.data;
    if (_games[msg.sender].field2.length) {
        v6 = v7 = _games[msg.sender].field2.data;
        v8 = v9 = 0;
        do {
            MEM[v4] = uint8(STORAGE[v6] / 256 ** v8);
            v4 += 32;
            v6 += 1 + v8 >> 5;
            v8 = (1 + v8) * (1 - (1 + v8 >> 5));
        } while (v5 + (_games[msg.sender].field2.length << 5) <= v4);
    }
    v2.word2 = v3;
    v10 = new uint256[](_games[msg.sender].field3.length);
    v11 = v12 = v10.data;
    if (_games[msg.sender].field3.length) {
        v13 = v14 = _games[msg.sender].field3.data;
        v15 = v16 = 0;
        do {
            MEM[v11] = uint8(STORAGE[v13] / 256 ** v15);
            v11 += 32;
            v13 += 1 + v15 >> 5;
            v15 = (1 + v15) * (1 - (1 + v15 >> 5));
        } while (v12 + (_games[msg.sender].field3.length << 5) <= v11);
    }
    v2.word3 = v10;
    assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
    assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
    v2.word4 = uint8(_games[address(address(msg.sender))].field4);
    v2.word5 = uint8(_games[address(address(msg.sender))].field4 >> 8);
    v17 = v2.word2;
    v18, v19 = 0x2599(v2.word2);
    v20 = v2.word3;
    v21, v22 = 0x2599(v2.word3);
    emit GameStatus(uint8(v19), uint8(v18), uint8(v22), uint8(v21));
    v23 = v24 = uint8(v18) == stor_2_0_0;
    if (uint8(v18) != stor_2_0_0) {
        v23 = uint8(v19) == stor_2_0_0;
    }
    if (!v23) {
        v25 = v26 = uint8(v22) == stor_2_0_0;
        if (uint8(v22) != stor_2_0_0) {
            v25 = uint8(v21) == stor_2_0_0;
        }
        if (!v25) {
            if (uint8(v22) <= stor_2_0_0) {
                if (bool(0)) {
                    if (uint8(v21) <= stor_2_0_0) {
                        v27 = stor_2_0_0 - v21;
                    } else if (uint8(v22) <= stor_2_0_0) {
                        v27 = v28 = stor_2_0_0 - v22;
                    } else {
                        assert(3 <= 3);
                        _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
                    }
                    if (uint8(v18) <= stor_2_0_0) {
                        v29 = stor_2_0_0 - v18;
                    } else if (uint8(v19) <= stor_2_0_0) {
                        v29 = v30 = stor_2_0_0 - v19;
                    } else {
                        v31 = msg.sender.call().value(v2.word1 << 1).gas(!(v2.word1 << 1) * 2300);
                        require(bool(v31));
                        assert(1 <= 3);
                        _games[msg.sender].field4 = 0x1 | bytes31(_games[address(address(msg.sender))].field4);
                    }
                    if (uint8(v29) != uint8(v27)) {
                        if (uint8(v29) <= uint8(v27)) {
                            assert(3 <= 3);
                            _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
                        } else {
                            v32 = msg.sender.call().value(v2.word1 << 1).gas(!(v2.word1 << 1) * 2300);
                            require(bool(v32));
                            assert(1 <= 3);
                            _games[msg.sender].field4 = 0x1 | bytes31(_games[address(address(msg.sender))].field4);
                        }
                    } else {
                        v33 = msg.sender.call().value(v2.word1).gas(!v2.word1 * 2300);
                        require(bool(v33));
                        assert(2 <= 3);
                        _games[msg.sender].field4 = 0x2 | bytes31(_games[address(address(msg.sender))].field4);
                    }
                }
            } else {
                emit Log(uint8(1));
                assert(3 <= 3);
                _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
            }
        } else {
            v34 = v2.word3;
            v35 = v36 = v34.length == 2;
            if (v36) {
                v37 = v38 = 8121;
                v39 = v2.word3;
                assert(bool(0 < v39.length));
                v40 = v39[0];
                while (!bool(4)) {
                    v35 = uint8(uint8(v40) >> 2) == 10;
                    // Unknown jump to Block {'0x1fe40x306B0xbd', '0x1fb90x306B0xbd'}. Refer to 3-address code (TAC);
                    if (uint8(uint8(v40) >> 2) != 10) {
                        v37 = v41 = 8164;
                        v42 = v2.word3;
                        assert(bool(1 < v42.length));
                        v40 = v43 = v42[1];
                    }
                }
                throw();
            }
            if (!v35) {
                v44 = msg.sender.call().value(v2.word1 << 1).gas(!(v2.word1 << 1) * 2300);
                require(bool(v44));
            } else {
                assert(bool(2));
                v45 = msg.sender.call().value(v2.word1 * 5 >> 1).gas(!(v2.word1 * 5 >> 1) * 2300);
                require(bool(v45));
            }
            assert(1 <= 3);
            _games[msg.sender].field4 = 0x1 | bytes31(_games[address(address(msg.sender))].field4);
        }
    } else {
        v46 = v47 = uint8(v22) == stor_2_0_0;
        if (uint8(v22) != stor_2_0_0) {
            v46 = uint8(v21) == stor_2_0_0;
        }
        if (!v46) {
            assert(3 <= 3);
            _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
        } else {
            v48 = msg.sender.call().value(v2.word1).gas(!v2.word1 * 2300);
            require(bool(v48));
            assert(2 <= 3);
            _games[msg.sender].field4 = 0x2 | bytes31(_games[address(address(msg.sender))].field4);
        }
    }
}

function maxBet() public nonPayable { 
    return _maxBet;
}

function deal() public payable { 
    v0 = v1 = address(_games[address(address(msg.sender))].field0) != 0;
    if (!bool(address(address(_games[address(address(msg.sender))].field0)) == 0)) {
        assert(0 <= 3);
        assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
        v0 = uint8(_games[address(address(msg.sender))].field4) == 0;
    }
    require(!v0);
    v2 = v3 = msg.value < _minBet;
    if (msg.value >= _minBet) {
        v2 = msg.value > _maxBet;
    }
    require(!v2);
    v4 = new struct(2);
    v4.word0 = 1;
    if (1) {
        MEM[(v4.data) len 32] = this.code[this.code.size len 32];
    }
    v5 = new struct(3);
    v5.word0 = 2;
    if (2) {
        MEM[(v5.data) len 64] = this.code[this.code.size len 64];
    }
    assert(bool(52));
    assert(bool(0 < v5.word0.length));
    v6 = v5.data;
    v7 = v5.data;
    v5.word1 = uint8(keccak256(uint256(uint256(block.blockhash(block.number))), address(address(msg.sender)), uint8(uint8(0)), block.timestamp) % 52);
    assert(bool(0 < v5.word0.length));
    v8 = v5.data;
    v9 = v5.data;
    emit Deal(bool(1), uint8(v5.word1));
    assert(bool(52));
    assert(bool(0 < v4.word0.length));
    v10 = v4.data;
    v11 = v4.data;
    v4.word1 = uint8(keccak256(uint256(uint256(block.blockhash(block.number))), address(address(msg.sender)), uint8(uint8(1)), block.timestamp) % 52);
    assert(bool(0 < v4.word0.length));
    v12 = v4.data;
    v13 = v4.data;
    emit Deal(bool(0), uint8(v4.word1));
    assert(bool(52));
    assert(bool(1 < v5.word0.length));
    v5.word2 = uint8(keccak256(uint256(uint256(block.blockhash(block.number))), address(address(msg.sender)), uint8(uint8(2)), block.timestamp) % 52);
    assert(bool(1 < v5.word0.length));
    emit Deal(bool(1), uint8(v5.word2));
    v14 = new struct(6);
    v14.word0 = msg.sender;
    v14.word1 = msg.value;
    v14.word2 = v4;
    v14.word3 = v5;
    assert(0 <= 3);
    v14.word4 = 0;
    v14.word5 = uint8(3);
    _games[msg.sender].field0 = address(v14.word0) | bytes12(_games[address(address(msg.sender))].field0);
    _games[msg.sender].field1 = v14.word1;
    v15 = v14.word2;
    v16 = v17 = v15.data;
    _games[msg.sender].field2.length = v15.length;
    v18 = v19 = _games[msg.sender].field2.data;
    if (v15.length) {
        v20 = v21 = 0;
        while (v17 + (v15.length << 5) > v16) {
            STORAGE[v18] = uint8(MEM[v16]) * 256 ** v20 | ~(uint8.max * 256 ** v20) & STORAGE[v18];
            v16 += 32;
            v18 += 1 + v20 >> 5;
            v20 = (1 - (1 + v20 >> 5)) * (1 + v20);
        }
        while (v20) {
            STORAGE[v18] = ~(uint8.max * 256 ** v20) & STORAGE[v18];
            v18 += 1 + v20 >> 5;
            v20 = (1 - (1 + v20 >> 5)) * (1 + v20);
        }
    }
    while (v19 + (31 + _games[msg.sender].field2.length >> 5) > v18) {
        STORAGE[v18] = bytes31(STORAGE[v18]);
        v18 += 1;
    }
    v22 = v14.word3;
    v23 = v24 = v22.data;
    _games[msg.sender].field3.length = v22.length;
    v25 = v26 = _games[msg.sender].field3.data;
    if (v22.length) {
        v27 = v28 = 0;
        while (v24 + (v22.length << 5) > v23) {
            STORAGE[v25] = uint8(MEM[v23]) * 256 ** v27 | ~(uint8.max * 256 ** v27) & STORAGE[v25];
            v23 += 32;
            v25 += 1 + v27 >> 5;
            v27 = (1 - (1 + v27 >> 5)) * (1 + v27);
        }
        while (v27) {
            STORAGE[v25] = ~(uint8.max * 256 ** v27) & STORAGE[v25];
            v25 += 1 + v27 >> 5;
            v27 = (1 - (1 + v27 >> 5)) * (1 + v27);
        }
    }
    while (v26 + (31 + _games[msg.sender].field3.length >> 5) > v25) {
        STORAGE[v25] = bytes31(STORAGE[v25]);
        v25 += 1;
    }
    assert(v14.word4 <= 3);
    _games[msg.sender].field4 = v14.word4 | bytes31(_games[address(address(msg.sender))].field4);
    _games[msg.sender].field4 = uint8(v14.word5) << 8 | ~0xff00 & _games[msg.sender].field4;
    v29 = new struct(6);
    v29.word0 = address(_games[address(address(msg.sender))].field0);
    v29.word1 = _games[msg.sender].field1;
    v30 = new uint256[](_games[msg.sender].field2.length);
    v31 = v32 = v30.data;
    if (_games[msg.sender].field2.length) {
        v33 = v34 = _games[msg.sender].field2.data;
        v35 = v36 = 0;
        do {
            MEM[v31] = uint8(STORAGE[v33] / 256 ** v35);
            v31 += 32;
            v33 += 1 + v35 >> 5;
            v35 = (1 + v35) * (1 - (1 + v35 >> 5));
        } while (v32 + (_games[msg.sender].field2.length << 5) <= v31);
    }
    v29.word2 = v30;
    v37 = new uint256[](_games[msg.sender].field3.length);
    v38 = v39 = v37.data;
    if (_games[msg.sender].field3.length) {
        v40 = v41 = _games[msg.sender].field3.data;
        v42 = v43 = 0;
        do {
            MEM[v38] = uint8(STORAGE[v40] / 256 ** v42);
            v38 += 32;
            v40 += 1 + v42 >> 5;
            v42 = (1 + v42) * (1 - (1 + v42 >> 5));
        } while (v39 + (_games[msg.sender].field3.length << 5) <= v38);
    }
    v29.word3 = v37;
    assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
    assert(uint8(_games[address(address(msg.sender))].field4) <= 3);
    v29.word4 = uint8(_games[address(address(msg.sender))].field4);
    v29.word5 = uint8(_games[address(address(msg.sender))].field4 >> 8);
    v44 = v29.word2;
    v45, v46 = 0x2599(v29.word2);
    v47 = v29.word3;
    v48, v49 = 0x2599(v29.word3);
    emit GameStatus(uint8(v46), uint8(v45), uint8(v49), uint8(v48));
    v50 = v51 = uint8(v45) == stor_2_0_0;
    if (uint8(v45) != stor_2_0_0) {
        v50 = uint8(v46) == stor_2_0_0;
    }
    if (!v50) {
        v52 = v53 = uint8(v49) == stor_2_0_0;
        if (uint8(v49) != stor_2_0_0) {
            v52 = uint8(v48) == stor_2_0_0;
        }
        if (!v52) {
            if (uint8(v49) <= stor_2_0_0) {
                if (bool(0)) {
                    if (uint8(v48) <= stor_2_0_0) {
                        v54 = stor_2_0_0 - v48;
                    } else if (uint8(v49) <= stor_2_0_0) {
                        v54 = v55 = stor_2_0_0 - v49;
                    } else {
                        assert(3 <= 3);
                        _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
                    }
                    if (uint8(v45) <= stor_2_0_0) {
                        v56 = stor_2_0_0 - v45;
                    } else if (uint8(v46) <= stor_2_0_0) {
                        v56 = v57 = stor_2_0_0 - v46;
                    } else {
                        v58 = msg.sender.call().value(v29.word1 << 1).gas(!(v29.word1 << 1) * 2300);
                        require(bool(v58));
                        assert(1 <= 3);
                        _games[msg.sender].field4 = 0x1 | bytes31(_games[address(address(msg.sender))].field4);
                    }
                    if (uint8(v56) != uint8(v54)) {
                        if (uint8(v56) <= uint8(v54)) {
                            assert(3 <= 3);
                            _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
                        } else {
                            v59 = msg.sender.call().value(v29.word1 << 1).gas(!(v29.word1 << 1) * 2300);
                            require(bool(v59));
                            assert(1 <= 3);
                            _games[msg.sender].field4 = 0x1 | bytes31(_games[address(address(msg.sender))].field4);
                        }
                    } else {
                        v60 = msg.sender.call().value(v29.word1).gas(!v29.word1 * 2300);
                        require(bool(v60));
                        assert(2 <= 3);
                        _games[msg.sender].field4 = 0x2 | bytes31(_games[address(address(msg.sender))].field4);
                    }
                }
            } else {
                emit Log(uint8(1));
                assert(3 <= 3);
                _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
            }
        } else {
            v61 = v29.word3;
            v62 = v63 = v61.length == 2;
            if (v63) {
                v64 = v65 = 8121;
                v66 = v29.word3;
                assert(bool(0 < v66.length));
                v67 = v66[0];
                while (!bool(4)) {
                    v62 = uint8(uint8(v67) >> 2) == 10;
                    // Unknown jump to Block {'0x1fb90x843B0xf3', '0x1fe40x843B0xf3'}. Refer to 3-address code (TAC);
                    if (uint8(uint8(v67) >> 2) != 10) {
                        v64 = v68 = 8164;
                        v69 = v29.word3;
                        assert(bool(1 < v69.length));
                        v67 = v70 = v69[1];
                    }
                }
                throw();
            }
            if (!v62) {
                v71 = msg.sender.call().value(v29.word1 << 1).gas(!(v29.word1 << 1) * 2300);
                require(bool(v71));
            } else {
                assert(bool(2));
                v72 = msg.sender.call().value(v29.word1 * 5 >> 1).gas(!(v29.word1 * 5 >> 1) * 2300);
                require(bool(v72));
            }
            assert(1 <= 3);
            _games[msg.sender].field4 = 0x1 | bytes31(_games[address(address(msg.sender))].field4);
        }
    } else {
        v73 = v74 = uint8(v49) == stor_2_0_0;
        if (uint8(v49) != stor_2_0_0) {
            v73 = uint8(v48) == stor_2_0_0;
        }
        if (!v73) {
            assert(3 <= 3);
            _games[msg.sender].field4 = 0x3 | bytes31(_games[address(address(msg.sender))].field4);
        } else {
            v75 = msg.sender.call().value(v29.word1).gas(!v29.word1 * 2300);
            require(bool(v75));
            assert(2 <= 3);
            _games[msg.sender].field4 = 0x2 | bytes31(_games[address(address(msg.sender))].field4);
        }
    }
}

function games(address varg0) public nonPayable { 
    assert(uint8(_games[address(varg0)].field4) <= 3);
    return address(_games[address(varg0)].field0), _games[varg0].field1, uint8(_games[address(varg0)].field4), uint8(_games[address(varg0)].field4 >> 8);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x2ae3594a == uint32(function_selector >> 224)) {
            hit();
        } else if (0x2e5b2168 == uint32(function_selector >> 224)) {
            maxBet();
        } else if (0x553df021 == uint32(function_selector >> 224)) {
            deal();
        } else if (0x79131a19 == uint32(function_selector >> 224)) {
            games(address);
        } else if (0x7b61b201 == uint32(function_selector >> 224)) {
            getHouseCard(uint8);
        } else if (0x7f601a50 == uint32(function_selector >> 224)) {
            getHouseCardsNumber();
        } else if (0x9619367d == uint32(function_selector >> 224)) {
            minBet();
        } else if (0xb7d0628b == uint32(function_selector >> 224)) {
            getGameState();
        } else if (0xc2897b10 == uint32(function_selector >> 224)) {
            stand();
        } else if (0xd02d1382 == uint32(function_selector >> 224)) {
            getPlayerCard(uint8);
        } else if (0xd572fd99 == uint32(function_selector >> 224)) {
            getPlayerCardsNumber();
        }
    }
    ();
}
