// Decompiled by library.dedaub.com
// 2023.11.08 21:45 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function () public payable { 
    revert();
}

function transfer(address varg0, address[] varg1, uint256[] varg2) public nonPayable { 
    v0 = new uint256[](varg1.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length << 5);
    v1 = new uint256[](varg2.length);
    CALLDATACOPY(v1.data, varg2.data, varg2.length << 5);
    require(bool(address(address(varg0)) != address(0x0)));
    require(bool(address(address(varg0)) != address(this)));
    require(bool(v0.length > 0));
    require(bool(v1.length > 0));
    require(bool(v0.length == v1.length));
    v2 = v3 = 0;
    while (v2 < v0.length) {
        assert(bool(v2 < v0.length));
        assert(bool(v2 < v1.length));
        v4 = varg0.transferFrom(msg.sender, address(v0[v2]), v1[v2]).gas(msg.gas);
        v2 += 1;
    }
    return bool(1);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x72a503be == uint32(function_selector >> 224)) {
            transfer(address,address[],uint256[]);
        }
    }
    ();
}
