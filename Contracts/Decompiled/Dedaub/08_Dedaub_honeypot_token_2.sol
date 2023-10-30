// Decompiled by library.dedaub.com
// 2023.10.28 13:26 UTC
// Compiled using the solidity compiler version 0.8.9
// https://library.dedaub.com/decompile?md5=85d1555bfcbc53c1c4c9df4574a451bb


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _marketersAndDevs; // STORAGE[0x3]
mapping (uint256 => uint256) _balanceOf; // STORAGE[0x4]
mapping (uint256 => mapping (uint256 => uint256)) _allowance; // STORAGE[0x5]
mapping (uint256 => uint256) owner_6; // STORAGE[0x6]
mapping (uint256 => uint256) owner_7; // STORAGE[0x7]
mapping (uint256 => uint256) owner_8; // STORAGE[0x8]
uint256 _totalSupply; // STORAGE[0x9]
uint256 stor_a; // STORAGE[0xa]
uint256 stor_b; // STORAGE[0xb]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 owner_1_0_19; // STORAGE[0x1] bytes 0 to 19
uint256 owner_2_0_19; // STORAGE[0x2] bytes 0 to 19


// Events
Approval(address, address, uint256);
Transfer(address, address, uint256);

function 0x10da(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(address(varg2) != address(0x0), Error('ERC20: transfer from the zero address'));
    require(address(varg1) != address(0x0), Error('ERC20: transfer to the zero address'));
    require(bool(owner_2_0_19.code.size));
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = owner_2_0_19.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4 = v5 = uint112(v1) > 0;
    if (v5) {
        v4 = uint112(v2) > 0;
    }
    if (v4) {
        require(bool(owner_2_0_19.code.size));
        v6, /* uint112 */ v7, /* uint112 */ v8, /* uint32 */ v9 = owner_2_0_19.getReserves().gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v7 == uint112(v7));
        require(v8 == uint112(v8));
        require(v9 == uint32(v9));
        require(bool(owner_1_0_19.code.size));
        v10, /* address */ v11 = owner_1_0_19.WETH().gas(msg.gas);
        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x1d1d(v11);
        require(bool(owner_2_0_19.code.size));
        v12, /* address */ v13 = owner_2_0_19.token0().gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x1d1d(v13);
        if (address(v13) == address(v11)) {
        }
        v14 = v15 = address(varg2) == owner_1_0_19;
        if (address(varg2) != owner_1_0_19) {
            v14 = address(varg2) == owner_2_0_19;
        }
        if (v14) {
            v16 = _SafeAdd(owner_6[address(varg1)], varg0);
            owner_6[address(varg1)] = v16;
        }
        v17 = v18 = address(varg1) == owner_1_0_19;
        if (address(varg1) != owner_1_0_19) {
            v17 = address(varg1) == owner_2_0_19;
        }
        if (v17) {
            v19 = _SafeAdd(owner_7[address(varg2)], varg0);
            owner_7[address(varg2)] = v19;
            v20 = 0x140f(varg0);
            v21 = _SafeAdd(owner_8[address(varg2)], v20);
            owner_8[address(varg2)] = v21;
        }
    }
    require(_balanceOf[address(varg2)] >= varg0, Error('ERC20: transfer amount exceeds balance'));
    v22 = _SafeSub(_balanceOf[address(varg2)], varg0);
    _balanceOf[address(varg2)] = v22;
    v23 = _SafeAdd(_balanceOf[address(varg1)], varg0);
    _balanceOf[address(varg1)] = v23;
    emit Transfer(address(varg2), address(varg1), varg0);
    return ;
}

function name() public payable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    if (v2 > v1.length) {
        v0[v1.length] = 0;
    }
    return v0, v4, 'TRANSFORMERS TOKEN';
}

function approve(address varg0, uint256 varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x1d1d(varg0);
    0x1d53(varg1);
    0xcea(varg1, varg0, msg.sender);
    return bool(1);
}

function 0x140f(uint256 varg0) private { 
    require(bool(owner_2_0_19.code.size));
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = owner_2_0_19.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    require(bool(owner_1_0_19.code.size));
    v4, /* address */ v5 = owner_1_0_19.WETH().gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x1d1d(v5);
    require(bool(owner_2_0_19.code.size));
    v6, /* address */ v7 = owner_2_0_19.token0().gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x1d1d(v7);
    if (address(v7) != address(v5)) {
        require(bool(owner_1_0_19.code.size));
        v8, /* uint256 */ v9 = owner_1_0_19.getAmountOut(varg0, uint112(v1), uint112(v2)).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x1d53(v9);
    } else {
        require(bool(owner_1_0_19.code.size));
        v10, /* uint256 */ v9 = owner_1_0_19.getAmountOut(varg0, uint112(v2), uint112(v1)).gas(msg.gas);
        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x1d53(v9);
    }
    return v9;
}

function totalSupply() public payable { 
    return _totalSupply;
}

function transferFrom(address varg0, address varg1, uint256 varg2) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    0x1d1d(varg0);
    0x1d1d(varg1);
    0x1d53(varg2);
    v0 = 0xeb5(varg2, varg1, varg0);
    if (v0) {
        require(_allowance[varg0][msg.sender] >= varg2, Error('ERC20: transfer amount exceeds allowance'));
        0x10da(varg2, varg1, varg0);
        v1 = _SafeSub(_allowance[varg0][msg.sender], varg2);
        0xcea(v1, msg.sender, varg0);
    }
    return bool(1);
}

function decimals() public payable { 
    return uint8(9);
}

function 0x1d1d(address varg0) private { 
    require(varg0 == varg0);
    return ;
}

function includeInReward(address varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x1d1d(varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    _marketersAndDevs[varg0] = 0x1 | bytes31(_marketersAndDevs[address(address(varg0))]);
}

function 0x1d53(uint256 varg0) private { 
    require(varg0 == varg0);
    return ;
}

function setNumber(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x1d53(varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    stor_a = varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 >= varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= uint256.max - varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function burn(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x1d53(varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    v0 = _SafeSub(_balanceOf[_owner], varg0);
    _balanceOf[_owner] = v0;
    v1 = _SafeSub(_totalSupply, varg0);
    _totalSupply = v1;
}

function excludeFromReward(address varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x1d1d(varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    _marketersAndDevs[varg0] = 0x0 | bytes31(_marketersAndDevs[address(address(varg0))]);
}

function marketersAndDevs(address varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x1d1d(varg0);
    return bool(uint8(_marketersAndDevs[varg0]));
}

function () public payable { 
    revert();
}

function balanceOf(address varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x1d1d(varg0);
    return _balanceOf[varg0];
}

function owner() public payable { 
    return _owner;
}

function symbol() public payable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    if (v2 > v1.length) {
        v0[v1.length] = 0;
    }
    return v0, v4, 0x5446530000000000000000000000000000000000000000000000000000000000;
}

function setRemainder(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x1d53(varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    stor_b = varg0;
}

function mint(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x1d53(varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    v0 = _SafeAdd(_balanceOf[_owner], varg0);
    _balanceOf[_owner] = v0;
    v1 = _SafeAdd(_totalSupply, varg0);
    _totalSupply = v1;
}

function transfer(address varg0, uint256 varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x1d1d(varg0);
    0x1d53(varg1);
    v0 = 0xeb5(varg1, varg0, msg.sender);
    if (v0) {
        0x10da(varg1, varg0, msg.sender);
    }
    return bool(1);
}

function syncPair() public payable { 
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    require(bool(owner_2_0_19.code.size));
    v0 = owner_2_0_19.sync().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function allowance(address varg0, address varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x1d1d(varg0);
    0x1d1d(varg1);
    return _allowance[varg0][varg1];
}

function 0xcea(uint256 varg0, address varg1, address varg2) private { 
    require(varg2 != address(0x0), Error('ERC20: approve from the zero address'));
    require(varg1 != address(0x0), Error('ERC20: approve to the zero address'));
    _allowance[varg2][varg1] = varg0;
    emit Approval(varg2, varg1, varg0);
    return ;
}

function 0xeb5(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = uint8(_marketersAndDevs[address(address(varg2))]);
    if (!v1) {
        v0 = v2 = uint8(_marketersAndDevs[address(address(varg1))]);
    }
    if (!v0) {
        v3 = v4 = varg2 == owner_1_0_19;
        if (varg2 != owner_1_0_19) {
            v3 = varg2 == owner_2_0_19;
        }
        if (!v3) {
            v5 = v6 = varg1 == owner_1_0_19;
            if (varg1 != owner_1_0_19) {
                v5 = varg1 == owner_2_0_19;
            }
            if (!v5) {
                return 1;
            } else {
                v7 = 0x140f(varg0);
                v8 = _SafeAdd(owner_7[varg2], varg0);
                v9 = v10 = owner_6[varg2] >= v8;
                v11 = _SafeAdd(owner_8[varg2], v7);
                v9 = v12 = stor_a >= v11;
                v9 = v13 = varg2.balance >= stor_b;
                return v9;
            }
        } else {
            return 1;
        }
    } else {
        return 1;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length < 4) {
        ();
    } else if (0x6261a5d6 > function_selector >> 224) {
        if (0x313ce567 > function_selector >> 224) {
            if (0x6fdde03 == function_selector >> 224) {
                name();
            } else if (0x95ea7b3 == function_selector >> 224) {
                approve(address,uint256);
            } else if (0x18160ddd == function_selector >> 224) {
                totalSupply();
            } else {
                require(0x23b872dd == function_selector >> 224);
                transferFrom(address,address,uint256);
            }
        } else if (0x313ce567 == function_selector >> 224) {
            decimals();
        } else if (0x3685d419 == function_selector >> 224) {
            includeInReward(address);
        } else if (0x3fb5c1cb == function_selector >> 224) {
            setNumber(uint256);
        } else if (0x42966c68 == function_selector >> 224) {
            burn(uint256);
        } else {
            require(0x52390c02 == function_selector >> 224);
            excludeFromReward(address);
        }
    } else if (0x98985331 > function_selector >> 224) {
        if (0x6261a5d6 == function_selector >> 224) {
            marketersAndDevs(address);
        } else if (0x70a08231 == function_selector >> 224) {
            balanceOf(address);
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else {
            require(0x95d89b41 == function_selector >> 224);
            symbol();
        }
    } else if (0x98985331 == function_selector >> 224) {
        setRemainder(uint256);
    } else if (0xa0712d68 == function_selector >> 224) {
        mint(uint256);
    } else if (0xa9059cbb == function_selector >> 224) {
        transfer(address,uint256);
    } else if (0xb59c0974 == function_selector >> 224) {
        syncPair();
    } else {
        require(0xdd62ed3e == function_selector >> 224);
        allowance(address,address);
    }
}
