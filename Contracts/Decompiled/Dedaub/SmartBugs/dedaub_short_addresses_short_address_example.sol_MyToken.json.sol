// Decompiled by library.dedaub.com
// 2023.11.08 20:59 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _getBalance; // STORAGE[0x0]


// Events
Transfer(address, address, uint256);

function () public payable { 
    revert();
}

function sendCoin(address varg0, uint256 varg1) public nonPayable { 
    if (_getBalance[msg.sender] >= varg1) {
        _getBalance[msg.sender] = _getBalance[msg.sender] - varg1;
        _getBalance[varg0] = _getBalance[varg0] + varg1;
        emit Transfer(msg.sender, varg0, varg1);
        v0 = v1 = 1;
    } else {
        v0 = v2 = 0;
    }
    return bool(v0);
}

function getBalance(address varg0) public nonPayable { 
    return _getBalance[varg0];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x90b98a11 == uint32(function_selector >> 224)) {
            sendCoin(address,uint256);
        } else if (0xf8b2cb4f == uint32(function_selector >> 224)) {
            getBalance(address);
        }
    }
    ();
}
