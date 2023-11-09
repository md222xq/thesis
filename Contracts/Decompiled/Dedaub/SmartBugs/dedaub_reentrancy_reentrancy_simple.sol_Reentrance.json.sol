// Decompiled by library.dedaub.com
// 2023.11.08 20:54 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _addToBalance; // STORAGE[0x0]



function () public payable { 
    revert();
}

function withdrawBalance() public nonPayable { 
    v0 = msg.sender.call().value(_addToBalance[msg.sender]).gas(msg.gas);
    require(bool(v0));
    _addToBalance[msg.sender] = 0;
}

function addToBalance() public payable { 
    _addToBalance[msg.sender] = _addToBalance[msg.sender] + msg.value;
}

function getBalance(address varg0) public nonPayable { 
    return _addToBalance[varg0];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x5fd8c710 == uint32(function_selector >> 224)) {
            withdrawBalance();
        } else if (0xc0e317fb == uint32(function_selector >> 224)) {
            addToBalance();
        } else if (0xf8b2cb4f == uint32(function_selector >> 224)) {
            getBalance(address);
        }
    }
    ();
}
