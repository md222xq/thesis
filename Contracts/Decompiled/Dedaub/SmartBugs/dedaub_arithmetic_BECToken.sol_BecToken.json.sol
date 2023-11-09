// Decompiled by library.dedaub.com
// 2023.11.08 19:43 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _totalSupply; // STORAGE[0x0]
mapping (uint256 => uint256) _balanceOf; // STORAGE[0x1]
mapping (uint256 => mapping (uint256 => uint256)) _allowance; // STORAGE[0x2]
uint256[] array_4; // STORAGE[0x4]
uint256[] array_5; // STORAGE[0x5]
uint256[] array_6; // STORAGE[0x6]
uint256 _decimals; // STORAGE[0x7] bytes 0 to 0
uint256 _owner; // STORAGE[0x3] bytes 0 to 19
uint256 _paused; // STORAGE[0x3] bytes 20 to 20


// Events
Unpause();
Transfer(address, address, uint256);
Pause();
OwnershipTransferred(address, address);
Approval(address, address, uint256);

function approve(address varg0, uint256 varg1) public nonPayable { 
    require(bool(!_paused));
    _allowance[msg.sender][varg0] = varg1;
    emit Approval(msg.sender, varg0, varg1);
    return bool(1);
}

function totalSupply() public nonPayable { 
    return _totalSupply;
}

function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(bool(!_paused));
    require(bool(address(address(varg1)) != address(0x0)));
    v0 = v1 = varg2 > 0;
    if (v1) {
        v0 = varg2 <= _balanceOf[varg0];
    }
    require(bool(v0));
    require(bool(varg2 <= _allowance[address(address(address(varg0)))][address(address(msg.sender))]));
    require(bool(varg2 <= _balanceOf[varg0]));
    _balanceOf[varg0] = _balanceOf[varg0] - varg2;
    require(bool(_balanceOf[varg1] + varg2 >= _balanceOf[varg1]));
    _balanceOf[varg1] = _balanceOf[varg1] + varg2;
    require(bool(varg2 <= _allowance[varg0][msg.sender]));
    _allowance[varg0][msg.sender] = _allowance[varg0][msg.sender] - varg2;
    emit Transfer(varg0, varg1, varg2);
    return bool(1);
}

function decimals() public nonPayable { 
    return _decimals;
}

function unpause() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(_paused);
    _paused = 0;
    emit Unpause();
}

function version() public nonPayable { 
    v0, v1 = 0x879();
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

function paused() public nonPayable { 
    return _paused;
}

function balanceOf(address varg0) public nonPayable { 
    return _balanceOf[varg0];
}

function batchTransfer(address[] varg0, uint256 varg1) public nonPayable { 
    v0 = new uint256[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length << 5);
    require(bool(!_paused));
    v1 = v2 = v0.length > 0;
    if (v2) {
        v1 = v3 = v0.length <= 20;
    }
    require(bool(v1));
    v4 = v5 = varg1 > 0;
    if (v5) {
        v4 = v6 = _balanceOf[msg.sender] >= v0.length * varg1;
    }
    require(bool(v4));
    require(bool(v0.length * varg1 <= _balanceOf[msg.sender]));
    _balanceOf[msg.sender] = _balanceOf[msg.sender] - v0.length * varg1;
    v7 = v8 = 0;
    while (v7 < v0.length) {
        assert(bool(v7 < v0.length));
        require(bool(_balanceOf[address(v0[v7])] + varg1 >= _balanceOf[address(v0[v7])]));
        assert(bool(v7 < v0.length));
        _balanceOf[address(v0[v7])] = _balanceOf[address(v0[v7])] + varg1;
        assert(bool(v7 < v0.length));
        emit Transfer(msg.sender, address(v0[v7]), varg1);
        v7 += 1;
    }
    return bool(1);
}

function pause() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(bool(!_paused));
    _paused = 1;
    emit Pause();
}

function owner() public nonPayable { 
    return _owner;
}

function symbol() public nonPayable { 
    v0, v1 = 0xcf6();
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

function transfer(address varg0, uint256 varg1) public nonPayable { 
    require(bool(!_paused));
    require(bool(address(address(varg0)) != address(0x0)));
    v0 = v1 = varg1 > 0;
    if (v1) {
        v0 = varg1 <= _balanceOf[msg.sender];
    }
    require(bool(v0));
    require(bool(varg1 <= _balanceOf[msg.sender]));
    _balanceOf[msg.sender] = _balanceOf[msg.sender] - varg1;
    require(bool(_balanceOf[varg0] + varg1 >= _balanceOf[varg0]));
    _balanceOf[varg0] = _balanceOf[varg0] + varg1;
    emit Transfer(msg.sender, varg0, varg1);
    return bool(1);
}

function allowance(address varg0, address varg1) public nonPayable { 
    return _allowance[varg0][varg1];
}

function transferOwnership(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(bool(address(address(varg0)) != address(0x0)));
    emit OwnershipTransferred(_owner, varg0);
    _owner = varg0;
}

function 0x6a0() private { 
    v0 = new bytes[](((!(0x1 & array_4.length) << 8) - 1 & array_4.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & array_4.length) << 8) - 1 & array_4.length) >> 1)) {
        return v0, v3;
    } else if (31 < ((!(0x1 & array_4.length) << 8) - 1 & array_4.length) >> 1) {
        v4 = v5 = array_4.data;
        do {
            MEM[v1] = STORAGE[v4];
            v4 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & array_4.length) << 8) - 1 & array_4.length) >> 1) <= v1);
        return v0, v3;
    } else {
        MEM[v2] = array_4.length >> 8 << 8;
        return v0, v3;
    }
}

function 0x879() private { 
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

function 0xcf6() private { 
    v0 = new bytes[](((!(0x1 & array_5.length) << 8) - 1 & array_5.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & array_5.length) << 8) - 1 & array_5.length) >> 1)) {
        return v0, v3;
    } else if (31 < ((!(0x1 & array_5.length) << 8) - 1 & array_5.length) >> 1) {
        v4 = v5 = array_5.data;
        do {
            MEM[v1] = STORAGE[v4];
            v4 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & array_5.length) << 8) - 1 & array_5.length) >> 1) <= v1);
        return v0, v3;
    } else {
        MEM[v2] = array_5.length >> 8 << 8;
        return v0, v3;
    }
}

function () public nonPayable { 
    revert();
}

function name() public nonPayable { 
    v0, v1 = 0x6a0();
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

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x6fdde03 == uint32(function_selector >> 224)) {
            name();
        } else if (0x95ea7b3 == uint32(function_selector >> 224)) {
            approve(address,uint256);
        } else if (0x18160ddd == uint32(function_selector >> 224)) {
            totalSupply();
        } else if (0x23b872dd == uint32(function_selector >> 224)) {
            transferFrom(address,address,uint256);
        } else if (0x313ce567 == uint32(function_selector >> 224)) {
            decimals();
        } else if (0x3f4ba83a == uint32(function_selector >> 224)) {
            unpause();
        } else if (0x54fd4d50 == uint32(function_selector >> 224)) {
            version();
        } else if (0x5c975abb == uint32(function_selector >> 224)) {
            paused();
        } else if (0x70a08231 == uint32(function_selector >> 224)) {
            balanceOf(address);
        } else if (0x83f12fec == uint32(function_selector >> 224)) {
            batchTransfer(address[],uint256);
        } else if (0x8456cb59 == uint32(function_selector >> 224)) {
            pause();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0x95d89b41 == uint32(function_selector >> 224)) {
            symbol();
        } else if (0xa9059cbb == uint32(function_selector >> 224)) {
            transfer(address,uint256);
        } else if (0xdd62ed3e == uint32(function_selector >> 224)) {
            allowance(address,address);
        } else if (0xf2fde38b == uint32(function_selector >> 224)) {
            transferOwnership(address);
        }
    }
    ();
}
