// Decompiled by library.dedaub.com
// 2023.11.08 20:53 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _deposit; // STORAGE[0x0]
uint256 stor_1; // STORAGE[0x1]



function () public payable { 
    revert();
}

function withdrawAll() public nonPayable { 
    if (_deposit[msg.sender] > 0) {
        stor_1 = stor_1 - _deposit[msg.sender];
        v0 = msg.sender.call().value(_deposit[msg.sender]).gas(msg.gas);
        require(bool(v0));
        _deposit[msg.sender] = 0;
    }
}

function deposit() public payable { 
    _deposit[msg.sender] = _deposit[msg.sender] + msg.value;
    stor_1 = stor_1 + msg.value;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x853828b6 == uint32(function_selector >> 224)) {
            withdrawAll();
        } else if (0xd0e30db0 == uint32(function_selector >> 224)) {
            deposit();
        }
    }
    ();
}
