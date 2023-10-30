// Decompiled by library.dedaub.com
// https://library.dedaub.com/decompile?md5=4f07dfe1c8cd2448497b85e03c7b33b2
// 2023.10.28 13:21 UTC
// Compiled using the solidity compiler version 0.8.20


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _addToBalance; // STORAGE[0x0]



function () public payable { 
    revert();
}

function withdrawBalance() public nonPayable { 
    v0, /* uint256 */ v1 = msg.sender.call().value(_addToBalance[msg.sender]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v2 = new bytes[](RETURNDATASIZE());
        v1 = v2.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
    require(v0, Error('Transfer failed.'));
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
