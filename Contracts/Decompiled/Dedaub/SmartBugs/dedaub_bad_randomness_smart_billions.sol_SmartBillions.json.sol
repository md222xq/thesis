// Decompiled by library.dedaub.com
// 2023.11.08 20:06 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _totalSupply; // STORAGE[0x0]
mapping (uint256 => uint256) _balanceOf; // STORAGE[0x3]
mapping (uint256 => mapping (uint256 => uint256)) _allowance; // STORAGE[0x4]
mapping (uint256 => uint256) _walletBalanceOf; // STORAGE[0x5]
mapping (uint256 => uint256) _betValueOf; // STORAGE[0x6]
uint256 _walletBalance; // STORAGE[0x7]
uint256 _investStart; // STORAGE[0x8]
uint256 _investBalance; // STORAGE[0x9]
uint256 _investBalanceMax; // STORAGE[0xa]
uint256 _dividendPeriod; // STORAGE[0xb]
uint256[] _dividends; // STORAGE[0xc]
uint256 _maxWin; // STORAGE[0xd]
uint256 _hashFirst; // STORAGE[0xe]
uint256 _hashLast; // STORAGE[0xf]
uint256 _hashNext; // STORAGE[0x10]
uint256 _hashBetSum; // STORAGE[0x11]
uint256 _hashBetMax; // STORAGE[0x12]
uint256[] _hashesLength; // STORAGE[0x13]
uint256 _coldStoreLast; // STORAGE[0x14]
uint256 _investDirect; // STORAGE[0x1] bytes 0 to 19
uint256 _animator; // STORAGE[0x2] bytes 0 to 19


// Events
Transfer(address, address, uint256);
LogInvestment(address, address, uint256);
LogDividend(address, uint256, uint256);
LogLate(address, uint256, uint256);
LogRecordWin(address, uint256);
LogLoss(address, uint256, uint256);
Approval(address, address, uint256);

function 0x1022(address varg0) private { 
    v0 = v1 = _investStart > 1;
    if (v1) {
        v0 = v2 = block.number < _investStart + 0x14000;
    }
    if (v0) {
        v0 = v3 = _investBalance < _investBalanceMax;
    }
    require(bool(v0));
    v4 = v5 = msg.value;
    if (v5 <= _investBalanceMax - _investBalance) {
        _investBalance = _investBalance + v5;
    } else {
        v4 = v6 = _investBalanceMax - _investBalance;
        _investBalance = _investBalanceMax;
        _investStart = 0;
        assert(bool(v6 <= msg.value));
        v7 = msg.sender.call().value(msg.value - v6).gas(!(msg.value - v6) * 2300);
        require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v8 = v9 = varg0 == address(0x0);
    if (varg0 != address(0x0)) {
        v8 = v10 = varg0 == _investDirect;
    }
    if (!v8) {
        assert(bool(100));
        _walletBalance = _walletBalance + (v4 * 5 / 100 << 1);
        assert(bool(100));
        _walletBalanceOf[_investDirect] = uint208(uint208(_walletBalanceOf[_investDirect]) + v4 * 5 / 100) | bytes6(_walletBalanceOf[_investDirect]);
        assert(bool(100));
        v11 = varg0;
        _walletBalanceOf[v11] = uint208(uint208(_walletBalanceOf[v11]) + v4 * 5 / 100) | bytes6(_walletBalanceOf[v11]);
    } else {
        assert(bool(10));
        _walletBalance = _walletBalance + v4 / 10;
        assert(bool(10));
        _walletBalanceOf[_investDirect] = uint208(uint208(_walletBalanceOf[_investDirect]) + v4 / 10) | bytes6(_walletBalanceOf[_investDirect]);
    }
    _walletBalanceOf[msg.sender] = uint16(_dividendPeriod) << 208 | ~0xffff0000000000000000000000000000000000000000000000000000 & _walletBalanceOf[msg.sender];
    assert(bool(0x38d7ea4c68000));
    assert(bool(0x16345785d8a0000));
    assert(bool(0x16345785d8a0000));
    _balanceOf[msg.sender] = _balanceOf[msg.sender] + v4 / 0x38d7ea4c68000;
    _balanceOf[_investDirect] = _balanceOf[_investDirect] + (v4 << 4) / 0x16345785d8a0000;
    _balanceOf[_animator] = _balanceOf[_animator] + v4 * 10 / 0x16345785d8a0000;
    _totalSupply = _totalSupply + (v4 / 0x38d7ea4c68000 + (v4 << 4) / 0x16345785d8a0000 + v4 * 10 / 0x16345785d8a0000);
    emit Transfer(address(0x0), msg.sender, v4 / 0x38d7ea4c68000);
    emit Transfer(address(0x0), _investDirect, (v4 << 4) / 0x16345785d8a0000);
    emit Transfer(address(0x0), _animator, v4 * 10 / 0x16345785d8a0000);
    emit LogInvestment(msg.sender, varg0, v4);
    return ;
}

function 0x1891(address varg0) private { 
    v0 = v1 = uint16(_walletBalanceOf[address(address(varg0))] >> 208);
    v2 = v3 = _balanceOf[varg0] == 0;
    if (_balanceOf[varg0] != 0) {
        v2 = v4 = v1 == 0;
    }
    if (!v2) {
        if (v1 != _dividendPeriod) {
            assert(bool(_totalSupply));
            v5 = v6 = 0;
            while (v0 < _dividendPeriod) {
                assert(bool(v0 < _dividends.length));
                v5 = v5 + _balanceOf[varg0] * uint32.max / _totalSupply * _dividends[v0];
                v0 += 1;
            }
            assert(bool(uint32.max));
            _walletBalance = _walletBalance + v5 / uint32.max;
            v7 = varg0;
            _walletBalanceOf[v7] = uint208(uint208(_walletBalanceOf[v7]) + v5 / uint32.max) | bytes6(_walletBalanceOf[v7]);
            _walletBalanceOf[varg0] = uint16(v0) << 208 | ~0xffff0000000000000000000000000000000000000000000000000000 & _walletBalanceOf[varg0];
            emit LogDividend(varg0, v5 / uint32.max, v0);
            return ;
        } else {
            return ;
        }
    } else {
        _walletBalanceOf[varg0] = uint16(_dividendPeriod) << 208 | ~0xffff0000000000000000000000000000000000000000000000000000 & _walletBalanceOf[varg0];
        return ;
    }
}

function 0x1bd8() private { 
    MEM[MEM[64]] = uint192(0);
    MEM[32 + MEM[64]] = uint32(0);
    MEM[64 + MEM[64]] = uint32(0);
    v0 = new struct(3);
    v0.word0 = uint192(_betValueOf[address(address(msg.sender))]);
    v0.word1 = uint32(_betValueOf[address(address(msg.sender))] >> 192);
    v0.word2 = uint32(_betValueOf[address(address(msg.sender))] >> 224);
    if (uint32(v0.word2) != 0) {
        v1 = v2 = uint192(v0.word0) == 0;
        if (uint192(v0.word0) != 0) {
            v1 = v3 = uint32(v0.word2) == 1;
        }
        if (!v1) {
            require(bool(block.number > uint32(v0.word2)));
            if (bool(uint32(v0.word2) + 0x28000 > block.number)) {
                if (block.number >= uint32(v0.word2 + 256)) {
                    if (_hashFirst <= 0) {
                        emit LogLate(msg.sender, uint32(v0.word2), block.number);
                        _betValueOf[msg.sender] = uint192(0) | bytes8(_betValueOf[address(address(msg.sender))]);
                        _betValueOf[msg.sender] = uint32(0) << 192 | ~0xffffffff000000000000000000000000000000000000000000000000 & _betValueOf[msg.sender];
                        _betValueOf[msg.sender] = uint32(1) << 224 | uint224(_betValueOf[address(address(msg.sender))]);
                        return ;
                    } else {
                        assert(bool(10));
                        assert(bool(16384));
                        assert(bool((uint32(v0.word2) - _hashFirst) / 10 % 16384 < _hashesLength.length));
                        assert(bool(16384));
                        if (bool((uint32(v0.word2) - _hashFirst) / 10 >> 14 == _hashesLength[(uint32(v0.word2) - _hashFirst) / 10 % 16384] >> 240)) {
                            assert(bool(10));
                            v4 = uint24(_hashesLength[(uint32(v0.word2) - _hashFirst) / 10 % 16384] / 2 ** (24 * ((uint32(v0.word2) - _hashFirst) % 10)));
                        } else {
                            v4 = v5 = 0x1000000;
                        }
                        if (uint32(v6) != 0x1000000) {
                            v7 = v8 = 0x4412(v6, v0);
                        } else {
                            v7 = v9 = uint192(v0.word0);
                        }
                    }
                } else {
                    v4 = v10 = uint24(block.blockhash(uint32(v0.word2)));
                    v7 = v11 = 0x4412(v10, v0);
                }
                _betValueOf[msg.sender] = uint192(0) | bytes8(_betValueOf[address(address(msg.sender))]);
                _betValueOf[msg.sender] = uint32(0) << 192 | ~0xffffffff000000000000000000000000000000000000000000000000 & _betValueOf[msg.sender];
                _betValueOf[msg.sender] = uint32(1) << 224 | uint224(_betValueOf[address(address(msg.sender))]);
                if (v7 <= 0) {
                    emit LogLoss(msg.sender, uint32(v0.word1), uint32(v4));
                } else {
                    emit 0x362509948ea59afac5c6fa93fea5327b624bc705a6574f4e9f26e9d8bd7ccc(msg.sender, uint32(v0.word1), uint32(v4), v7);
                    if (v7 > _maxWin) {
                        _maxWin = v7;
                        emit LogRecordWin(msg.sender, v7);
                    }
                    0x468f(v7);
                    // Unknown jump to Block 0x24c7. Refer to 3-address code (TAC);
                }
                return ;
            } else {
                emit LogLate(msg.sender, uint32(v0.word2), block.number);
                _betValueOf[msg.sender] = uint192(0) | bytes8(_betValueOf[address(address(msg.sender))]);
                _betValueOf[msg.sender] = uint32(0) << 192 | ~0xffffffff000000000000000000000000000000000000000000000000 & _betValueOf[msg.sender];
                _betValueOf[msg.sender] = uint32(1) << 224 | uint224(_betValueOf[address(address(msg.sender))]);
                return ;
            }
        } else {
            0x36fc();
            return ;
        }
    } else {
        _betValueOf[msg.sender] = uint192(0) | bytes8(_betValueOf[address(address(msg.sender))]);
        _betValueOf[msg.sender] = uint32(0) << 192 | ~0xffffffff000000000000000000000000000000000000000000000000 & _betValueOf[msg.sender];
        _betValueOf[msg.sender] = uint32(1) << 224 | uint224(_betValueOf[address(address(msg.sender))]);
        return ;
    }
}

function 0x26ea() private { 
    v0 = v1 = _hashLast;
    v2 = v3 = v1 == 0;
    if (v1 != 0) {
        v2 = v4 = block.number <= v1 + 10;
    }
    if (!v2) {
        if (block.number >= 256) {
            v5 = v6 = block.number - 256;
        } else {
            v5 = v7 = 0;
        }
        if (v1 < v5) {
            assert(bool(10));
            v0 = v8 = v5 + v5 % 10;
        }
        assert(bool(10));
        assert(bool(16384));
        assert(bool(16384));
        assert(bool((v0 - _hashFirst) / 10 % 16384 < _hashesLength.length));
        _hashesLength[(v0 - _hashFirst) / 10 % 16384] = uint24(block.blockhash(uint32(v0))) | uint24(block.blockhash(uint32(v0 + 1))) << 24 | uint24(block.blockhash(uint32(v0 + 2))) << 48 | uint24(block.blockhash(uint32(v0 + 3))) << 72 | uint24(block.blockhash(uint32(v0 + 4))) << 96 | uint24(block.blockhash(uint32(v0 + 5))) << 120 | uint24(block.blockhash(uint32(v0 + 6))) << 144 | uint24(block.blockhash(uint32(v0 + 7))) << 168 | uint24(block.blockhash(uint32(v0 + 8))) << 192 | uint24(block.blockhash(uint32(v0 + 9))) << 216 | uint32((v0 - _hashFirst) / 10) >> 14 << 240;
        _hashLast = v0 + 10;
        v9 = v10 = 1;
    } else {
        v9 = v11 = 0;
    }
    return v9;
}

function () public payable { 
    if (msg.value <= 0) {
        v0 = v1 = _investStart == 0;
        if (v1) {
            v0 = v2 = _balanceOf[msg.sender] > 0;
        }
        if (v0) {
            0x1891(msg.sender);
        }
        0x1bd8();
    } else if (_investStart <= 1) {
        v3 = 0x2afb(0, keccak256(msg.sender, block.number));
    } else {
        0x1022(_investDirect);
    }
}

function 0x2afb(address varg0, uint24 varg1) private { 
    0x1bd8();
    v0 = v1 = msg.value <= 0xde0b6b3a7640000;
    if (!bool(msg.value > 0xde0b6b3a7640000)) {
        v0 = v2 = msg.value < _hashBetMax;
    }
    require(bool(v0));
    if (msg.value > 0) {
        if (_investStart == 0) {
            assert(bool(20));
            assert(bool(_dividendPeriod < _dividends.length));
            _dividends[_dividendPeriod] = _dividends[_dividendPeriod] + msg.value / 20;
        }
        if (!bool(address(varg0) == address(0x0))) {
            assert(bool(100));
            _walletBalance = _walletBalance + msg.value / 100;
            v3 = varg0;
            _walletBalanceOf[v3] = uint208(uint208(_walletBalanceOf[v3]) + msg.value / 100) | bytes6(_walletBalanceOf[v3]);
        }
        if (_hashNext >= block.number + 3) {
            if (_hashBetSum <= _hashBetMax) {
                _hashBetSum = _hashBetSum + msg.value;
            } else {
                _hashNext += 1;
                _hashBetSum = msg.value;
            }
        } else {
            _hashNext = block.number + 3;
            _hashBetSum = msg.value;
        }
        MEM[64] = MEM[64] + 96;
        _betValueOf[msg.sender] = uint192(msg.value) | bytes8(_betValueOf[address(address(msg.sender))]);
        _betValueOf[msg.sender] = uint32(uint24(varg1)) << 192 | ~0xffffffff000000000000000000000000000000000000000000000000 & _betValueOf[msg.sender];
        _betValueOf[msg.sender] = uint32(_hashNext) << 224 | uint224(_betValueOf[address(address(msg.sender))]);
        emit 0x63f4540040cf99a22f577ef321c170763020e6277e47275ed9b3d17ec14e13d(msg.sender, varg1, _hashNext, msg.value);
    }
    v4 = 0x26ea();
    return _hashNext;
}

function 0x2fa3() private { 
    if (_investStart <= 0) {
        assert(bool(0x28000));
        if ((block.number - _hashFirst) / 0x28000 <= _dividendPeriod) {
            assert(bool(0x28000));
            return 0x28000 - (block.number - _hashFirst) % 0x28000;
        } else {
            return 0;
        }
    } else {
        return 0;
    }
}

function 0x31ac(address varg0) private { 
    MEM[MEM[64]] = uint192(0);
    MEM[32 + MEM[64]] = uint32(0);
    MEM[64 + MEM[64]] = uint32(0);
    v0 = varg0;
    v1 = new struct(3);
    v1.word0 = uint192(_betValueOf[v0]);
    v1.word1 = uint32(_betValueOf[v0] >> 192);
    v1.word2 = uint32(_betValueOf[v0] >> 224);
    v2 = v3 = uint192(v1.word0) == 0;
    if (uint192(v1.word0) != 0) {
        v2 = v4 = uint32(v1.word2) <= 1;
    }
    if (!v2) {
        v2 = v5 = block.number < uint32(v1.word2);
    }
    if (!v2) {
        v2 = v6 = block.number >= uint32(v1.word2) + 0x28000;
    }
    if (!v2) {
        if (block.number >= uint32(v1.word2 + 256)) {
            if (_hashFirst <= 0) {
                return 0;
            } else {
                assert(bool(10));
                assert(bool(16384));
                assert(bool((uint32(v1.word2) - _hashFirst) / 10 % 16384 < _hashesLength.length));
                assert(bool(16384));
                if (bool((uint32(v1.word2) - _hashFirst) / 10 >> 14 == _hashesLength[(uint32(v1.word2) - _hashFirst) / 10 % 16384] >> 240)) {
                    assert(bool(10));
                    v7 = uint24(_hashesLength[(uint32(v1.word2) - _hashFirst) / 10 % 16384] / 2 ** (24 * ((uint32(v1.word2) - _hashFirst) % 10)));
                } else {
                    v7 = v8 = 0x1000000;
                }
                if (uint32(v7) != 0x1000000) {
                    v9 = 0x4412(v7, v1);
                    return v9;
                } else {
                    return uint192(v1.word0);
                }
            }
        } else {
            v10 = 0x4412(block.blockhash(uint32(v1.word2)), v1);
            return v10;
        }
    } else {
        return 0;
    }
}

function invest(address varg0) public payable { 
    0x1022(varg0);
}

function 0x36fc() private { 
    v0 = v1 = uint208(_walletBalanceOf[address(address(msg.sender))]) > 0;
    if (v1) {
        v0 = v2 = uint32(_walletBalanceOf[address(address(msg.sender))] >> 224) <= block.number;
    }
    if (v0) {
        _walletBalanceOf[msg.sender] = 0x0 | bytes6(_walletBalanceOf[address(address(msg.sender))]);
        _walletBalance = _walletBalance - uint208(_walletBalanceOf[address(address(msg.sender))]);
        0x468f(uint208(_walletBalanceOf[address(address(msg.sender))]));
    }
    return ;
}

function name() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    if (19) {
        MEM[v0.data] = ~0xffffffffffffffffffffffffff & 'SmartBillions Token';
    }
    return v0;
}

function 0x3f4d() private { 
    v0 = v1 = _investStart > 1;
    if (v1) {
        v0 = v2 = block.number >= _investStart + 0x14000;
    }
    if (!v0) {
        if (_hashFirst > 0) {
            assert(bool(0x28000));
            if ((block.number - _hashFirst) / 0x28000 > _dividends.length - 2) {
                _dividends = _dividends.length + 1;
                _dividends[_dividends.length + 1 - 1] = 0;
            }
            v3 = v4 = (block.number - _hashFirst) / 0x28000 > _dividendPeriod;
            if (v4) {
                v3 = v5 = _investStart == 0;
            }
            if (v3) {
                v3 = v6 = _dividendPeriod < _dividends.length - 1;
            }
            if (v3) {
                _dividendPeriod += 1;
            }
        }
    } else {
        _investStart = 0;
    }
    return ;
}

function setBetMax(uint256 varg0) public nonPayable { 
    assert(bool(address(msg.sender) == _investDirect));
    _hashBetMax = varg0;
}

function 0x4412(uint256 varg0, struct(3) varg1) private { 
    v0 = varg1.word1 ^ varg0;
    if (uint24(v0 & 0xf00000) == 0) {
        v1 = v2 = 1;
    } else {
        v1 = v3 = 0;
    }
    if (uint24(v0 & 0xf0000) == 0) {
        v4 = v5 = 1;
    } else {
        v4 = v6 = 0;
    }
    if (uint24(v0 & 0xf000) == 0) {
        v7 = v8 = 1;
    } else {
        v7 = v9 = 0;
    }
    if (uint24(v0 & 0xf00) == 0) {
        v10 = v11 = 1;
    } else {
        v10 = v12 = 0;
    }
    if (uint24(v0 & 0xf0) == 0) {
        v13 = v14 = 1;
    } else {
        v13 = v15 = 0;
    }
    if (uint24(bool(v0)) == 0) {
        v16 = v17 = 1;
    } else {
        v16 = v18 = 0;
    }
    v19 = uint8(v16 + v13 + v10 + v7 + v4 + v1);
    if (uint24(v19) != 6) {
        if (uint24(v19) != 5) {
            if (uint24(v19) != 4) {
                if (uint24(v19) != 3) {
                    if (uint24(v19) != 2) {
                        return 0;
                    } else {
                        return uint192(varg1.word0) * 3;
                    }
                } else {
                    return uint192(varg1.word0) * 25;
                }
            } else {
                return uint192(varg1.word0) * 500;
            }
        } else {
            return uint192(varg1.word0) * 20000;
        }
    } else {
        return uint192(varg1.word0) * 0x6acfc0;
    }
}

function approve(address varg0, uint256 varg1) public nonPayable { 
    v0 = v1 = varg1 != 0;
    if (!bool(varg1 == 0)) {
        v0 = v2 = _allowance[msg.sender][varg0] != 0;
    }
    assert(bool(!v0));
    _allowance[msg.sender][varg0] = varg1;
    emit Approval(msg.sender, varg0, varg1);
}

function 0x468f(uint256 varg0) private { 
    assert(bool(2));
    if (bool((address(this)).balance >> 1 < varg0)) {
        _walletBalance = _walletBalance + (varg0 - ((address(this)).balance >> 1));
        _walletBalanceOf[msg.sender] = uint208(uint208(_walletBalanceOf[address(address(msg.sender))]) + (varg0 - ((address(this)).balance >> 1))) | bytes6(_walletBalanceOf[address(address(msg.sender))]);
        _walletBalanceOf[msg.sender] = uint32(block.number + 0x2a300) << 224 | uint224(_walletBalanceOf[address(address(msg.sender))]);
        v0 = msg.sender.call().value((address(this)).balance >> 1).gas(!((address(this)).balance >> 1) * 2300);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v1 = msg.sender.call().value(varg0).gas(!varg0 * 2300);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (varg0 > 0x38d7ea4c68000) {
            0x3f4d();
        }
    }
    return ;
}

function won() public nonPayable { 
    0x1bd8();
}

function putHash() public nonPayable { 
    v0 = 0x26ea();
    return bool(v0);
}

function maxWin() public nonPayable { 
    return _maxWin;
}

function totalSupply() public nonPayable { 
    return _totalSupply;
}

function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 
    assert(bool(msg.data.length >= 100));
    0x1891(varg0);
    0x1891(varg1);
    assert(bool(_balanceOf[varg1] + varg2 >= _balanceOf[varg1]));
    _balanceOf[varg1] = _balanceOf[varg1] + varg2;
    assert(bool(varg2 <= _balanceOf[varg0]));
    _balanceOf[varg0] = _balanceOf[varg0] - varg2;
    assert(bool(varg2 <= _allowance[varg0][msg.sender]));
    _allowance[varg0][msg.sender] = _allowance[varg0][msg.sender] - varg2;
    emit Transfer(varg0, varg1, varg2);
}

function playRandom(address varg0) public payable { 
    v0 = 0x2afb(varg0, keccak256(msg.sender, block.number));
    return v0;
}

function playSystem(uint256 varg0, address varg1) public payable { 
    v0 = 0x2afb(varg1, varg0);
    return v0;
}

function decimals() public nonPayable { 
    return 0;
}

function animator() public nonPayable { 
    return _animator;
}

function hashesSize() public nonPayable { 
    return 16384;
}

function addHashes(uint256 varg0) public nonPayable { 
    v0 = v1 = _hashFirst == 0;
    if (v1) {
        v0 = v2 = varg0 > 0;
    }
    if (v0) {
        v0 = varg0 <= 16384;
    }
    require(bool(v0));
    v3 = v4 = _hashesLength.length;
    if (v4 + varg0 <= 16384) {
        _hashesLength = _hashesLength.length + varg0;
        if (_hashesLength.length > _hashesLength.length + varg0) {
            v5 = v6 = keccak256(19) + (_hashesLength.length + varg0);
            while (keccak256(19) + _hashesLength.length > v5) {
                STORAGE[v5] = 0;
                v5 += 1;
            }
        }
    } else {
        _hashesLength = 16384;
        if (_hashesLength.length > 16384) {
            v7 = v8 = keccak256(19) + 16384;
            while (keccak256(19) + _hashesLength.length > v7) {
                STORAGE[v7] = 0;
                v7 += 1;
            }
        }
    }
    while (v3 < _hashesLength.length) {
        assert(bool(v3 < _hashesLength.length));
        _hashesLength[v3] = 1;
        v3 += 1;
    }
    if (!bool(_hashesLength.length < 16384)) {
        assert(bool(10));
        _hashFirst = block.number - block.number % 10;
        _hashLast = _hashFirst;
    }
    return _hashesLength.length;
}

function dividendsBlocks() public nonPayable { 
    v0 = 0x2fa3();
    return v0;
}

function betValueOf(address varg0) public nonPayable { 
    return uint192(_betValueOf[address(address(address(varg0)))]);
}

function changeAnimator(address varg0) public nonPayable { 
    assert(bool(address(msg.sender) == _animator));
    assert(bool(address(address(varg0)) != address(0x0)));
    0x1891(msg.sender);
    0x1891(varg0);
    _animator = varg0;
}

function putHashes(uint256 varg0) public nonPayable { 
    v0 = v1 = 0;
    while (v0 < varg0) {
        v2 = 0x26ea();
        if (bool(v2)) {
            v0 += 1;
            continue;
        } else {
            // Unknown jump to Block 0x31a8B0x802. Refer to 3-address code (TAC);
        }
    }
}

function betOf(address varg0) public nonPayable { 
    v0 = 0x31ac(varg0);
    return v0;
}

function resetBet() public nonPayable { 
    assert(bool(address(msg.sender) == _investDirect));
    _hashNext = block.number + 3;
    _hashBetSum = 0;
}

function hashes(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _hashesLength.length));
    return _hashesLength[varg0];
}

function walletBalanceOf(address varg0) public nonPayable { 
    return uint208(_walletBalanceOf[address(address(address(varg0)))]);
}

function hashFirst() public nonPayable { 
    return _hashFirst;
}

function balanceOf(address varg0) public nonPayable { 
    return _balanceOf[varg0];
}

function hashesLength() public nonPayable { 
    return _hashesLength.length;
}

function hashNext() public nonPayable { 
    return _hashNext;
}

function walletBlockOf(address varg0) public nonPayable { 
    return uint32(_walletBalanceOf[address(address(address(varg0)))] >> 224);
}

function dividends(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _dividends.length));
    return _dividends[varg0];
}

function owner() public nonPayable { 
    return _investDirect;
}

function betBlockNumberOf(address varg0) public nonPayable { 
    return uint32(_betValueOf[address(address(address(varg0)))] >> 224);
}

function betHashOf(address varg0) public nonPayable { 
    return uint32(_betValueOf[address(address(address(varg0)))] >> 192);
}

function play() public payable { 
    v0 = 0x2afb(0, keccak256(msg.sender, block.number));
    return v0;
}

function symbol() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    if (4) {
        MEM[v0.data] = 0x504c415900000000000000000000000000000000000000000000000000000000;
    }
    return v0;
}

function payWallet() public nonPayable { 
    0x36fc();
}

function investStart() public nonPayable { 
    return _investStart;
}

function changeOwner(address varg0) public nonPayable { 
    assert(bool(address(msg.sender) == _investDirect));
    assert(bool(address(address(varg0)) != address(0x0)));
    0x1891(msg.sender);
    0x1891(varg0);
    _investDirect = varg0;
}

function transfer(address varg0, uint256 varg1) public nonPayable { 
    assert(bool(msg.data.length >= 68));
    0x1891(msg.sender);
    assert(bool(varg1 <= _balanceOf[msg.sender]));
    _balanceOf[msg.sender] = _balanceOf[msg.sender] - varg1;
    if (varg0 != address(this)) {
        0x1891(varg0);
        assert(bool(_balanceOf[varg0] + varg1 >= _balanceOf[varg0]));
        _balanceOf[varg0] = _balanceOf[varg0] + varg1;
        emit Transfer(msg.sender, varg0, varg1);
    } else {
        0x1891(_investDirect);
        assert(bool(_balanceOf[_investDirect] + varg1 >= _balanceOf[_investDirect]));
        _balanceOf[_investDirect] = _balanceOf[_investDirect] + varg1;
        emit Transfer(msg.sender, _investDirect, varg1);
    }
}

function addHashes128() public nonPayable { 
    v0 = v1 = _hashFirst == 0;
    if (v1) {
        v0 = v2 = 128 > 0;
    }
    if (v0) {
        v0 = 128 <= 16384;
    }
    require(bool(v0));
    v3 = v4 = _hashesLength.length;
    if (v4 + 128 <= 16384) {
        _hashesLength = _hashesLength.length + 128;
        if (_hashesLength.length > _hashesLength.length + 128) {
            v5 = v6 = keccak256(19) + (_hashesLength.length + 128);
            while (keccak256(19) + _hashesLength.length > v5) {
                STORAGE[v5] = 0;
                v5 += 1;
            }
        }
    } else {
        _hashesLength = 16384;
        if (_hashesLength.length > 16384) {
            v7 = v8 = keccak256(19) + 16384;
            while (keccak256(19) + _hashesLength.length > v7) {
                STORAGE[v7] = 0;
                v7 += 1;
            }
        }
    }
    while (v3 < _hashesLength.length) {
        assert(bool(v3 < _hashesLength.length));
        _hashesLength[v3] = 1;
        v3 += 1;
    }
    if (!bool(_hashesLength.length < 16384)) {
        assert(bool(10));
        _hashFirst = block.number - block.number % 10;
        _hashLast = _hashFirst;
    }
    return _hashesLength.length;
}

function hashLast() public nonPayable { 
    return _hashLast;
}

function hotStore() public payable { 
    0x3f4d();
}

function hashBetMax() public nonPayable { 
    return _hashBetMax;
}

function investDirect() public payable { 
    0x1022(_investDirect);
}

function investBalanceMax() public nonPayable { 
    return _investBalanceMax;
}

function walletBalance() public nonPayable { 
    return _walletBalance;
}

function coldStore(uint256 varg0) public nonPayable { 
    assert(bool(address(msg.sender) == _investDirect));
    0x3f4d();
    v0 = v1 = varg0 > 0;
    if (v1) {
        assert(bool(10));
        v0 = v2 = (address(this)).balance >= _investBalance * 9 / 10 + _walletBalance + varg0;
    }
    require(bool(v0));
    assert(bool(2));
    if (!bool(_investBalance < _investBalanceMax >> 1)) {
        assert(bool(400));
        v3 = v4 = varg0 <= (address(this)).balance / 400;
        if (!bool(varg0 > (address(this)).balance / 400)) {
            v3 = v5 = _coldStoreLast + 40320 <= block.number;
        }
        require(bool(v3));
    }
    v6 = msg.sender.call().value(varg0).gas(!varg0 * 2300);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    _coldStoreLast = block.number;
}

function coldStoreLast() public nonPayable { 
    return _coldStoreLast;
}

function houseKeeping() public nonPayable { 
    0x3f4d();
}

function allowance(address varg0, address varg1) public nonPayable { 
    return _allowance[varg0][varg1];
}

function hashBetSum() public nonPayable { 
    return _hashBetSum;
}

function payDividends() public nonPayable { 
    require(bool(_investStart == 0));
    0x1891(msg.sender);
    0x36fc();
}

function investBalance() public nonPayable { 
    return _investBalance;
}

function disinvest() public nonPayable { 
    require(bool(_investStart == 0));
    0x1891(msg.sender);
    emit Transfer(msg.sender, address(0x0), _balanceOf[msg.sender]);
    _balanceOf[msg.sender] = 0;
    _investBalance = _investBalance - _balanceOf[msg.sender] * 0x38d7ea4c68000;
    assert(bool(10));
    _walletBalanceOf[msg.sender] = uint208(uint208(_walletBalanceOf[address(address(msg.sender))]) + _balanceOf[msg.sender] * 0x38d7ea4c68000 * 9 / 10) | bytes6(_walletBalanceOf[address(address(msg.sender))]);
    0x36fc();
}

function dividendPeriod() public nonPayable { 
    return _dividendPeriod;
}

function walletPeriodOf(address varg0) public nonPayable { 
    return uint16(_walletBalanceOf[address(address(address(varg0)))] >> 208);
}

function setInvestStart(uint256 varg0) public nonPayable { 
    assert(bool(address(msg.sender) == _investDirect));
    v0 = v1 = _investStart == 1;
    if (v1) {
        v0 = v2 = _hashFirst > 0;
    }
    if (v0) {
        v0 = v3 = block.number < varg0;
    }
    require(bool(v0));
    _investStart = varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = uint32(function_selector >> 224);
        if (0x3f9c793 == v0) {
            invest(address);
        } else if (0x6fdde03 == v0) {
            name();
        } else if (0x751076d == v0) {
            setBetMax(uint256);
        } else if (0x95ea7b3 == v0) {
            approve(address,uint256);
        } else if (0x12c8052f == v0) {
            won();
        } else if (0x13e4b51f == v0) {
            putHash();
        } else if (0x16d190e3 == v0) {
            maxWin();
        } else if (0x18160ddd == v0) {
            totalSupply();
        } else if (0x23b872dd == v0) {
            transferFrom(address,address,uint256);
        } else if (0x2406e9fa == v0) {
            playRandom(address);
        } else if (0x26699576 == v0) {
            playSystem(uint256,address);
        } else if (0x313ce567 == v0) {
            decimals();
        } else if (0x31c2b6e6 == v0) {
            animator();
        } else if (0x37c43088 == v0) {
            hashesSize();
        } else if (0x380f3087 == v0) {
            addHashes(uint256);
        } else if (0x3de8d340 == v0) {
            dividendsBlocks();
        } else if (0x3e43b652 == v0) {
            betValueOf(address);
        } else if (0x40c73d17 == v0) {
            changeAnimator(address);
        } else if (0x413e90e7 == v0) {
            putHashes(uint256);
        } else if (0x4288d759 == v0) {
            betOf(address);
        } else if (0x43146f36 == v0) {
            resetBet();
        } else if (0x501895ae == v0) {
            hashes(uint256);
        } else if (0x66ce3bd2 == v0) {
            walletBalanceOf(address);
        } else if (0x6b486818 == v0) {
            hashFirst();
        } else if (0x70a08231 == v0) {
            balanceOf(address);
        } else if (0x70ccd928 == v0) {
            hashesLength();
        } else if (0x7227c7ce == v0) {
            hashNext();
        } else if (0x785ce7ca == v0) {
            walletBlockOf(address);
        } else if (0x814b3fe0 == v0) {
            dividends(uint256);
        } else if (0x8da5cb5b == v0) {
            owner();
        } else if (0x8eecddcf == v0) {
            betBlockNumberOf(address);
        } else if (0x904d2248 == v0) {
            betHashOf(address);
        } else if (0x93e84cd9 == v0) {
            play();
        } else if (0x95d89b41 == v0) {
            symbol();
        } else if (0x9ce962ca == v0) {
            payWallet();
        } else if (0xa367d99a == v0) {
            investStart();
        } else if (0xa6f9dae1 == v0) {
            changeOwner(address);
        } else if (0xa9059cbb == v0) {
            transfer(address,uint256);
        } else if (0xb3470e97 == v0) {
            addHashes128();
        } else if (0xbc851718 == v0) {
            hashLast();
        } else if (0xbe1eefbf == v0) {
            hotStore();
        } else if (0xbfba9029 == v0) {
            hashBetMax();
        } else if (0xc27509cf == v0) {
            investDirect();
        } else if (0xc4164365 == v0) {
            investBalanceMax();
        } else if (0xcd0a314b == v0) {
            walletBalance();
        } else if (0xcd88333e == v0) {
            coldStore(uint256);
        } else if (0xd6d25008 == v0) {
            coldStoreLast();
        } else if (0xd9fa9335 == v0) {
            houseKeeping();
        } else if (0xdd62ed3e == v0) {
            allowance(address,address);
        } else if (0xde469071 == v0) {
            hashBetSum();
        } else if (0xde88a342 == v0) {
            payDividends();
        } else if (0xdf12b94e == v0) {
            investBalance();
        } else if (0xdf1ead82 == v0) {
            disinvest();
        } else if (0xe4cc98a5 == v0) {
            dividendPeriod();
        } else if (0xe73cc2eb == v0) {
            walletPeriodOf(address);
        } else if (0xe76ece01 == v0) {
            setInvestStart(uint256);
        }
    }
    ();
}
