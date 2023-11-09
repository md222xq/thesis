// Decompiled by library.dedaub.com
// 2023.11.08 21:30 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _gen0CreatedCount; // STORAGE[0x3]
uint256 _secondsPerBlock; // STORAGE[0x6]
struct_1509[] _totalSupply; // STORAGE[0x7]
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

function setSaleAuctionERC20Address(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(bool((address(address(varg0))).code.size));
    v0, /* bool */ v1 = varg0.isSaleClockAuctionERC20().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool(v1));
    _saleAuctionERC20 = varg0;
}

function switchSaleAuctionERC20For(address varg0, uint256 varg1) public nonPayable { 
    require(bool(address(msg.sender) == _cooAddress));
    require(bool(_saleAuctionERC20.code.size));
    v0 = _saleAuctionERC20.erc20ContractSwitch(varg0, varg1).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
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

function createGen0Auction(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _cooAddress));
    require(bool(address(address(_pandaIndexToOwner[varg0])) == address(msg.sender)));
    _pandaIndexToApproved[varg0] = _saleAuction | bytes12(_pandaIndexToApproved[varg0]);
    require(bool(_saleAuction.code.size));
    v0, /* uint128 */ v1 = _saleAuction.averageGen0SalePrice().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool(v1 == uint128(v1)));
    assert(bool(2));
    v2 = v3 = v1 + (v1 >> 1);
    if (v3 < 0x16345785d8a0000) {
        v2 = v4 = 0x16345785d8a0000;
    }
    require(bool(_saleAuction.code.size));
    v5 = _saleAuction.createGen0Auction(varg0, v2, 0, 0x15180, msg.sender).gas(msg.gas);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function GENSIS_TOTAL_COUNT() public nonPayable { 
    return 100;
}

function isReadyToBreed(uint256 varg0) public nonPayable { 
    v0 = 0x3f60(varg0);
    return bool(v0);
}

function saleAuction() public nonPayable { 
    return _saleAuction;
}

function OPEN_PACKAGE_PRICE() public nonPayable { 
    return 0x2386f26fc10000;
}

function bidOnSiringAuction(uint256 varg0, uint256 varg1) public payable { 
    require(bool(!_paused));
    require(bool(address(address(_pandaIndexToOwner[varg1])) == address(msg.sender)));
    v0 = 0x3f60(varg1);
    require(bool(v0));
    assert(bool(varg1 < _totalSupply.length));
    assert(bool(varg0 < _totalSupply.length));
    v1 = 0x52ef(varg0, 3 * varg0 + keccak256(7), varg1, 3 * varg1 + keccak256(7));
    require(bool(v1));
    require(bool(_siringAuction.code.size));
    v2, /* uint256 */ v3 = _siringAuction.getCurrentPrice(varg0).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool(msg.value >= v3 + _autoBirthFee));
    require(bool(_siringAuction.code.size));
    v4 = _siringAuction.bid(varg0).value(msg.value - _autoBirthFee).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v5 = v6 = uint32(varg1);
    v5 = v7 = uint32(varg0);
    assert(bool(v6 < _totalSupply.length));
    v8 = v9 = 0 + (3 * v6 + keccak256(7));
    v10 = v11 = 4 + MEM[64];
    if (2) {
        v10 = v12 = v11 + 64;
        do {
            MEM[v10] = STORAGE[v8];
            v10 += 32;
            v8 += 1;
        } while (v12 <= v10);
    }
    require(bool(_geneScience.code.size));
    v13, /* uint256 */ v14 = _geneScience.getSex(0xe6898a7d00000000000000000000000000000000000000000000000000000000, varg0, uint32(0xe6898a7d), 0xe6898a7d00000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    if (v14 == 1) {
    }
    assert(bool(v5 < _totalSupply.length));
    assert(bool(v5 < _totalSupply.length));
    _totalSupply[v5].field2 = uint32(v5) << 192 | ~0xffffffff000000000000000000000000000000000000000000000000 & _totalSupply[v5].field2;
    assert(bool(uint16(uint16(_totalSupply[v5].field2 >> 224)) < 9));
    assert(bool(_secondsPerBlock));
    _totalSupply[v5].field2 = uint64(uint32(uint32(STORAGE[(uint16(uint16(_totalSupply[v5].field2 >> 224)) >> 3) + 4] / 256 ** (uint16(uint16(_totalSupply[v5].field2 >> 224)) % 8 << 2))) / _secondsPerBlock + block.number) << 64 | ~0xffffffffffffffff0000000000000000 & _totalSupply[v5].field2;
    v15 = v16 = uint16(_totalSupply[v5].field2 >> 224) < 8;
    if (v16) {
        v17 = 0 + (3 * v5 + keccak256(7));
        v18 = 4 + MEM[64];
        if (2) {
            v18 = v19 = v18 + 64;
            do {
                MEM[v18] = STORAGE[v17];
                v18 += 32;
                v17 += 1;
            } while (v19 <= v18);
        }
        require(bool(_geneScience.code.size));
        v20, /* uint256 */ v21 = _geneScience.getWizzType(0x7c59f82800000000000000000000000000000000000000000000000000000000, varg0, uint32(0x7c59f828), 0x7c59f82800000000000000000000000000000000000000000000000000000000).gas(msg.gas);
        require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        v15 = v21 != 1;
    }
    if (v15) {
        _totalSupply[v5].field2 = uint16(uint16(_totalSupply[v5].field2 >> 224) + 1) << 224 | ~0xffff00000000000000000000000000000000000000000000000000000000 & _totalSupply[v5].field2;
    }
    assert(bool(uint16(uint16(_totalSupply[v5].field2 >> 224)) < 9));
    assert(bool(_secondsPerBlock));
    _totalSupply[v5].field2 = uint64(uint32(uint32(STORAGE[(uint16(uint16(_totalSupply[v5].field2 >> 224)) >> 3) + 4] / 256 ** (uint16(uint16(_totalSupply[v5].field2 >> 224)) % 8 << 2))) / _secondsPerBlock + block.number) << 64 | ~0xffffffffffffffff0000000000000000 & _totalSupply[v5].field2;
    v22 = v23 = uint16(_totalSupply[v5].field2 >> 224) < 8;
    if (v23) {
        v24 = 0 + (3 * v5 + keccak256(7));
        v25 = 4 + MEM[64];
        if (2) {
            v25 = v26 = v25 + 64;
            do {
                MEM[v25] = STORAGE[v24];
                v25 += 32;
                v24 += 1;
            } while (v26 <= v25);
        }
        require(bool(_geneScience.code.size));
        v27, /* uint256 */ v28 = _geneScience.getWizzType(0x7c59f82800000000000000000000000000000000000000000000000000000000, varg0, uint32(0x7c59f828), 0x7c59f82800000000000000000000000000000000000000000000000000000000).gas(msg.gas);
        require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        v22 = v28 != 1;
    }
    if (v22) {
        _totalSupply[v5].field2 = uint16(uint16(_totalSupply[v5].field2 >> 224) + 1) << 224 | ~0xffff00000000000000000000000000000000000000000000000000000000 & _totalSupply[v5].field2;
    }
    _sireAllowedToAddress[v5] = bytes12(_sireAllowedToAddress[v5]);
    _sireAllowedToAddress[v5] = bytes12(_sireAllowedToAddress[v5]);
    _pregnantPandas += 1;
    map_14[v5] = msg.sender | bytes12(map_14[v5]);
    emit Pregnant(address(_pandaIndexToOwner[v5]), v5, v5, uint64(_totalSupply[v5].field2 >> 64));
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
    v15 = new struct(2);
    CALLDATACOPY(v15, 36, 64);
    v16 = v17 = 0;
    assert(bool(0 < 2));
    v18 = v19 = 0 + (3 * uint32(_totalSupply[varg0].field2 >> 192) + keccak256(7));
    v20 = v21 = 4 + MEM[64];
    if (2) {
        v20 = v22 = v21 + 64;
        do {
            MEM[v20] = STORAGE[v18];
            v20 += 32;
            v18 += 1;
        } while (v22 <= v20);
    }
    require(bool(_geneScience.code.size));
    v23, /* uint256 */ v24 = _geneScience.getPureFromGene().gas(msg.gas);
    require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    v25 = v26 = 0 + v4;
    v27 = v28 = 4 + MEM[64];
    if (2) {
        v27 = v29 = v28 + 64;
        do {
            MEM[v27] = STORAGE[v25];
            v27 += 32;
            v25 += 1;
        } while (v29 <= v27);
    }
    require(bool(_geneScience.code.size));
    v30, /* uint256 */ v31 = _geneScience.getPureFromGene().gas(msg.gas);
    require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    v31 = v32.length;
    assert(bool(2));
    assert(bool(1 < 2));
    if (bool((v31 + v24 >> 1) + varg1 < uint16(v12 + 1) * varg2)) {
        v33 = v34 = 0;
    } else {
        assert(bool(1 < 2));
        v33 = v35 = (v31 + v24 >> 1) + varg1 - uint16(v12 + 1) * varg2;
    }
    v36 = v37 = uint16(v12) == 0;
    if (v37) {
        v36 = v38 = _gen0CreatedCount == 16200;
    }
    if (v36) {
        v33 = v39 = 0;
    }
    assert(bool(100));
    if (keccak256(uint256(block.blockhash(block.number - 2)), block.timestamp) % 100 >= v33) {
        emit Abortion(address(_pandaIndexToOwner[varg0]), varg0, uint32(_totalSupply[varg0].field2 >> 192));
    } else {
        v16 = v40 = 0x5808(address(map_14[varg0]), v15, uint16(v12 + 1), uint32(_totalSupply[varg0].field2 >> 192), varg0);
    }
    _totalSupply[varg0].field2 = ~0xffffffff000000000000000000000000000000000000000000000000 & _totalSupply[varg0].field2;
    _pregnantPandas = _pregnantPandas - 1;
    v41 = msg.sender.call().value(_autoBirthFee).gas(!_autoBirthFee * 2300);
    map_14[varg0] = bytes12(map_14[varg0]);
    return v16;
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
    v4 = v5 = 19893;
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
            // Unknown jump to Block 0x60af0x4bcbB0x14bd. Refer to 3-address code (TAC);
        }
        v12 = uint64(MEM[64 + v6]) <= uint64(block.number);
        // Unknown jump to Block {'0x4f50B0x14bd', '0x4db5B0x14bd'}. Refer to 3-address code (TAC);
        require(bool(v12));
        assert(bool(varg1 < _totalSupply.length));
        v0 = v14 = 3 * varg1 + keccak256(7);
        v4 = v15 = 20304;
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
    v21 = 0x52ef(varg1, v0, varg0, 3 * varg0 + keccak256(7));
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

function pregnantPandas() public nonPayable { 
    return _pregnantPandas;
}

function 0x1af6(uint256 varg0) private { 
    require(bool(varg0 > 0));
    assert(bool(varg0 < _totalSupply.length));
    return uint32(_totalSupply[varg0].field2 >> 192) != 0;
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

function 0x3f60(uint256 varg0) private { 
    require(bool(varg0 > 0));
    assert(bool(varg0 < _totalSupply.length));
    v0 = 3 * varg0 + keccak256(7);
    v1 = v2 = v0 + 0;
    v3 = v4 = new struct(2);
    if (2) {
        do {
            MEM[v3] = STORAGE[v1];
            v3 += 32;
            v1 += 1;
        } while (v4 + 64 <= v3);
    }
    MEM[MEM[64]] = v4;
    MEM[32 + MEM[64]] = uint64(_totalSupply[varg0].field2);
    MEM[96 + MEM[64]] = uint32(_totalSupply[varg0].field2 >> 128);
    MEM[128 + MEM[64]] = uint32(_totalSupply[varg0].field2 >> 160);
    MEM[192 + MEM[64]] = uint16(_totalSupply[varg0].field2 >> 224);
    MEM[224 + MEM[64]] = uint16(_totalSupply[varg0].field2 >> 240);
    v5 = uint32(_totalSupply[varg0].field2 >> 192) == 0;
    if (v5) {
        v5 = v6 = uint64(_totalSupply[varg0].field2 >> 64) <= uint64(block.number);
    }
    return v5;
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

function GEN0_STARTING_PRICE() public nonPayable { 
    return 0x16345785d8a0000;
}

function setSiringAuctionAddress(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(bool((address(address(varg0))).code.size));
    v0, /* bool */ v1 = varg0.isSiringClockAuction().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool(v1));
    _siringAuction = varg0;
}

function 0x52ef(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
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

function GEN0_TOTAL_COUNT() public nonPayable { 
    return 16200;
}

function 0x5808(uint256 varg0, struct(2) varg1, uint16 varg2, uint32 varg3, uint32 varg4) private { 
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
    require(bool(varg4 == uint32(varg4)));
    require(bool(varg3 == uint32(varg3)));
    require(bool(varg2 == uint16(varg2)));
    v1 = v2 = 0;
    if (_totalSupply.length > 0) {
        v3 = v4 = 0;
        while (v3 < 64) {
            MEM[4 + MEM[64] + v3] = MEM[varg1 + v3];
            v3 = v3 + 32;
        }
        require(bool(_geneScience.code.size));
        v5, v6 = _geneScience.getPureFromGene().gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        if (uint16(v6) == 0) {
            v6 = v7 = 1;
        }
        assert(bool(uint16(v6)));
        assert(bool(10));
        if (uint16(uint16(1000 / uint16(v6)) % 10) >= 5) {
            assert(bool(10));
            v8 = v9 = uint16(1000 / uint16(v6)) / 10 + 1;
        } else {
            assert(bool(10));
            v8 = v10 = uint16(1000 / uint16(v6)) / 10;
        }
        v1 = v11 = v8 - 1;
        if (uint16(v11) > 8) {
            v1 = v12 = 8;
        }
        v13 = v14 = 0;
        while (v13 < 64) {
            MEM[4 + MEM[64] + v13] = MEM[varg1 + v13];
            v13 = v13 + 32;
        }
        require(bool(_geneScience.code.size));
        v15, v16 = _geneScience.getWizzType().gas(msg.gas);
        require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        v17 = v18 = v16 > 0;
        if (v18) {
            v17 = v19 = _wizzPandaQuota[v16] <= _wizzPandaCount[v16];
        }
        if (v17) {
            v20 = v21 = 0;
            while (v20 < 64) {
                MEM[4 + MEM[64] + v20] = MEM[varg1 + v20];
                v20 = v20 + 32;
            }
            require(bool(_geneScience.code.size));
            v22 = _geneScience.clearWizzType().gas(msg.gas);
            require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            varg1 = v23 = MEM[64];
            MEM[64] = v23 + (RETURNDATASIZE() + 31 & ~0x1f);
            require(RETURNDATASIZE() >= 64);
            v16 = v24 = 0;
        }
        if (v16 == 1) {
            v1 = v25 = 5;
        }
        if (v16 > 0) {
            _wizzPandaCount[v16] = _wizzPandaCount[v16] + 1;
        }
        v26 = v27 = varg2 <= 1;
        if (!bool(varg2 > 1)) {
            v26 = v28 = v16 != 1;
        }
        if (v26) {
            require(bool(_gen0CreatedCount < 16200));
            _gen0CreatedCount += 1;
        }
    }
    MEM[64] = MEM[64] + 256;
    _totalSupply = _totalSupply.length + 1;
    v29 = v30 = 0 + (3 * (_totalSupply.length + 1 - 1) + keccak256(7));
    if (2) {
        while (v31 + 64 > v32) {
            STORAGE[v29] = MEM[v32];
            v32 += 32;
            v29 += 1;
        }
    }
    while (v30 + 2 > v29) {
        STORAGE[v29] = 0;
        v29 += 1;
    }
    _totalSupply[_totalSupply.length + 1 - 1].field2 = uint64(block.timestamp) | bytes24(_totalSupply[_totalSupply.length + 1 - 1].field2);
    _totalSupply[_totalSupply.length + 1 - 1].field2 = uint64(0) << 64 | ~0xffffffffffffffff0000000000000000 & _totalSupply[_totalSupply.length + 1 - 1].field2;
    _totalSupply[_totalSupply.length + 1 - 1].field2 = varg4 << 128 | ~0xffffffff00000000000000000000000000000000 & _totalSupply[_totalSupply.length + 1 - 1].field2;
    _totalSupply[_totalSupply.length + 1 - 1].field2 = varg3 << 160 | ~0xffffffff0000000000000000000000000000000000000000 & _totalSupply[_totalSupply.length + 1 - 1].field2;
    _totalSupply[_totalSupply.length + 1 - 1].field2 = uint32(0) << 192 | ~0xffffffff000000000000000000000000000000000000000000000000 & _totalSupply[_totalSupply.length + 1 - 1].field2;
    _totalSupply[_totalSupply.length + 1 - 1].field2 = uint16(v1) << 224 | ~0xffff00000000000000000000000000000000000000000000000000000000 & _totalSupply[_totalSupply.length + 1 - 1].field2;
    _totalSupply[_totalSupply.length + 1 - 1].field2 = varg2 << 240 | uint240(_totalSupply[_totalSupply.length + 1 - 1].field2);
    v33 = _totalSupply.length + 1 - 1;
    require(bool(v33 == uint32(v33)));
    v34 = v35 = 0;
    while (v34 < 64) {
        MEM[128 + MEM[64] + v34] = MEM[varg1 + v34];
        v34 = v34 + 32;
    }
    emit Birth(address(varg0), v33, varg4, varg3);
    _balanceOf[address(varg0)] += 1;
    _pandaIndexToOwner[v33] = address(varg0) | bytes12(_pandaIndexToOwner[v33]);
    if (!bool(address(0x0) == address(0x0))) {
        _balanceOf[address(0x0)] = _balanceOf[address(0x0)] - 1;
        _sireAllowedToAddress[v33] = bytes12(_sireAllowedToAddress[v33]);
        _pandaIndexToApproved[v33] = bytes12(_pandaIndexToApproved[v33]);
    }
    emit Transfer(address(0x0), address(varg0), v33);
    return v33;
}

function totalSupply() public nonPayable { 
    return _totalSupply.length - 1;
}

function isPregnant(uint256 varg0) public nonPayable { 
    v0 = 0x1af6(varg0);
    return bool(v0);
}

function GEN0_AUCTION_DURATION() public nonPayable { 
    return 0x15180;
}

function withdrawERC20Balance(address varg0, address varg1) public nonPayable { 
    v0 = v1 = msg.sender == _cooAddress;
    if (msg.sender != _cooAddress) {
        v0 = v2 = msg.sender == _ceoAddress;
    }
    if (!v0) {
        v0 = v3 = msg.sender == _cfoAddress;
    }
    require(bool(v0));
    require(bool(_saleAuctionERC20 != address(0x0)));
    require(bool(_saleAuctionERC20.code.size));
    v4, /* uint256 */ v5 = _saleAuctionERC20.withdrawERC20Balance(varg0, varg1).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
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

function createSaleAuction(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(bool(!_paused));
    require(bool(address(address(_pandaIndexToOwner[varg0])) == address(msg.sender)));
    v0 = 0x1af6(varg0);
    require(bool(!v0));
    _pandaIndexToApproved[varg0] = _saleAuction | bytes12(_pandaIndexToApproved[varg0]);
    require(bool(_saleAuction.code.size));
    v1 = _saleAuction.createAuction(varg0, varg1, varg2, varg3, msg.sender).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
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
    v0 = v1 = 0x52ef(varg1, 3 * varg1 + keccak256(7), varg0, 3 * varg0 + keccak256(7));
    if (v1) {
        v0 = v2 = address(_pandaIndexToOwner[varg0]) == address(_pandaIndexToOwner[varg1]);
        if (address(_pandaIndexToOwner[varg0]) != address(_pandaIndexToOwner[varg1])) {
            v0 = address(_sireAllowedToAddress[varg1]) == address(_pandaIndexToOwner[varg0]);
        }
    }
    return bool(v0);
}

function createSiringAuction(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(bool(!_paused));
    require(bool(address(address(_pandaIndexToOwner[varg0])) == address(msg.sender)));
    v0 = 0x3f60(varg0);
    require(bool(v0));
    _pandaIndexToApproved[varg0] = _siringAuction | bytes12(_pandaIndexToApproved[varg0]);
    require(bool(_siringAuction.code.size));
    v1 = _siringAuction.createAuction(varg0, varg1, varg2, varg3, msg.sender).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
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

function createWizzPanda(uint256[2] varg0, uint256 varg1) public nonPayable { 
    v0 = v1 = address(varg1);
    require(bool(address(msg.sender) == _cooAddress));
    if (address(v1) == address(0x0)) {
        v0 = v2 = _cooAddress;
    }
    v3 = new struct(2);
    CALLDATACOPY(v3, 4, 64);
    v4 = 0x5808(v0, v3, varg0, 0, 0);
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

function GEN0_CREATION_LIMIT() public nonPayable { 
    return 45000;
}

function setSaleAuctionAddress(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(bool((address(address(varg0))).code.size));
    v0, /* bool */ v1 = varg0.isSaleClockAuction().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool(v1));
    _saleAuction = varg0;
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

function createSaleAuctionERC20(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(bool(!_paused));
    require(bool(address(address(_pandaIndexToOwner[varg0])) == address(msg.sender)));
    v0 = 0x1af6(varg0);
    require(bool(!v0));
    _pandaIndexToApproved[varg0] = _saleAuctionERC20 | bytes12(_pandaIndexToApproved[varg0]);
    require(bool(_saleAuctionERC20.code.size));
    v1 = _saleAuctionERC20.createAuction(varg0, varg1, varg2, varg3, varg4, msg.sender).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
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

function withdrawAuctionBalances() public nonPayable { 
    v0 = v1 = msg.sender == _cooAddress;
    if (msg.sender != _cooAddress) {
        v0 = v2 = msg.sender == _ceoAddress;
    }
    if (!v0) {
        v0 = msg.sender == _cfoAddress;
    }
    require(bool(v0));
    require(bool(_saleAuction.code.size));
    v3 = _saleAuction.withdrawBalance().gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool(_siringAuction.code.size));
    v4 = _siringAuction.withdrawBalance().gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function createPanda(uint256[2] varg0, uint256 varg1) public payable { 
    require(bool(address(msg.sender) == _cooAddress));
    require(bool(!_paused));
    require(bool(msg.value >= 0x2386f26fc10000));
    v0 = new struct(2);
    CALLDATACOPY(v0, 4, 64);
    v1 = 0x5808(_saleAuction, v0, varg0, 0, 0);
    require(bool(_saleAuction.code.size));
    v2 = _saleAuction.createPanda(v1, varg1).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
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
        } else if (0xe583df0 == v0) {
            GEN0_STARTING_PRICE();
        } else if (0x14001f4c == v0) {
            setSiringAuctionAddress(address);
        } else if (0x16b64898 == v0) {
            GEN0_TOTAL_COUNT();
        } else if (0x18160ddd == v0) {
            totalSupply();
        } else if (0x1940a936 == v0) {
            isPregnant(uint256);
        } else if (0x19c2f201 == v0) {
            GEN0_AUCTION_DURATION();
        } else if (0x1c338644 == v0) {
            withdrawERC20Balance(address,address);
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
        } else if (0x3d7d3f5a == v0) {
            createSaleAuction(uint256,uint256,uint256,uint256);
        } else if (0x3f4ba83a == v0) {
            unpause();
        } else if (0x46116e6f == v0) {
            sireAllowedToAddress(uint256);
        } else if (0x46d22c70 == v0) {
            canBreedWith(uint256,uint256);
        } else if (0x4ad8c938 == v0) {
            createSiringAuction(uint256,uint256,uint256,uint256);
        } else if (0x4b85fd55 == v0) {
            setAutoBirthFee(uint256);
        } else if (0x4dfff04f == v0) {
            approveSiring(address,uint256);
        } else if (0x4e0a3379 == v0) {
            setCFO(address);
        } else if (0x4e61efc5 == v0) {
            getWizzTypeOf(uint256);
        } else if (0x53a01f68 == v0) {
            createWizzPanda(uint256[2],uint256,address);
        } else if (0x5663896e == v0) {
            setSecondsPerBlock(uint256);
        } else if (0x5c975abb == v0) {
            paused();
        } else if (0x6352211e == v0) {
            ownerOf(uint256);
        } else if (0x680eba27 == v0) {
            GEN0_CREATION_LIMIT();
        } else if (0x6fbde40d == v0) {
            setSaleAuctionAddress(address);
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
        } else if (0x7d16bef7 == v0) {
            createSaleAuctionERC20(uint256,address,uint256,uint256,uint256);
        } else if (0x818438ca == v0) {
            getWizzPandaQuotaOf(uint256);
        } else if (0x8456cb59 == v0) {
            pause();
        } else if (0x8462151c == v0) {
            tokensOfOwner(address);
        } else if (0x88524780 == v0) {
            saleAuctionERC20();
        } else if (0x91876e57 == v0) {
            withdrawAuctionBalances();
        } else if (0x9505b2a7 == v0) {
            createPanda(uint256[2],uint256,uint256);
        } else if (0x95d89b41 == v0) {
            symbol();
        } else if (0x9b96f3ed == v0) {
            setSaleAuctionERC20Address(address);
        } else if (0x9cca68e2 == v0) {
            switchSaleAuctionERC20For(address,uint256);
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
        } else if (0xc3bea9af == v0) {
            createGen0Auction(uint256);
        } else if (0xd0774f74 == v0) {
            GENSIS_TOTAL_COUNT();
        } else if (0xd3e6f49f == v0) {
            isReadyToBreed(uint256);
        } else if (0xe6cbe351 == v0) {
            saleAuction();
        } else if (0xe8b4c9d7 == v0) {
            OPEN_PACKAGE_PRICE();
        } else if (0xed60ade6 == v0) {
            bidOnSiringAuction(uint256,uint256);
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
