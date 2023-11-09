// Decompiled by library.dedaub.com
// 2023.11.08 21:31 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _gen0CreatedCount; // STORAGE[0x3]
uint256 _secondsPerBlock; // STORAGE[0x6]
struct_606[] _totalSupply; // STORAGE[0x7]
mapping (uint256 => uint256) _pandaIndexToOwner; // STORAGE[0x8]
mapping (uint256 => uint256) _balanceOf; // STORAGE[0x9]
mapping (uint256 => uint256) _pandaIndexToApproved; // STORAGE[0xa]
mapping (uint256 => uint256) _sireAllowedToAddress; // STORAGE[0xb]
mapping (uint256 => uint256) _wizzPandaQuota; // STORAGE[0x10]
mapping (uint256 => uint256) _wizzPandaCount; // STORAGE[0x11]
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
Transfer(address, address, uint256);

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

function saleAuction() public nonPayable { 
    return _saleAuction;
}

function gen0CreatedCount() public nonPayable { 
    return _gen0CreatedCount;
}

function geneScience() public nonPayable { 
    return _geneScience;
}

function getWizzPandaCountOf(uint256 varg0) public nonPayable { 
    return _wizzPandaCount[varg0];
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
        } else if (0x21717ebf == v0) {
            siringAuction();
        } else if (0x23b872dd == v0) {
            transferFrom(address,address,uint256);
        } else if (0x27d7874c == v0) {
            setCEO(address);
        } else if (0x2ba73c15 == v0) {
            setCOO(address);
        } else if (0x3f4ba83a == v0) {
            unpause();
        } else if (0x46116e6f == v0) {
            sireAllowedToAddress(uint256);
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
        } else if (0xb380beac == v0) {
            setTotalWizzPandaOf(uint256,uint256);
        } else if (0xc2124452 == v0) {
            pandaIndexToApproved(uint256);
        } else if (0xe6cbe351 == v0) {
            saleAuction();
        } else if (0xf1ca9410 == v0) {
            gen0CreatedCount();
        } else if (0xf2b47d52 == v0) {
            geneScience();
        } else if (0xf3817b23 == v0) {
            getWizzPandaCountOf(uint256);
        }
    }
    ();
}
