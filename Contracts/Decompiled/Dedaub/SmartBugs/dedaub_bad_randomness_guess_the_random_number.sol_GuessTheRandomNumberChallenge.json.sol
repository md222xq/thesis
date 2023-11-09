// Decompiled by library.dedaub.com
// 2023.11.08 20:00 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _guess; // STORAGE[0x0] bytes 0 to 0



function () public payable { 
    revert();
}

function guess(uint8 varg0) public payable { 
    require(bool(msg.value == 0xde0b6b3a7640000));
    if (varg0 == _guess) {
        v0 = msg.sender.call().value(0x1bc16d674ec80000);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function isComplete() public nonPayable { 
    return bool((address(this)).balance == 0);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x4ba4c16b == uint32(function_selector >> 224)) {
            guess(uint8);
        } else if (0xb2fa1c9e == uint32(function_selector >> 224)) {
            isComplete();
        }
    }
    ();
}
