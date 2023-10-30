// Decompiled by library.dedaub.com
// https://library.dedaub.com/decompile?md5=0ad0f8a5f6fbfa9a3e7c76a5e60229a7
// 2023.10.28 13:19 UTC
// Compiled using the solidity compiler version 0.8.20


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _addToBalance; // STORAGE[0x0]



function () public payable { 
    revert();
}

function withdrawBalance() public nonPayable { 
    v0 = msg.sender.call().value(_addToBalance[msg.sender]).gas(!_addToBalance[msg.sender] * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    _addToBalance[msg.sender] = 0;
}

function addToBalance() public payable { 
    require(_addToBalance[msg.sender] <= _addToBalance[msg.sender] + msg.value, Panic(17)); // arithmetic overflow or underflow
    _addToBalance[msg.sender] = _addToBalance[msg.sender] + msg.value;
}

function getBalance(address varg0) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(varg0 == varg0);
    return _addToBalance[varg0];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x5fd8c710 == function_selector >> 224) {
            withdrawBalance();
        } else if (0xc0e317fb == function_selector >> 224) {
            addToBalance();
        } else if (0xf8b2cb4f == function_selector >> 224) {
            getBalance(address);
        }
    }
    ();
}
