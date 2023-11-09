// Decompiled by library.dedaub.com
// 2023.11.08 21:24 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function () public payable { 
    revert();
}

function getMetadata(uint256 varg0, string varg1) public nonPayable { 
    v0 = new bytes[](varg1.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    MEM[(MEM[64]) len 128] = this.code[this.code.size len 128];
    v1 = v2 = 0;
    if (varg0 != 1) {
        if (varg0 != 2) {
            if (varg0 == 3) {
                assert(bool(0 < 4));
                assert(bool(1 < 4));
                assert(bool(2 < 4));
                assert(bool(3 < 4));
                v1 = 128;
            }
        } else {
            assert(bool(0 < 4));
            assert(bool(1 < 4));
            v1 = v3 = 49;
        }
    } else {
        assert(bool(0 < 4));
        v1 = v4 = 15;
    }
    v5 = v6 = 0;
    while (v5 < 128) {
        MEM[MEM[64] + v5] = MEM[MEM[64] + v5];
        v5 = v5 + 32;
    }
    return uint256('Hello World! :D'), uint256('I would definitely choose a medi'), uint256('Lorem ipsum dolor sit amet, mi e'), uint256('um length string.'), uint256('st accumsan dapibus augue lorem,'), uint256(' tristique vestibulum id, libero'), uint256(' suscipit varius sapien aliquam.'), v1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xcb4799f2 == uint32(function_selector >> 224)) {
            getMetadata(uint256,string);
        }
    }
    ();
}
