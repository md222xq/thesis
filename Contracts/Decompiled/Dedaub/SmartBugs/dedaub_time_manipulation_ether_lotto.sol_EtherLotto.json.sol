// Decompiled by library.dedaub.com
// 2023.11.08 21:00 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _pot; // STORAGE[0x1]
uint256 _bank; // STORAGE[0x0] bytes 0 to 19



function () public payable { 
    revert();
}

function pot() public nonPayable { 
    return _pot;
}

function bank() public nonPayable { 
    return _bank;
}

function play() public payable { 
    assert(bool(msg.value == 10));
    _pot = _pot + msg.value;
    assert(bool(2));
    if (keccak256(block.timestamp) % 2 == 0) {
        v0 = _bank.call().value(1);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v1 = msg.sender.call().value(_pot - 1).gas(!(_pot - 1) * 2300);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        _pot = 0;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x4ba2363a == uint32(function_selector >> 224)) {
            pot();
        } else if (0x76cdb03b == uint32(function_selector >> 224)) {
            bank();
        } else if (0x93e84cd9 == uint32(function_selector >> 224)) {
            play();
        }
    }
    ();
}
