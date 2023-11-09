// Decompiled by library.dedaub.com
// 2023.11.08 21:02 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _fallback; // STORAGE[0x0]



function () public payable { 
    require(bool(msg.value == 0x8ac7230489e80000));
    require(bool(block.timestamp != _fallback));
    _fallback = block.timestamp;
    assert(bool(15));
    if (block.timestamp % 15 == 0) {
        v0 = msg.sender.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0x58d02b09() public nonPayable { 
    return _fallback;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x58d02b09 == uint32(function_selector >> 224)) {
            0x58d02b09();
        }
    }
    ();
}
