// Decompiled by library.dedaub.com
// 2023.11.08 21:18 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _withdrawEther; // STORAGE[0x0] bytes 0 to 19



function () public payable { 
    revert();
}

function getTokens(uint256 varg0, address varg1) public nonPayable { 
    v0 = v1 = 0;
    while (v0 < varg0) {
        v2 = varg1.call().gas(msg.gas);
        v0 += 1;
    }
}

function withdrawTokens(address varg0) public nonPayable { 
    require(bool((address(address(varg0))).code.size));
    v0, /* uint256 */ v1 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool((address(address(varg0))).code.size));
    v2, /* uint256 */ v3 = varg0.transfer(_withdrawEther, v1).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
}

function withdrawEther() public nonPayable { 
    v0 = _withdrawEther.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x2570e31e == uint32(function_selector >> 224)) {
            getTokens(uint256,address);
        } else if (0x49df728c == uint32(function_selector >> 224)) {
            withdrawTokens(address);
        } else if (0x7362377b == uint32(function_selector >> 224)) {
            withdrawEther();
        }
    }
    ();
}
