// Decompiled by library.dedaub.com
// 2023.11.08 21:29 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _gen0CreatedCount; // STORAGE[0x3]
uint256 _secondsPerBlock; // STORAGE[0x6]
struct_1144[] _totalSupply; // STORAGE[0x7]
mapping (uint256 => uint256) _pandaIndexToOwner; // STORAGE[0x8]
mapping (uint256 => uint256) _balanceOf; // STORAGE[0x9]
mapping (uint256 => uint256) _pandaIndexToApproved; // STORAGE[0xa]
mapping (uint256 => uint256) _sireAllowedToAddress; // STORAGE[0xb]
mapping (uint256 => uint256) _wizzPandaQuota; // STORAGE[0x10]
mapping (uint256 => uint256) _wizzPandaCount; // STORAGE[0x11]
uint256 _autoBirthFee; // STORAGE[0x12]
uint256 _pregnantPandas; // STORAGE[0x13]
mapping (uint256 => uint256) map_14; // STORAGE[0x14]
uint256 _ceoAddress; // STORAGE[0x0] bytes 0 to 19
uint256 stor_4_0_3; // STORAGE[0x4] bytes 0 to 3
uint256 _cfoAddress; // STORAGE[0x1] bytes 0 to 19
uint256 _cooAddress; // STORAGE[0x2] bytes 0 to 19
uint256 _saleAuction; // STORAGE[0xc] bytes 0 to 19
uint256 _siringAuction; // STORAGE[0xd] bytes 0 to 19
uint256 _geneScience; // STORAGE[0xe] bytes 0 to 19
uint256 _saleAuctionERC20; // STORAGE[0xf] bytes 0 to 19
uint256 _paused; // STORAGE[0x2] bytes 20 to 20


// Events
Approval(address, address, uint256);
Abortion(address, uint256, uint256);
Transfer(address, address, uint256);
Birth(address, uint256, uint256, uint256, uint256[2]);
Pregnant(address, uint256, uint256, uint256);

function pregnantPandas() public nonPayable { 
    return _pregnantPandas;
}

function () public payable { 
    revert();
}

function supportsInterface(bytes4 varg0) public nonPayable { 
    v0 = v1 = varg0 == bytes4(keccak256('supportsInterface(bytes4)'));
    if (varg0 != bytes4(keccak256('supportsInterface(bytes4)'))) {
        v0 = varg0 == bytes4(keccak256('name()') ^ keccak256('symbol()') ^ keccak256('totalSupply()') ^ keccak256('balanceOf(address)') ^ keccak256('ownerOf(uint256)') ^ keccak256('approve(address,uint256)') ^ keccak256('transfer(address,uint256)') ^ keccak256('transferFrom(address,address,uin', 't256)') ^ keccak256('tokensOfOwner(address)') ^ keccak256('tokenMetadata(uint256,string)'));
    }
    return bool(v0);
}

function cfoAddress() public nonPayable { 
    return _cfoAddress;
}

function name() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    if (10) {
        MEM[v0.data] = ~0xffffffffffffffffffffffffffffffffffffffffffff & 'PandaEarth';
    }
    return v0;
}

function 0x392e(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (varg2 != varg0) {
        v0 = v1 = uint32(STORAGE[2 + varg3] >> 128) == varg0;
        if (uint32(STORAGE[2 + varg3] >> 128) != varg0) {
            v0 = v2 = uint32(STORAGE[2 + varg3] >> 160) == varg0;
        }
        if (!v0) {
            v3 = v4 = uint32(STORAGE[2 + varg1] >> 128) == varg2;
            if (uint32(STORAGE[2 + varg1] >> 128) != varg2) {
                v3 = v5 = uint32(STORAGE[2 + varg1] >> 160) == varg2;
            }
            if (!v3) {
                v6 = v7 = uint32(STORAGE[2 + varg1] >> 128) == 0;
                if (uint32(STORAGE[2 + varg1] >> 128) != 0) {
                    v6 = v8 = uint32(STORAGE[2 + varg3] >> 128) == 0;
                }
                if (!v6) {
                    v9 = v10 = uint32(STORAGE[2 + varg1] >> 128) == uint32(STORAGE[2 + varg3] >> 128);
                    if (uint32(STORAGE[2 + varg1] >> 128) != uint32(STORAGE[2 + varg3] >> 128)) {
                        v9 = v11 = uint32(STORAGE[2 + varg1] >> 128) == uint32(STORAGE[2 + varg3] >> 160);
                    }
                    if (!v9) {
                        v12 = v13 = uint32(STORAGE[2 + varg1] >> 160) == uint32(STORAGE[2 + varg3] >> 128);
                        if (uint32(STORAGE[2 + varg1] >> 160) != uint32(STORAGE[2 + varg3] >> 128)) {
                            v12 = v14 = uint32(STORAGE[2 + varg1] >> 160) == uint32(STORAGE[2 + varg3] >> 160);
                        }
                        if (!v12) {
                            v15 = v16 = 0 + varg1;
                            v17 = v18 = 4 + MEM[64];
                            if (2) {
                                v17 = v19 = v18 + 64;
                                do {
                                    MEM[v17] = STORAGE[v15];
                                    v17 += 32;
                                    v15 += 1;
                                } while (v19 <= v17);
                            }
                            require(bool(_geneScience.code.size));
                            v20, /* uint256 */ v21 = _geneScience.getSex().gas(msg.gas);
                            require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(RETURNDATASIZE() >= 32);
                            v22 = v23 = 0 + varg3;
                            v24 = v25 = 4 + MEM[64];
                            if (2) {
                                v24 = v26 = v25 + 64;
                                do {
                                    MEM[v24] = STORAGE[v22];
                                    v24 += 32;
                                    v22 += 1;
                                } while (v26 <= v24);
                            }
                            require(bool(_geneScience.code.size));
                            v27, /* uint256 */ v28 = _geneScience.getSex().gas(msg.gas);
                            require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(RETURNDATASIZE() >= 32);
                            if (bool(v28 + v21 == 1)) {
                                return 1;
                            } else {
                                return 0;
                            }
                        } else {
                            return 0;
                        }
                    } else {
                        return 0;
                    }
                } else {
                    return 1;
                }
            } else {
                return 0;
            }
        } else {
            return 0;
        }
    } else {
        return 0;
    }
}

function approve(address varg0, uint256 varg1) public nonPayable { 
    require(bool(!_paused));
    require(bool(address(address(_pandaIndexToOwner[varg1])) == address(msg.sender)));
    _pandaIndexToApproved[varg1] = varg0 | bytes12(_pandaIndexToApproved[varg1]);
    emit Approval(msg.sender, varg0, varg1);
}

function ceoAddress() public nonPayable { 
    return _ceoAddress;
}

function GEN0_TOTAL_COUNT() public nonPayable { 
    return 16200;
}

function totalSupply() public nonPayable { 
    return _totalSupply.length - 1;
}

function isPregnant(uint256 varg0) public nonPayable { 
    require(bool(varg0 > 0));
    assert(bool(varg0 < _totalSupply.length));
    return bool(uint32(uint32(_totalSupply[varg0].field2 >> 192)) != 0);
}

function siringAuction() public nonPayable { 
    return _siringAuction;
}

function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(bool(!_paused));
    require(bool(address(address(varg1)) != address(0x0)));
    require(bool(address(address(varg1)) != address(this)));
    require(bool(address(address(_pandaIndexToApproved[varg2])) == address(msg.sender)));
    require(bool(address(address(_pandaIndexToOwner[varg2])) == address(address(varg0))));
    _balanceOf[varg1] += 1;
    _pandaIndexToOwner[varg2] = varg1 | bytes12(_pandaIndexToOwner[varg2]);
    if (!bool(address(address(varg0)) == address(0x0))) {
        _balanceOf[varg0] = _balanceOf[varg0] - 1;
        _sireAllowedToAddress[varg2] = bytes12(_sireAllowedToAddress[varg2]);
        _pandaIndexToApproved[varg2] = bytes12(_pandaIndexToApproved[varg2]);
    }
    emit Transfer(varg0, varg1, varg2);
}

function setGeneScienceAddress(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(bool((address(address(varg0))).code.size));
    v0, /* bool */ v1 = varg0.isGeneScience().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool(v1));
    _geneScience = varg0;
}

function setCEO(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(bool(address(address(varg0)) != address(0x0)));
    _ceoAddress = varg0;
}

function setCOO(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(bool(address(address(varg0)) != address(0x0)));
    _cooAddress = varg0;
}

function unpause() public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(_paused);
    _paused = 0;
}

function sireAllowedToAddress(uint256 varg0) public nonPayable { 
    return address(_sireAllowedToAddress[varg0]);
}

function canBreedWith(uint256 varg0, uint256 varg1) public nonPayable { 
    require(bool(varg0 > 0));
    require(bool(varg1 > 0));
    assert(bool(varg0 < _totalSupply.length));
    assert(bool(varg1 < _totalSupply.length));
    v0 = v1 = 0x392e(varg1, 3 * varg1 + keccak256(7), varg0, 3 * varg0 + keccak256(7));
    if (v1) {
        v0 = v2 = address(_pandaIndexToOwner[varg0]) == address(_pandaIndexToOwner[varg1]);
        if (address(_pandaIndexToOwner[varg0]) != address(_pandaIndexToOwner[varg1])) {
            v0 = address(_sireAllowedToAddress[varg1]) == address(_pandaIndexToOwner[varg0]);
        }
    }
    return bool(v0);
}

function setAutoBirthFee(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _cooAddress));
    _autoBirthFee = varg0;
}

function approveSiring(address varg0, uint256 varg1) public nonPayable { 
    require(bool(!_paused));
    require(bool(address(address(_pandaIndexToOwner[varg1])) == address(msg.sender)));
    _sireAllowedToAddress[varg1] = varg0 | bytes12(_sireAllowedToAddress[varg1]);
}

function setCFO(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(bool(address(address(varg0)) != address(0x0)));
    _cfoAddress = varg0;
}

function getWizzTypeOf(uint256 varg0) public nonPayable { 
    v0 = new struct(2);
    MEM[v0 len 64] = this.code[this.code.size len 64];
    MEM[MEM[64]] = v0;
    MEM[32 + MEM[64]] = uint64(0);
    MEM[64 + MEM[64]] = uint64(0);
    MEM[96 + MEM[64]] = uint32(0);
    MEM[128 + MEM[64]] = uint32(0);
    MEM[160 + MEM[64]] = uint32(0);
    MEM[192 + MEM[64]] = uint16(0);
    MEM[224 + MEM[64]] = uint16(0);
    assert(bool(varg0 < _totalSupply.length));
    v1 = v2 = 3 * varg0 + keccak256(7) + 0;
    v3 = v4 = new struct(2);
    if (2) {
        do {
            MEM[v3] = STORAGE[v1];
            v3 += 32;
            v1 += 1;
        } while (v4 + 64 <= v3);
    }
    MEM[32 + MEM[64]] = uint64(_totalSupply[varg0].field2);
    MEM[64 + MEM[64]] = uint64(_totalSupply[varg0].field2 >> 64);
    MEM[96 + MEM[64]] = uint32(_totalSupply[varg0].field2 >> 128);
    MEM[128 + MEM[64]] = uint32(_totalSupply[varg0].field2 >> 160);
    MEM[160 + MEM[64]] = uint32(_totalSupply[varg0].field2 >> 192);
    MEM[192 + MEM[64]] = uint16(_totalSupply[varg0].field2 >> 224);
    MEM[224 + MEM[64]] = uint16(_totalSupply[varg0].field2 >> 240);
    v5 = v6 = 0;
    while (v5 < 64) {
        MEM[4 + MEM[64] + v5] = MEM[v4 + v5];
        v5 = v5 + 32;
    }
    require(bool(_geneScience.code.size));
    v7, /* uint256 */ v8 = _geneScience.getWizzType().gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    return v8;
}

function setSecondsPerBlock(uint256 varg0) public nonPayable { 
    v0 = v1 = msg.sender == _cooAddress;
    if (msg.sender != _cooAddress) {
        v0 = v2 = msg.sender == _ceoAddress;
    }
    if (!v0) {
        v0 = v3 = msg.sender == _cfoAddress;
    }
    require(bool(v0));
    assert(bool(0 < 9));
    require(bool(varg0 < stor_4_0_3));
    _secondsPerBlock = varg0;
}

function paused() public nonPayable { 
    return _paused;
}

function ownerOf(uint256 varg0) public nonPayable { 
    require(bool(address(address(_pandaIndexToOwner[varg0])) != address(0x0)));
    return address(_pandaIndexToOwner[varg0]);
}

function balanceOf(address varg0) public nonPayable { 
    return _balanceOf[varg0];
}

function wizzPandaQuota(uint256 varg0) public nonPayable { 
    return _wizzPandaQuota[varg0];
}

function wizzPandaCount(uint256 varg0) public nonPayable { 
    return _wizzPandaCount[varg0];
}

function pandaIndexToOwner(uint256 varg0) public nonPayable { 
    return address(_pandaIndexToOwner[varg0]);
}

function secondsPerBlock() public nonPayable { 
    return _secondsPerBlock;
}

function getWizzPandaQuotaOf(uint256 varg0) public nonPayable { 
    return _wizzPandaQuota[varg0];
}

function pause() public nonPayable { 
    v0 = v1 = msg.sender == _cooAddress;
    if (msg.sender != _cooAddress) {
        v0 = v2 = msg.sender == _ceoAddress;
    }
    if (!v0) {
        v0 = v3 = msg.sender == _cfoAddress;
    }
    require(bool(v0));
    require(bool(!_paused));
    _paused = 1;
}

function tokensOfOwner(address varg0) public nonPayable { 
    if (_balanceOf[varg0] != 0) {
        v0 = v1 = new uint256[](_balanceOf[varg0]);
        if (_balanceOf[varg0]) {
            MEM[(v1.data) len (_balanceOf[varg0] << 5)] = this.code[this.code.size len (_balanceOf[varg0] << 5)];
        }
        v2 = v3 = 0;
        v4 = v5 = 1;
        while (!bool(v4 > _totalSupply.length - 1)) {
            if (address(_pandaIndexToOwner[v4]) == varg0) {
                assert(bool(v2 < v1.length));
                v1[v2] = v4;
                v2 += 1;
            }
            v4 += 1;
        }
    } else {
        v0 = v6 = new uint256[](0);
        if (0) {
            MEM[(v6.data) len 0] = this.code[this.code.size len 0];
            v7 = v6.data;
        }
    }
    v8 = new uint256[](MEM[v0]);
    v9 = v10 = 0;
    while (v9 < MEM[v0] << 5) {
        MEM[v8.data + v9] = MEM[32 + v0 + v9];
        v9 = v9 + 32;
    }
    return v8;
}

function saleAuctionERC20() public nonPayable { 
    return _saleAuctionERC20;
}

function symbol() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    if (2) {
        MEM[v0.data] = 0x5045000000000000000000000000000000000000000000000000000000000000;
    }
    return v0;
}

function cooldowns(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < 9));
    return uint32(STORAGE[(varg0 >> 3) + 4] / 256 ** (varg0 % 8 << 2));
}

function transfer(address varg0, uint256 varg1) public nonPayable { 
    require(bool(!_paused));
    require(bool(address(address(varg0)) != address(0x0)));
    require(bool(address(address(varg0)) != address(this)));
    require(bool(address(address(varg0)) != _saleAuction));
    require(bool(address(address(varg0)) != _siringAuction));
    require(bool(address(address(_pandaIndexToOwner[varg1])) == address(msg.sender)));
    _balanceOf[varg0] += 1;
    _pandaIndexToOwner[varg1] = varg0 | bytes12(_pandaIndexToOwner[varg1]);
    if (!bool(address(msg.sender) == address(0x0))) {
        _balanceOf[msg.sender] = _balanceOf[msg.sender] - 1;
        _sireAllowedToAddress[varg1] = bytes12(_sireAllowedToAddress[varg1]);
        _pandaIndexToApproved[varg1] = bytes12(_pandaIndexToApproved[varg1]);
    }
    emit Transfer(msg.sender, varg0, varg1);
}

function cooAddress() public nonPayable { 
    return _cooAddress;
}

function autoBirthFee() public nonPayable { 
    return _autoBirthFee;
}

function setTotalWizzPandaOf(uint256 varg0, uint256 varg1) public nonPayable { 
    v0 = v1 = msg.sender == _cooAddress;
    if (msg.sender != _cooAddress) {
        v0 = v2 = msg.sender == _ceoAddress;
    }
    if (!v0) {
        v0 = v3 = msg.sender == _cfoAddress;
    }
    require(bool(v0));
    require(bool(_wizzPandaQuota[varg0] == 0));
    require(bool(varg1 == uint32(varg1)));
    _wizzPandaQuota[varg0] = varg1;
}

function pandaIndexToApproved(uint256 varg0) public nonPayable { 
    return address(_pandaIndexToApproved[varg0]);
}

function GENSIS_TOTAL_COUNT() public nonPayable { 
    return 100;
}

function isReadyToBreed(uint256 varg0) public nonPayable { 
    require(bool(varg0 > 0));
    assert(bool(varg0 < _totalSupply.length));
    v0 = v1 = 3 * varg0 + keccak256(7) + 0;
    v2 = v3 = new struct(2);
    if (2) {
        do {
            MEM[v2] = STORAGE[v0];
            v2 += 32;
            v0 += 1;
        } while (v3 + 64 <= v2);
    }
    MEM[MEM[64]] = v3;
    MEM[32 + MEM[64]] = uint64(_totalSupply[varg0].field2);
    MEM[96 + MEM[64]] = uint32(_totalSupply[varg0].field2 >> 128);
    MEM[128 + MEM[64]] = uint32(_totalSupply[varg0].field2 >> 160);
    MEM[192 + MEM[64]] = uint16(_totalSupply[varg0].field2 >> 224);
    MEM[224 + MEM[64]] = uint16(_totalSupply[varg0].field2 >> 240);
    v4 = v5 = uint32(_totalSupply[varg0].field2 >> 192) == 0;
    if (v5) {
        v4 = uint64(_totalSupply[varg0].field2 >> 64) <= uint64(block.number);
    }
    return bool(v4);
}

function saleAuction() public nonPayable { 
    return _saleAuction;
}

function gen0CreatedCount() public nonPayable { 
    return _gen0CreatedCount;
}

function geneScience() public nonPayable { 
    return _geneScience;
}

function giveBirth(uint256 varg0, uint256[2] varg1, uint256[2] varg2) public nonPayable { 
    MEM[64] = MEM[64] + 64;
    MEM[(MEM[64]) len 64] = this.code[this.code.size len 64];
    require(bool(!_paused));
    v0 = v1 = msg.sender == _cooAddress;
    if (msg.sender != _cooAddress) {
        v0 = v2 = msg.sender == _ceoAddress;
    }
    if (!v0) {
        v0 = v3 = msg.sender == _cfoAddress;
    }
    require(bool(v0));
    assert(bool(varg0 < _totalSupply.length));
    v4 = 3 * varg0 + keccak256(7);
    require(bool(uint64(uint64(_totalSupply[varg0].field2)) != 0));
    v5 = v6 = v4 + 0;
    v7 = v8 = new struct(2);
    if (2) {
        do {
            MEM[v7] = STORAGE[v5];
            v7 += 32;
            v5 += 1;
        } while (v8 + 64 <= v7);
    }
    MEM[MEM[64]] = v8;
    MEM[32 + MEM[64]] = uint64(_totalSupply[varg0].field2);
    MEM[96 + MEM[64]] = uint32(_totalSupply[varg0].field2 >> 128);
    MEM[128 + MEM[64]] = uint32(_totalSupply[varg0].field2 >> 160);
    MEM[192 + MEM[64]] = uint16(_totalSupply[varg0].field2 >> 224);
    MEM[224 + MEM[64]] = uint16(_totalSupply[varg0].field2 >> 240);
    v9 = v10 = uint32(_totalSupply[varg0].field2 >> 192) != 0;
    if (!bool(uint32(uint32(uint32(uint32(_totalSupply[varg0].field2 >> 192)))) == 0)) {
        v9 = v11 = uint64(_totalSupply[varg0].field2 >> 64) <= uint64(block.number);
    }
    require(bool(v9));
    assert(bool(uint32(uint32(_totalSupply[varg0].field2 >> 192)) < _totalSupply.length));
    v12 = v13 = uint16(_totalSupply[varg0].field2 >> 240);
    if (uint16(_totalSupply[uint32(uint32(_totalSupply[varg0].field2 >> 192))].field2 >> 240) > uint16(_totalSupply[varg0].field2 >> 240)) {
        v12 = v14 = uint16(_totalSupply[uint32(uint32(_totalSupply[varg0].field2 >> 192))].field2 >> 240);
    }
    v15 = v16 = MEM[64];
    CALLDATACOPY(v16, 36, 64);
    v17 = v18 = 0;
    assert(bool(0 < 2));
    v19 = v20 = 0 + (3 * uint32(_totalSupply[varg0].field2 >> 192) + keccak256(7));
    v21 = v22 = 4 + MEM[64];
    if (2) {
        v21 = v23 = v22 + 64;
        do {
            MEM[v21] = STORAGE[v19];
            v21 += 32;
            v19 += 1;
        } while (v23 <= v21);
    }
    require(bool(_geneScience.code.size));
    v24, /* uint256 */ v25 = _geneScience.getPureFromGene().gas(msg.gas);
    require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    v26 = v27 = 0 + v4;
    v28 = v29 = 4 + MEM[64];
    if (2) {
        v28 = v30 = v29 + 64;
        do {
            MEM[v28] = STORAGE[v26];
            v28 += 32;
            v26 += 1;
        } while (v30 <= v28);
    }
    require(bool(_geneScience.code.size));
    v31, /* uint256 */ v32 = _geneScience.getPureFromGene().gas(msg.gas);
    require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    v32 = v33.length;
    assert(bool(2));
    assert(bool(1 < 2));
    if (bool((v32 + v25 >> 1) + varg1 < uint16(v12 + 1) * varg2)) {
        v34 = v35 = 0;
    } else {
        assert(bool(1 < 2));
        v34 = v36 = (v32 + v25 >> 1) + varg1 - uint16(v12 + 1) * varg2;
    }
    v37 = v38 = uint16(v12) == 0;
    if (v38) {
        v37 = v39 = _gen0CreatedCount == 16200;
    }
    if (v37) {
        v34 = v40 = 0;
    }
    assert(bool(100));
    if (keccak256(uint256(block.blockhash(block.number - 2)), block.timestamp) % 100 >= v34) {
        emit Abortion(address(_pandaIndexToOwner[varg0]), varg0, uint32(_totalSupply[varg0].field2 >> 192));
    } else {
        v41 = new struct(2);
        MEM[v41 len 64] = this.code[this.code.size len 64];
        MEM[MEM[64]] = v41;
        MEM[32 + MEM[64]] = uint64(0);
        MEM[64 + MEM[64]] = uint64(0);
        MEM[96 + MEM[64]] = uint32(0);
        MEM[128 + MEM[64]] = uint32(0);
        MEM[160 + MEM[64]] = uint32(0);
        MEM[192 + MEM[64]] = uint16(0);
        MEM[224 + MEM[64]] = uint16(0);
        require(bool(varg0 == uint32(varg0)));
        require(bool(uint32(uint32(_totalSupply[varg0].field2 >> 192)) == uint32(uint32(uint32(_totalSupply[varg0].field2 >> 192)))));
        require(bool(uint16(v12 + 1) == uint16(uint16(v12 + 1))));
        v42 = v43 = 0;
        if (_totalSupply.length > 0) {
            v44 = v45 = 0;
            while (v44 < 64) {
                MEM[4 + MEM[64] + v44] = MEM[v16 + v44];
                v44 = v44 + 32;
            }
            require(bool(_geneScience.code.size));
            v46, v47 = _geneScience.getPureFromGene(0xdc1279d400000000000000000000000000000000000000000000000000000000, uint32(0xdc1279d4), 0xdc1279d400000000000000000000000000000000000000000000000000000000).gas(msg.gas);
            require(bool(v46), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(RETURNDATASIZE() >= 32);
            if (uint16(v47) == 0) {
                v47 = v48 = 1;
            }
            assert(bool(uint16(v47)));
            assert(bool(10));
            if (uint16(uint16(1000 / uint16(v47)) % 10) >= 5) {
                assert(bool(10));
                v49 = uint16(1000 / uint16(v47)) / 10 + 1;
            } else {
                assert(bool(10));
                v49 = v50 = uint16(1000 / uint16(v47)) / 10;
            }
            v42 = v49 - 1;
            if (uint16(v42) > 8) {
                v42 = v51 = 8;
            }
            v52 = v53 = 0;
            while (v52 < 64) {
                MEM[4 + MEM[64] + v52] = MEM[v16 + v52];
                v52 = v52 + 32;
            }
            require(bool(_geneScience.code.size));
            v54, v55 = _geneScience.getWizzType(0x7c59f82800000000000000000000000000000000000000000000000000000000, uint32(0x7c59f828), 0x7c59f82800000000000000000000000000000000000000000000000000000000).gas(msg.gas);
            require(bool(v54), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(RETURNDATASIZE() >= 32);
            v56 = v57 = v55 > 0;
            if (v57) {
                v56 = _wizzPandaQuota[v55] <= _wizzPandaCount[v55];
            }
            if (v56) {
                v58 = v59 = 0;
                while (v58 < 64) {
                    MEM[4 + MEM[64] + v58] = MEM[v16 + v58];
                    v58 = v58 + 32;
                }
                require(bool(_geneScience.code.size));
                v60 = _geneScience.clearWizzType(0x3010b5cd00000000000000000000000000000000000000000000000000000000, uint32(0x3010b5cd), 0x3010b5cd00000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                require(bool(v60), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                v15 = MEM[64];
                MEM[64] = v15 + (RETURNDATASIZE() + 31 & ~0x1f);
                require(RETURNDATASIZE() >= 64);
                v55 = v61 = 0;
            }
            if (v55 == 1) {
                v42 = v62 = 5;
            }
            if (v55 > 0) {
                _wizzPandaCount[v55] = _wizzPandaCount[v55] + 1;
            }
            v63 = v64 = uint16(v12 + 1) <= 1;
            if (!bool(uint16(v12 + 1) > 1)) {
                v63 = v55 != 1;
            }
            if (v63) {
                require(bool(_gen0CreatedCount < 16200));
                _gen0CreatedCount += 1;
            }
        }
        MEM[64] = MEM[64] + 256;
        _totalSupply = _totalSupply.length + 1;
        v65 = v66 = 0 + (3 * (_totalSupply.length + 1 - 1) + keccak256(7));
        if (2) {
            while (v67 + 64 > v68) {
                STORAGE[v65] = MEM[v68];
                v68 += 32;
                v65 += 1;
            }
        }
        while (v66 + 2 > v65) {
            STORAGE[v65] = 0;
            v65 += 1;
        }
        _totalSupply[_totalSupply.length + 1 - 1].field2 = uint64(block.timestamp) | bytes24(_totalSupply[_totalSupply.length + 1 - 1].field2);
        _totalSupply[_totalSupply.length + 1 - 1].field2 = uint64(0) << 64 | ~0xffffffffffffffff0000000000000000 & _totalSupply[_totalSupply.length + 1 - 1].field2;
        _totalSupply[_totalSupply.length + 1 - 1].field2 = uint32(varg0) << 128 | ~0xffffffff00000000000000000000000000000000 & _totalSupply[_totalSupply.length + 1 - 1].field2;
        _totalSupply[_totalSupply.length + 1 - 1].field2 = uint32(_totalSupply[varg0].field2 >> 192) << 160 | ~0xffffffff0000000000000000000000000000000000000000 & _totalSupply[_totalSupply.length + 1 - 1].field2;
        _totalSupply[_totalSupply.length + 1 - 1].field2 = uint32(0) << 192 | ~0xffffffff000000000000000000000000000000000000000000000000 & _totalSupply[_totalSupply.length + 1 - 1].field2;
        _totalSupply[_totalSupply.length + 1 - 1].field2 = uint16(v42) << 224 | ~0xffff00000000000000000000000000000000000000000000000000000000 & _totalSupply[_totalSupply.length + 1 - 1].field2;
        _totalSupply[_totalSupply.length + 1 - 1].field2 = uint16(v12 + 1) << 240 | uint240(_totalSupply[_totalSupply.length + 1 - 1].field2);
        v17 = _totalSupply.length + 1 - 1;
        require(bool(v17 == uint32(v17)));
        v69 = v70 = 0;
        while (v69 < 64) {
            MEM[128 + MEM[64] + v69] = MEM[v15 + v69];
            v69 = v69 + 32;
        }
        emit Birth(address(map_14[varg0]), v17, uint32(varg0), uint32(_totalSupply[varg0].field2 >> 192));
        _balanceOf[address(map_14[varg0])] += 1;
        _pandaIndexToOwner[v17] = address(map_14[varg0]) | bytes12(_pandaIndexToOwner[v17]);
        if (!bool(address(0x0) == address(0x0))) {
            _balanceOf[address(0x0)] = _balanceOf[address(0x0)] - 1;
            _sireAllowedToAddress[v17] = bytes12(_sireAllowedToAddress[v17]);
            _pandaIndexToApproved[v17] = bytes12(_pandaIndexToApproved[v17]);
        }
        emit Transfer(address(0x0), address(map_14[varg0]), v17);
    }
    _totalSupply[varg0].field2 = ~0xffffffff000000000000000000000000000000000000000000000000 & _totalSupply[varg0].field2;
    _pregnantPandas = _pregnantPandas - 1;
    v71 = msg.sender.call().value(_autoBirthFee).gas(!_autoBirthFee * 2300);
    map_14[varg0] = bytes12(map_14[varg0]);
    return v17;
}

function getWizzPandaCountOf(uint256 varg0) public nonPayable { 
    return _wizzPandaCount[varg0];
}

function breedWithAuto(uint256 varg0, uint256 varg1) public payable { 
    v0 = v1 = 0;
    require(bool(!_paused));
    require(bool(msg.value >= _autoBirthFee));
    require(bool(address(address(_pandaIndexToOwner[varg0])) == address(msg.sender)));
    v2 = v3 = address(_pandaIndexToOwner[varg0]) == address(_pandaIndexToOwner[varg1]);
    if (address(_pandaIndexToOwner[varg0]) != address(_pandaIndexToOwner[varg1])) {
        v2 = address(_sireAllowedToAddress[varg1]) == address(_pandaIndexToOwner[varg0]);
    }
    require(bool(v2));
    assert(bool(varg0 < _totalSupply.length));
    v4 = v5 = 13300;
    v6 = v7 = MEM[64];
    MEM[64] = v7 + 256;
    v8 = v9 = 3 * varg0 + keccak256(7) + 0;
    v10 = v11 = new struct(2);
    if (2) {
        do {
            MEM[v10] = STORAGE[v8];
            v10 += 32;
            v8 += 1;
        } while (v11 + 64 <= v10);
    }
    MEM[v7] = v11;
    MEM[32 + v7] = uint64(_totalSupply[varg0].field2);
    MEM[64 + v7] = uint64(_totalSupply[varg0].field2 >> 64);
    MEM[96 + v7] = uint32(_totalSupply[varg0].field2 >> 128);
    MEM[128 + v7] = uint32(_totalSupply[varg0].field2 >> 160);
    MEM[160 + v7] = uint32(_totalSupply[varg0].field2 >> 192);
    MEM[192 + v7] = uint16(_totalSupply[varg0].field2 >> 224);
    MEM[224 + v7] = uint16(_totalSupply[varg0].field2 >> 240);
    while (1) {
        v12 = v13 = uint32(MEM[160 + v6]) == 0;
        if (uint32(MEM[160 + v6]) != 0) {
            // Unknown jump to Block 0x3e7a0x320aB0xfe3. Refer to 3-address code (TAC);
        }
        v12 = uint64(MEM[64 + v6]) <= uint64(block.number);
        // Unknown jump to Block {'0x33f4B0xfe3', '0x358fB0xfe3'}. Refer to 3-address code (TAC);
        require(bool(v12));
        assert(bool(varg1 < _totalSupply.length));
        v0 = v14 = 3 * varg1 + keccak256(7);
        v4 = v15 = 13711;
        v6 = v16 = MEM[64];
        MEM[64] = v16 + 256;
        v17 = v18 = v14 + 0;
        v19 = v20 = new struct(2);
        if (2) {
            do {
                MEM[v19] = STORAGE[v17];
                v19 += 32;
                v17 += 1;
            } while (v20 + 64 <= v19);
        }
        MEM[v16] = v20;
        MEM[32 + v16] = uint64(_totalSupply[varg1].field2);
        MEM[64 + v16] = uint64(_totalSupply[varg1].field2 >> 64);
        MEM[96 + v16] = uint32(_totalSupply[varg1].field2 >> 128);
        MEM[128 + v16] = uint32(_totalSupply[varg1].field2 >> 160);
        MEM[160 + v16] = uint32(_totalSupply[varg1].field2 >> 192);
        MEM[192 + v16] = uint16(_totalSupply[varg1].field2 >> 224);
        MEM[224 + v16] = uint16(_totalSupply[varg1].field2 >> 240);
    }
    require(bool(v12));
    v21 = 0x392e(varg1, v0, varg0, 3 * varg0 + keccak256(7));
    require(bool(v21));
    assert(bool(varg0 < _totalSupply.length));
    v22 = v23 = 0 + (3 * varg0 + keccak256(7));
    v24 = v25 = 4 + MEM[64];
    if (2) {
        v24 = v26 = v25 + 64;
        do {
            MEM[v24] = STORAGE[v22];
            v24 += 32;
            v22 += 1;
        } while (v26 <= v24);
    }
    require(bool(_geneScience.code.size));
    v27, /* uint256 */ v28 = _geneScience.getSex().gas(msg.gas);
    require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    if (v28 == 1) {
    }
    assert(bool(v29 < _totalSupply.length));
    assert(bool(v29 < _totalSupply.length));
    _totalSupply[v29].field2 = uint32(v29) << 192 | ~0xffffffff000000000000000000000000000000000000000000000000 & _totalSupply[v29].field2;
    assert(bool(uint16(uint16(_totalSupply[v29].field2 >> 224)) < 9));
    assert(bool(_secondsPerBlock));
    _totalSupply[v29].field2 = uint64(uint32(uint32(STORAGE[(uint16(uint16(_totalSupply[v29].field2 >> 224)) >> 3) + 4] / 256 ** (uint16(uint16(_totalSupply[v29].field2 >> 224)) % 8 << 2))) / _secondsPerBlock + block.number) << 64 | ~0xffffffffffffffff0000000000000000 & _totalSupply[v29].field2;
    v30 = v31 = uint16(_totalSupply[v29].field2 >> 224) < 8;
    if (v31) {
        v32 = 0 + (3 * v29 + keccak256(7));
        v33 = 4 + MEM[64];
        if (2) {
            v33 = v34 = v33 + 64;
            do {
                MEM[v33] = STORAGE[v32];
                v33 += 32;
                v32 += 1;
            } while (v34 <= v33);
        }
        require(bool(_geneScience.code.size));
        v35, /* uint256 */ v36 = _geneScience.getWizzType().gas(msg.gas);
        require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        v30 = v36 != 1;
    }
    if (v30) {
        _totalSupply[v29].field2 = uint16(uint16(_totalSupply[v29].field2 >> 224) + 1) << 224 | ~0xffff00000000000000000000000000000000000000000000000000000000 & _totalSupply[v29].field2;
    }
    assert(bool(uint16(uint16(_totalSupply[v29].field2 >> 224)) < 9));
    assert(bool(_secondsPerBlock));
    _totalSupply[v29].field2 = uint64(uint32(uint32(STORAGE[(uint16(uint16(_totalSupply[v29].field2 >> 224)) >> 3) + 4] / 256 ** (uint16(uint16(_totalSupply[v29].field2 >> 224)) % 8 << 2))) / _secondsPerBlock + block.number) << 64 | ~0xffffffffffffffff0000000000000000 & _totalSupply[v29].field2;
    v37 = v38 = uint16(_totalSupply[v29].field2 >> 224) < 8;
    if (v38) {
        v39 = 0 + (3 * v29 + keccak256(7));
        v40 = 4 + MEM[64];
        if (2) {
            v40 = v41 = v40 + 64;
            do {
                MEM[v40] = STORAGE[v39];
                v40 += 32;
                v39 += 1;
            } while (v41 <= v40);
        }
        require(bool(_geneScience.code.size));
        v42, /* uint256 */ v43 = _geneScience.getWizzType().gas(msg.gas);
        require(bool(v42), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        v37 = v43 != 1;
    }
    if (v37) {
        _totalSupply[v29].field2 = uint16(uint16(_totalSupply[v29].field2 >> 224) + 1) << 224 | ~0xffff00000000000000000000000000000000000000000000000000000000 & _totalSupply[v29].field2;
    }
    _sireAllowedToAddress[v29] = bytes12(_sireAllowedToAddress[v29]);
    _sireAllowedToAddress[v29] = bytes12(_sireAllowedToAddress[v29]);
    _pregnantPandas += 1;
    map_14[v29] = msg.sender | bytes12(map_14[v29]);
    emit Pregnant(address(_pandaIndexToOwner[v29]), v29, v29, uint64(_totalSupply[v29].field2 >> 64));
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = uint32(function_selector >> 224);
        if (0x1ffc9a7 == v0) {
            supportsInterface(bytes4);
        } else if (0x519ce79 == v0) {
            cfoAddress();
        } else if (0x6fdde03 == v0) {
            name();
        } else if (0x95ea7b3 == v0) {
            approve(address,uint256);
        } else if (0xa0f8168 == v0) {
            ceoAddress();
        } else if (0x16b64898 == v0) {
            GEN0_TOTAL_COUNT();
        } else if (0x18160ddd == v0) {
            totalSupply();
        } else if (0x1940a936 == v0) {
            isPregnant(uint256);
        } else if (0x21717ebf == v0) {
            siringAuction();
        } else if (0x23b872dd == v0) {
            transferFrom(address,address,uint256);
        } else if (0x24e7a38a == v0) {
            setGeneScienceAddress(address);
        } else if (0x27d7874c == v0) {
            setCEO(address);
        } else if (0x2ba73c15 == v0) {
            setCOO(address);
        } else if (0x3f4ba83a == v0) {
            unpause();
        } else if (0x46116e6f == v0) {
            sireAllowedToAddress(uint256);
        } else if (0x46d22c70 == v0) {
            canBreedWith(uint256,uint256);
        } else if (0x4b85fd55 == v0) {
            setAutoBirthFee(uint256);
        } else if (0x4dfff04f == v0) {
            approveSiring(address,uint256);
        } else if (0x4e0a3379 == v0) {
            setCFO(address);
        } else if (0x4e61efc5 == v0) {
            getWizzTypeOf(uint256);
        } else if (0x5663896e == v0) {
            setSecondsPerBlock(uint256);
        } else if (0x5c975abb == v0) {
            paused();
        } else if (0x6352211e == v0) {
            ownerOf(uint256);
        } else if (0x70a08231 == v0) {
            balanceOf(address);
        } else if (0x7420d16c == v0) {
            wizzPandaQuota(uint256);
        } else if (0x74ea167f == v0) {
            wizzPandaCount(uint256);
        } else if (0x756d77fc == v0) {
            pandaIndexToOwner(uint256);
        } else if (0x7a7d4937 == v0) {
            secondsPerBlock();
        } else if (0x818438ca == v0) {
            getWizzPandaQuotaOf(uint256);
        } else if (0x8456cb59 == v0) {
            pause();
        } else if (0x8462151c == v0) {
            tokensOfOwner(address);
        } else if (0x88524780 == v0) {
            saleAuctionERC20();
        } else if (0x95d89b41 == v0) {
            symbol();
        } else if (0x9d6fac6f == v0) {
            cooldowns(uint256);
        } else if (0xa9059cbb == v0) {
            transfer(address,uint256);
        } else if (0xb047fb50 == v0) {
            cooAddress();
        } else if (0xb0c35c05 == v0) {
            autoBirthFee();
        } else if (0xb380beac == v0) {
            setTotalWizzPandaOf(uint256,uint256);
        } else if (0xc2124452 == v0) {
            pandaIndexToApproved(uint256);
        } else if (0xd0774f74 == v0) {
            GENSIS_TOTAL_COUNT();
        } else if (0xd3e6f49f == v0) {
            isReadyToBreed(uint256);
        } else if (0xe6cbe351 == v0) {
            saleAuction();
        } else if (0xf1ca9410 == v0) {
            gen0CreatedCount();
        } else if (0xf2b47d52 == v0) {
            geneScience();
        } else if (0xf3746947 == v0) {
            giveBirth(uint256,uint256[2],uint256[2]);
        } else if (0xf3817b23 == v0) {
            getWizzPandaCountOf(uint256);
        } else if (0xf7d8c883 == v0) {
            breedWithAuto(uint256,uint256);
        } else if (0xffa40a4c == v0) {
            pregnantPandas();
        }
    }
    ();
}
