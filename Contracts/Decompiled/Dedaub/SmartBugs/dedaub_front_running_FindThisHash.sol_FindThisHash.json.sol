// Decompiled by library.dedaub.com
// 2023.11.08 20:13 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function () public payable { 
    revert();
}

function hash() public nonPayable { 
    return uint256(0xb5b5b97fafd9855eec9b41f74dfb6c38f5951141f9a3ecd7f44d5479b630ee0a);
}

function solve(string varg0) public nonPayable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v1 = v2 = v2.data;
    v3 = v4 = v0.length;
    v5 = v6 = v0.data;
    while (!bool(v3 < 32)) {
        MEM[v1] = MEM[v5];
        v1 = v1 + 32;
        v5 = v5 + 32;
        v3 = v3 - 32;
    }
    MEM[v1] = MEM[v5] & ~(256 ** (32 - v3) - 1) | MEM[v1] & 256 ** (32 - v3) - 1;
    require(bool(uint256(0xb5b5b97fafd9855eec9b41f74dfb6c38f5951141f9a3ecd7f44d5479b630ee0a) == uint256(keccak256(v2))));
    v7 = msg.sender.call().value(0x3635c9adc5dea00000);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x9bd5a60 == uint32(function_selector >> 224)) {
            hash();
        } else if (0x76fe1e92 == uint32(function_selector >> 224)) {
            solve(string);
        }
    }
    ();
}
