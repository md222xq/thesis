// Decompiled by library.dedaub.com
// 2023.11.08 19:58 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _balanceOf; // STORAGE[0x0]
uint256 _totalSupply; // STORAGE[0x1]



function () public payable { 
    revert();
}

function totalSupply() public nonPayable { 
    return _totalSupply;
}

function balanceOf(address varg0) public nonPayable { 
    return _balanceOf[varg0];
}

function transfer(address varg0, uint256 varg1) public nonPayable { 
    require(bool(_balanceOf[address(address(msg.sender))] - varg1 >= 0));
    _balanceOf[msg.sender] = _balanceOf[msg.sender] - varg1;
    _balanceOf[varg0] = _balanceOf[varg0] + varg1;
    return bool(1);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x18160ddd == uint32(function_selector >> 224)) {
            totalSupply();
        } else if (0x70a08231 == uint32(function_selector >> 224)) {
            balanceOf(address);
        } else if (0xa9059cbb == uint32(function_selector >> 224)) {
            transfer(address,uint256);
        }
    }
    ();
}
