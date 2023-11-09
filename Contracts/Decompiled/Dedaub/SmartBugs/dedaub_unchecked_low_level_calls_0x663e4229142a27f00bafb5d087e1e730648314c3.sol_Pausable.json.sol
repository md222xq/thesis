// Decompiled by library.dedaub.com
// 2023.11.08 21:32 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _paused; // STORAGE[0x0] bytes 20 to 20


// Events
Unpause();
Pause();

function transferOwnership(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    if (!bool(address(address(varg0)) == address(0x0))) {
        _owner = varg0;
    }
}

function () public payable { 
    revert();
}

function unpause() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(_paused);
    _paused = 0;
    emit Unpause();
    return bool(1);
}

function paused() public nonPayable { 
    return _paused;
}

function pause() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(bool(!_paused));
    _paused = 1;
    emit Pause();
    return bool(1);
}

function owner() public nonPayable { 
    return _owner;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x3f4ba83a == uint32(function_selector >> 224)) {
            unpause();
        } else if (0x5c975abb == uint32(function_selector >> 224)) {
            paused();
        } else if (0x8456cb59 == uint32(function_selector >> 224)) {
            pause();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0xf2fde38b == uint32(function_selector >> 224)) {
            transferOwnership(address);
        }
    }
    ();
}
