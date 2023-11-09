// Decompiled by library.dedaub.com
// 2023.11.08 22:09 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _owner; // STORAGE[0x0] bytes 0 to 19



function () public payable { 
}

function go() public payable { 
    v0 = address(0xc8a60c51967f4022bf9424c337e9c6f0bd220e1c).call().value(msg.value).gas(msg.gas);
    v1 = _owner.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function owner() public nonPayable { 
    return _owner;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xf59f83a == uint32(function_selector >> 224)) {
            go();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        }
    }
    ();
}
