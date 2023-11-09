// Decompiled by library.dedaub.com
// 2023.11.08 19:31 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _constructor; // STORAGE[0x0] bytes 0 to 19



function () public payable { 
}

function withdraw() public nonPayable { 
    require(bool(address(msg.sender) == _constructor));
    v0 = _constructor.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function Constructor() public nonPayable { 
    _constructor = msg.sender;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x3ccfd60b == uint32(function_selector >> 224)) {
            withdraw();
        } else if (0x8a3c44a5 == uint32(function_selector >> 224)) {
            Constructor();
        }
    }
    ();
}
