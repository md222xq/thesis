// Decompiled by library.dedaub.com
// 2023.11.08 21:08 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _totalSupply; // STORAGE[0x0]
mapping (uint256 => uint256) _balanceOf; // STORAGE[0x1]
mapping (uint256 => mapping (uint256 => uint256)) _allowance; // STORAGE[0x3]


// Events
Approval(address, address, uint256);
Transfer(address, address, uint256);

function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 
    v0 = _SafeAdd(varg2, _balanceOf[varg1]);
    _balanceOf[varg1] = v0;
    v1 = _SafeSub(varg2, _balanceOf[varg0]);
    _balanceOf[varg0] = v1;
    v2 = _SafeSub(varg2, _allowance[varg0][msg.sender]);
    _allowance[varg0][msg.sender] = v2;
    emit Transfer(varg0, varg1, varg2);
    return bool(1);
}

function balanceOf(address varg0) public nonPayable { 
    return _balanceOf[varg0];
}

function transfer(address varg0, uint256 varg1) public nonPayable { 
    v0 = _SafeSub(varg1, _balanceOf[msg.sender]);
    _balanceOf[msg.sender] = v0;
    v1 = _SafeAdd(varg1, _balanceOf[varg0]);
    _balanceOf[varg0] = v1;
    emit Transfer(msg.sender, varg0, varg1);
    return bool(1);
}

function allowance(address varg0, address varg1) public nonPayable { 
    return _allowance[varg0][varg1];
}

function isToken() public nonPayable { 
    return bool(1);
}

function () public payable { 
    revert();
}

function approve(address varg0, uint256 varg1) public nonPayable { 
    v0 = v1 = varg1 != 0;
    if (!bool(varg1 == 0)) {
        v0 = v2 = _allowance[msg.sender][varg0] != 0;
    }
    require(!v0);
    _allowance[msg.sender][varg0] = varg1;
    emit Approval(msg.sender, varg0, varg1);
    return bool(1);
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    v0 = varg1 + varg0;
    v1 = v2 = v0 >= varg1;
    if (!bool(v0 < varg1)) {
        v1 = v3 = v0 >= varg0;
    }
    require(bool(v1));
    return v0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 <= varg1;
    require(bool(v0));
    return varg1 - varg0;
}

function totalSupply() public nonPayable { 
    return _totalSupply;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x95ea7b3 == uint32(function_selector >> 224)) {
            approve(address,uint256);
        } else if (0x18160ddd == uint32(function_selector >> 224)) {
            totalSupply();
        } else if (0x23b872dd == uint32(function_selector >> 224)) {
            transferFrom(address,address,uint256);
        } else if (0x70a08231 == uint32(function_selector >> 224)) {
            balanceOf(address);
        } else if (0xa9059cbb == uint32(function_selector >> 224)) {
            transfer(address,uint256);
        } else if (0xdd62ed3e == uint32(function_selector >> 224)) {
            allowance(address,address);
        } else if (0xeefa597b == uint32(function_selector >> 224)) {
            isToken();
        }
    }
    ();
}
