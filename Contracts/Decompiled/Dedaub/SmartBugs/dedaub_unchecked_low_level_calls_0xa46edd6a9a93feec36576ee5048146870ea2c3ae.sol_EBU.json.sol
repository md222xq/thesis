// Decompiled by library.dedaub.com
// 2023.11.08 21:46 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function () public payable { 
    revert();
}

function transfer(address varg0, address varg1, address[] varg2, uint256[] varg3) public nonPayable { 
    v0 = new uint256[](varg2.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length << 5);
    v1 = new uint256[](varg3.length);
    CALLDATACOPY(v1.data, varg3.data, varg3.length << 5);
    require(bool(v0.length > 0));
    v2 = v3 = 0;
    while (v2 < v0.length) {
        assert(bool(v2 < v0.length));
        assert(bool(v2 < v1.length));
        v4 = varg1.transferFrom(varg0, address(v0[v2]), v1[v2]).gas(msg.gas);
        v2 += 1;
    }
    return bool(1);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x11be40e0 == uint32(function_selector >> 224)) {
            transfer(address,address,address[],uint256[]);
        }
    }
    ();
}
