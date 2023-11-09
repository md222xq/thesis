// Decompiled by library.dedaub.com
// 2023.11.08 21:26 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _ceoAddress; // STORAGE[0x0] bytes 0 to 19
uint256 _cfoAddress; // STORAGE[0x1] bytes 0 to 19
uint256 _cooAddress; // STORAGE[0x2] bytes 0 to 19
uint256 _paused; // STORAGE[0x2] bytes 20 to 20



function setCEO(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(bool(address(address(varg0)) != address(0x0)));
    _ceoAddress = varg0;
}

function setCOO(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(bool(address(address(varg0)) != address(0x0)));
    _cooAddress = varg0;
}

function unpause() public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(_paused);
    _paused = 0;
}

function setCFO(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _ceoAddress));
    require(bool(address(address(varg0)) != address(0x0)));
    _cfoAddress = varg0;
}

function paused() public nonPayable { 
    return _paused;
}

function pause() public nonPayable { 
    v0 = v1 = msg.sender == _cooAddress;
    if (msg.sender != _cooAddress) {
        v0 = v2 = msg.sender == _ceoAddress;
    }
    if (!v0) {
        v0 = v3 = msg.sender == _cfoAddress;
    }
    require(bool(v0));
    require(bool(!_paused));
    _paused = 1;
}

function cooAddress() public nonPayable { 
    return _cooAddress;
}

function () public payable { 
    revert();
}

function cfoAddress() public nonPayable { 
    return _cfoAddress;
}

function ceoAddress() public nonPayable { 
    return _ceoAddress;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x519ce79 == uint32(function_selector >> 224)) {
            cfoAddress();
        } else if (0xa0f8168 == uint32(function_selector >> 224)) {
            ceoAddress();
        } else if (0x27d7874c == uint32(function_selector >> 224)) {
            setCEO(address);
        } else if (0x2ba73c15 == uint32(function_selector >> 224)) {
            setCOO(address);
        } else if (0x3f4ba83a == uint32(function_selector >> 224)) {
            unpause();
        } else if (0x4e0a3379 == uint32(function_selector >> 224)) {
            setCFO(address);
        } else if (0x5c975abb == uint32(function_selector >> 224)) {
            paused();
        } else if (0x8456cb59 == uint32(function_selector >> 224)) {
            pause();
        } else if (0xb047fb50 == uint32(function_selector >> 224)) {
            cooAddress();
        }
    }
    ();
}
