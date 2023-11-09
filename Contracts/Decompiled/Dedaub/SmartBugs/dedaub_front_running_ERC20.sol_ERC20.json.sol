// Decompiled by library.dedaub.com
// 2023.11.08 20:11 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _balanceOf; // STORAGE[0x0]
mapping (uint256 => mapping (uint256 => uint256)) _allowance; // STORAGE[0x1]


// Events
Approval(address, address, uint256);
Transfer(address, address, uint256);

function balanceOf(address varg0) public nonPayable { 
    return _balanceOf[varg0];
}

function transfer(address varg0, uint256 varg1) public nonPayable { 
    require(bool(varg1 <= _balanceOf[address(address(msg.sender))]));
    require(bool(address(address(varg0)) != address(0x0)));
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

function () public payable { 
    revert();
}

function approve(address varg0, uint256 varg1) public nonPayable { 
    require(bool(address(address(varg0)) != address(0x0)));
    _allowance[msg.sender][varg0] = varg1;
    emit Approval(msg.sender, varg0, varg1);
    return bool(1);
}

function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(bool(varg2 <= _balanceOf[address(address(address(varg0)))]));
    require(bool(varg2 <= _allowance[address(address(address(varg0)))][address(address(msg.sender))]));
    require(bool(address(address(varg1)) != address(0x0)));
    require(bool(varg2 <= _balanceOf[varg0]));
    _balanceOf[varg0] = _balanceOf[varg0] - varg2;
    require(bool(_balanceOf[varg1] + varg2 >= _balanceOf[varg1]));
    _balanceOf[varg1] = _balanceOf[varg1] + varg2;
    require(bool(varg2 <= _allowance[varg0][msg.sender]));
    _allowance[varg0][msg.sender] = _allowance[varg0][msg.sender] - varg2;
    emit Transfer(varg0, varg1, varg2);
    return bool(1);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x95ea7b3 == uint32(function_selector >> 224)) {
            approve(address,uint256);
        } else if (0x23b872dd == uint32(function_selector >> 224)) {
            transferFrom(address,address,uint256);
        } else if (0x70a08231 == uint32(function_selector >> 224)) {
            balanceOf(address);
        } else if (0xa9059cbb == uint32(function_selector >> 224)) {
            transfer(address,uint256);
        } else if (0xdd62ed3e == uint32(function_selector >> 224)) {
            allowance(address,address);
        }
    }
    ();
}
