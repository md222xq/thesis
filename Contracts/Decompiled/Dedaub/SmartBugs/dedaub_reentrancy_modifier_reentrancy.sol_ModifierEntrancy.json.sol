// Decompiled by library.dedaub.com
// 2023.11.08 16:21 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _tokenBalance; // STORAGE[0x0]



function () public payable { 
    revert();
}

function airDrop() public nonPayable { 
    require(bool(_tokenBalance[address(address(msg.sender))] == 0));
    require(bool((address(msg.sender)).code.size));
    v0, /* uint256 */ v1 = msg.sender.call(uint32(0x4d5f327c)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    MEM[32 + MEM[64]] = 'Nu Token';
    v2 = v3 = v3.data;
    v4 = v5 = 32 + MEM[64];
    while (!bool(v6 < 32)) {
        MEM[v2] = MEM[v4];
        v2 = v2 + 32;
        v4 = v4 + 32;
        v6 = v6 - 32;
    }
    MEM[v2] = MEM[v4] & ~(256 ** (32 - v6) - 1) | MEM[v2] & 256 ** (32 - v6) - 1;
    require(bool(uint256(keccak256(MEM[(v3.data) len 8])) == uint256(v1)));
    _tokenBalance[msg.sender] = _tokenBalance[msg.sender] + 20;
}

function tokenBalance(address varg0) public nonPayable { 
    return _tokenBalance[varg0];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xca5d0880 == uint32(function_selector >> 224)) {
            airDrop();
        } else if (0xeedc966a == uint32(function_selector >> 224)) {
            tokenBalance(address);
        }
    }
    ();
}
