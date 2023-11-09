// Decompiled by library.dedaub.com
// 2023.11.08 22:00 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function () public payable { 
    revert();
}

function transfer(address varg0, address varg1, address[] varg2, uint256 varg3) public nonPayable { 
    v0 = new uint256[](varg2.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length << 5);
    require(bool(v0.length > 0));
    v1 = v2 = 0;
    while (v1 < v0.length) {
        assert(bool(v1 < v0.length));
        v3 = varg1.transferFrom(varg0, address(v0[v1]), varg3).gas(msg.gas);
        v1 += 1;
    }
    return bool(1);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1561ae31 == uint32(function_selector >> 224)) {
            transfer(address,address,address[],uint256);
        }
    }
    ();
}
