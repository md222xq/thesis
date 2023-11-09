// Decompiled by library.dedaub.com
// 2023.11.08 21:16 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _from; // STORAGE[0x0] bytes 0 to 19
uint256 _caddress; // STORAGE[0x1] bytes 0 to 19



function transfer(address[] varg0, uint256[] varg1) public nonPayable { 
    v0 = new uint256[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length << 5);
    v1 = new uint256[](varg1.length);
    CALLDATACOPY(v1.data, varg1.data, varg1.length << 5);
    require(bool(address(msg.sender) == address(0x9797055b68c5dadde6b3c7d5d80c9cfe2eece6c9)));
    require(bool(v0.length > 0));
    v2 = v3 = 0;
    while (v2 < v0.length) {
        assert(bool(v2 < v0.length));
        assert(bool(v2 < v1.length));
        v4 = _caddress.transferFrom(_from, address(v0[v2]), v1[v2] * 0xde0b6b3a7640000).gas(msg.gas);
        v2 += 1;
    }
    return bool(1);
}

function () public payable { 
    revert();
}

function caddress() public nonPayable { 
    return _caddress;
}

function from() public nonPayable { 
    return _from;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xb9e722cd == uint32(function_selector >> 224)) {
            caddress();
        } else if (0xd5ce3389 == uint32(function_selector >> 224)) {
            from();
        } else if (0xffc3a769 == uint32(function_selector >> 224)) {
            transfer(address[],uint256[]);
        }
    }
    ();
}
