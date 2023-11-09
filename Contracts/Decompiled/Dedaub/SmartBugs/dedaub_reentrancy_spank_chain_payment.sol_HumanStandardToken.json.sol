// Decompiled by library.dedaub.com
// 2023.11.08 20:56 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _totalSupply; // STORAGE[0x0]
mapping (uint256 => uint256) _balanceOf; // STORAGE[0x1]
mapping (uint256 => mapping (uint256 => uint256)) _allowance; // STORAGE[0x2]
uint256[] array_3; // STORAGE[0x3]
uint256[] array_5; // STORAGE[0x5]
uint256[] array_6; // STORAGE[0x6]
uint256 _decimals; // STORAGE[0x4] bytes 0 to 0


// Events
Approval(address, address, uint256);
Transfer(address, address, uint256);

function approve(address varg0, uint256 varg1) public nonPayable { 
    _allowance[msg.sender][varg0] = varg1;
    emit Approval(msg.sender, varg0, varg1);
    return bool(1);
}

function totalSupply() public nonPayable { 
    return _totalSupply;
}

function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 
    v0 = v1 = _balanceOf[varg0] >= varg2;
    if (!bool(_balanceOf[varg0] < varg2)) {
        v0 = v2 = _allowance[varg0][msg.sender] >= varg2;
    }
    require(bool(v0));
    _balanceOf[varg1] = _balanceOf[varg1] + varg2;
    _balanceOf[varg0] = _balanceOf[varg0] - varg2;
    _allowance[varg0][msg.sender] = _allowance[varg0][msg.sender] - varg2;
    emit Transfer(varg0, varg1, varg2);
    return bool(1);
}

function decimals() public nonPayable { 
    return _decimals;
}

function version() public nonPayable { 
    v0, v1 = 0x99d();
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

function balanceOf(address varg0) public nonPayable { 
    return _balanceOf[varg0];
}

function symbol() public nonPayable { 
    v0, v1 = 0xa84();
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
    require(bool(_balanceOf[address(address(msg.sender))] >= varg1));
    _balanceOf[msg.sender] = _balanceOf[msg.sender] - varg1;
    _balanceOf[varg0] = _balanceOf[varg0] + varg1;
    emit Transfer(msg.sender, varg0, varg1);
    return bool(1);
}

function approveAndCall(address varg0, uint256 varg1, bytes varg2) public nonPayable { 
    v0 = new bytes[](varg2.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    _allowance[msg.sender][varg0] = varg1;
    emit Approval(msg.sender, varg0, varg1);
    v1 = v2 = 0;
    while (v1 < v0.length) {
        MEM[100 + MEM[64] + v1] = v0[v1];
        v1 = v1 + 32;
    }
    v3 = v4 = v0.length + (100 + MEM[64]);
    if (0x1f & v0.length) {
        MEM[v4 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v4 - (0x1f & v0.length)];
    }
    v5 = varg0.receiveApproval(msg.sender, varg1, address(this)).gas(msg.gas);
    require(bool(v5));
    return bool(1);
}

function allowance(address varg0, address varg1) public nonPayable { 
    return _allowance[varg0][varg1];
}

function 0x588() private { 
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

function 0x99d() private { 
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

function 0xa84() private { 
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

function () public payable { 
    revert();
}

function name() public nonPayable { 
    v0, v1 = 0x588();
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
        } else if (0x54fd4d50 == uint32(function_selector >> 224)) {
            version();
        } else if (0x70a08231 == uint32(function_selector >> 224)) {
            balanceOf(address);
        } else if (0x95d89b41 == uint32(function_selector >> 224)) {
            symbol();
        } else if (0xa9059cbb == uint32(function_selector >> 224)) {
            transfer(address,uint256);
        } else if (0xcae9ca51 == uint32(function_selector >> 224)) {
            approveAndCall(address,uint256,bytes);
        } else if (0xdd62ed3e == uint32(function_selector >> 224)) {
            allowance(address,address);
        }
    }
    ();
}
