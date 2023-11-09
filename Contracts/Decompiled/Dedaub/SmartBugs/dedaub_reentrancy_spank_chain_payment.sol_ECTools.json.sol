// Decompiled by library.dedaub.com
// 2023.11.08 20:56 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9





function 0x1099(bytes varg0, uint256 varg1) private { 
    require(bool(uint256(varg1) != 0));
    v0 = v1 = 32 + MEM[64];
    v2 = v3 = v4.length;
    v5 = v6 = v4.data;
    while (!bool(v2 < 32)) {
        MEM[v0] = MEM[v5];
        v0 = v0 + 32;
        v5 = v5 + 32;
        v2 = v2 - 32;
    }
    MEM[v0] = MEM[v5] & ~(256 ** (32 - v2) - 1) | MEM[v0] & 256 ** (32 - v2) - 1;
    MEM[v3 + v1] = varg1;
    v7 = v8 = v8.data;
    v9 = v10 = 32 + MEM[64];
    while (!bool(v11 < 32)) {
        MEM[v7] = MEM[v9];
        v7 = v7 + 32;
        v9 = v9 + 32;
        v11 = v11 - 32;
    }
    MEM[v7] = MEM[v9] & ~(256 ** (32 - v11) - 1) | MEM[v7] & 256 ** (32 - v11) - 1;
    if (bool(varg0.length == 132)) {
        v12 = 0x7b1(132, 2, varg0);
        v13 = 0x636(v12);
        v14 = v15 = byte(MEM[v13 + 96], 0x0);
        if (uint8(v15) < 27) {
            v14 = v16 = v15 + 27;
        }
        v17 = v18 = uint8(v14) < 27;
        if (uint8(v14) >= 27) {
            v17 = v19 = uint8(v14) > 28;
        }
        if (!v17) {
            MEM[MEM[64]] = 0;
            v20, /* uint256 */ v21 = ecrecover(uint256(keccak256(MEM[(v8.data) len 60])), uint8(v14), uint256(MEM[v13.data]), uint256(MEM[v13 + 64]));
            require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            return v21;
        } else {
            return 0;
        }
    } else {
        return 0;
    }
}

function 0x12de(uint256 varg0) private { 
    v0 = v1 = 0;
    v2 = v3 = varg0 + 0;
    while (!bool(v2 == 0)) {
        v0 += 1;
        assert(bool(10));
        v2 = v2 / 10;
    }
    v4 = new bytes[](v0);
    if (v0) {
        MEM[(v4.data) len (v0 << 5)] = this.code[this.code.size len (v0 << 5)];
    }
    v5 = v6 = v0 - 1;
    while (!bool(varg0 == 0)) {
        assert(bool(10));
        assert(bool(10));
        varg0 = varg0 / 10;
        v5 = v5 - 1;
        assert(bool(v5 < v4.length));
        MEM8[v4.data + v5] = (byte(bytes1(48 + varg0 % 10 << 248), 0x0)) & 0xFF;
    }
    return v4;
}

function hexstrToBytes(string varg0) public payable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v1 = 0x636(v0);
    v2 = new bytes[](v1.length);
    v3 = v4 = 0;
    while (v3 < v1.length) {
        v2[v3] = v1[v3];
        v3 = v3 + 32;
    }
    v5 = v6 = v1.length + v2.data;
    if (0x1f & v1.length) {
        MEM[v6 - (0x1f & v1.length)] = ~(256 ** (32 - (0x1f & v1.length)) - 1) & MEM[v6 - (0x1f & v1.length)];
    }
    return v2;
}

function substring(string varg0, uint256 varg1, uint256 varg2) public payable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v1 = 0x7b1(varg2, varg1, v0);
    v2 = new bytes[](v1.length);
    v3 = v4 = 0;
    while (v3 < v1.length) {
        v2[v3] = v1[v3];
        v3 = v3 + 32;
    }
    v5 = v6 = v1.length + v2.data;
    if (0x1f & v1.length) {
        MEM[v6 - (0x1f & v1.length)] = ~(256 ** (32 - (0x1f & v1.length)) - 1) & MEM[v6 - (0x1f & v1.length)];
    }
    return v2;
}

function parseInt16Char(string varg0) public payable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v1 = 0x8e1(v0);
    return v1;
}

function uintToBytes32(uint256 varg0) public payable { 
    v0 = new bytes[](32);
    if (32) {
        MEM[(v0.data) len 1024] = this.code[this.code.size len 1024];
    }
    MEM[v0.data] = varg0;
    v1 = new bytes[](v0.length);
    v2 = v3 = 0;
    while (v2 < v0.length) {
        v1[v2] = v0[v2];
        v2 = v2 + 32;
    }
    v4 = v5 = v0.length + v1.data;
    if (0) {
        MEM[v5 - 0] = ~0x0 & MEM[v5 - 0];
    }
    return v1, v6, varg0;
}

function toEthereumSignedMessage(string varg0) public payable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    require(bool(v0.length > 0));
    v1 = 0x12de(v0.length);
    v2 = v3 = 32 + MEM[64];
    v4 = v5 = v6.length;
    v7 = v8 = v6.data;
    while (!bool(v4 < 32)) {
        MEM[v2] = MEM[v7];
        v2 = v2 + 32;
        v7 = v7 + 32;
        v4 = v4 - 32;
    }
    MEM[v2] = MEM[v7] & ~(256 ** (32 - v4) - 1) | MEM[v2] & 256 ** (32 - v4) - 1;
    v9 = v10 = v5 + v3;
    v11 = v12 = v1.length;
    v13 = v14 = v1.data;
    while (!bool(v11 < 32)) {
        MEM[v9] = MEM[v13];
        v9 = v9 + 32;
        v13 = v13 + 32;
        v11 = v11 - 32;
    }
    MEM[v9] = MEM[v13] & ~(256 ** (32 - v11) - 1) | MEM[v9] & 256 ** (32 - v11) - 1;
    v15 = v16 = v12 + v10;
    v17 = v18 = v0.length;
    v19 = v20 = v0.data;
    while (!bool(v17 < 32)) {
        MEM[v15] = MEM[v19];
        v15 = v15 + 32;
        v19 = v19 + 32;
        v17 = v17 - 32;
    }
    MEM[v15] = MEM[v19] & ~(256 ** (32 - v17) - 1) | MEM[v15] & 256 ** (32 - v17) - 1;
    v21 = v22 = v22.data;
    v23 = v24 = 32 + MEM[64];
    while (!bool(v25 < 32)) {
        MEM[v21] = MEM[v23];
        v21 = v21 + 32;
        v23 = v23 + 32;
        v25 = v25 - 32;
    }
    MEM[v21] = MEM[v23] & ~(256 ** (32 - v25) - 1) | MEM[v21] & 256 ** (32 - v25) - 1;
    return uint256(keccak256(v22));
}

function recoverSigner(bytes32 varg0, string varg1) public payable { 
    v0 = new bytes[](varg1.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v1 = 0x1099(v0, uint256(varg0));
    return address(v1);
}

function uintToString(uint256 varg0) public payable { 
    v0 = 0x12de(varg0);
    v1 = new bytes[](v0.length);
    v2 = v3 = 0;
    while (v2 < v0.length) {
        v1[v2] = v0[v2];
        v2 = v2 + 32;
    }
    v4 = v5 = v0.length + v1.data;
    if (0x1f & v0.length) {
        MEM[v5 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v5 - (0x1f & v0.length)];
    }
    return v1;
}

function 0x636(bytes varg0) private { 
    assert(bool(2));
    require(bool(varg0.length % 2 == 0));
    assert(bool(2));
    v0 = new bytes[](varg0.length >> 1);
    if (varg0.length >> 1) {
        MEM[(v0.data) len (varg0.length >> 1 << 5)] = this.code[this.code.size len (varg0.length >> 1 << 5)];
    }
    v1 = v2 = 0;
    v3 = v4 = 0;
    while (v3 < varg0.length) {
        v5 = 0x7b1(v3 + 1, v3, varg0);
        v6 = 0x7b1(v3 + 2, v3 + 1, varg0);
        v7 = 0x8e1(v6);
        v8 = 0x8e1(v5);
        v9 = new bytes[](32);
        if (32) {
            MEM[(v9.data) len 1024] = this.code[this.code.size len 1024];
        }
        MEM[v9.data] = (v8 << 4) + v7;
        assert(bool(31 < v9.length));
        v1 += 1;
        assert(bool(v1 < v0.length));
        MEM8[v0.data + v1] = (byte(bytes1(v9[31] >> 248 << 248), 0x0)) & 0xFF;
        v3 = v3 + 2;
    }
    return v0;
}

function 0x7b1(uint256 varg0, uint256 varg1, bytes varg2) private { 
    require(bool(varg1 <= varg0));
    require(bool(varg1 >= 0));
    require(bool(varg0 <= varg2.length));
    v0 = varg0 - varg1;
    v1 = new bytes[](v0);
    if (v0) {
        MEM[(v1.data) len (v0 << 5)] = this.code[this.code.size len (v0 << 5)];
    }
    while (varg1 < varg0) {
        assert(bool(varg1 < varg2.length));
        assert(bool(varg1 - varg1 < v1.length));
        MEM8[v1.data + (varg1 - varg1)] = (byte(bytes1(varg2[varg1] >> 248 << 248), 0x0)) & 0xFF;
        varg1 += 1;
    }
    return v1;
}

function 0x8e1(bytes varg0) private { 
    assert(bool(0 < varg0.length));
    v0 = v1 = bytes1(varg0[0] >> 248 << 248) >= 0x3000000000000000000000000000000000000000000000000000000000000000;
    if (!bool(bytes1(varg0[0] >> 248 << 248) < 0x3000000000000000000000000000000000000000000000000000000000000000)) {
        assert(bool(0 < varg0.length));
        v0 = v2 = bytes1(varg0[0] >> 248 << 248) <= 0x3900000000000000000000000000000000000000000000000000000000000000;
    }
    if (!v0) {
        assert(bool(0 < varg0.length));
        v3 = v4 = bytes1(varg0[0] >> 248 << 248) >= 0x4100000000000000000000000000000000000000000000000000000000000000;
        if (!bool(bytes1(varg0[0] >> 248 << 248) < 0x4100000000000000000000000000000000000000000000000000000000000000)) {
            assert(bool(0 < varg0.length));
            v3 = v5 = bytes1(varg0[0] >> 248 << 248) <= 0x4600000000000000000000000000000000000000000000000000000000000000;
        }
        if (!v3) {
            assert(bool(0 < varg0.length));
            v6 = v7 = bytes1(varg0[0] >> 248 << 248) >= 0x6100000000000000000000000000000000000000000000000000000000000000;
            if (!bool(bytes1(varg0[0] >> 248 << 248) < 0x6100000000000000000000000000000000000000000000000000000000000000)) {
                assert(bool(0 < varg0.length));
                v6 = v8 = bytes1(varg0[0] >> 248 << 248) <= 0x6600000000000000000000000000000000000000000000000000000000000000;
            }
            require(v6);
            assert(bool(0 < varg0.length));
            return (varg0[0] >> 248 << 248 >> 248) - 87;
        } else {
            assert(bool(0 < varg0.length));
            return (varg0[0] >> 248 << 248 >> 248) - 55;
        }
    } else {
        assert(bool(0 < varg0.length));
        return (varg0[0] >> 248 << 248 >> 248) - 48;
    }
}

function () public payable { 
    revert();
}

function isSignedBy(bytes32 varg0, string varg1, address varg2) public payable { 
    v0 = new bytes[](varg1.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    require(bool(address(address(varg2)) != 0));
    v1 = 0x1099(v0, uint256(varg0));
    return bool(address(address(varg2)) == address(v1));
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1052506f == uint32(function_selector >> 224)) {
            isSignedBy(bytes32,string,address);
        } else if (0x1445f713 == uint32(function_selector >> 224)) {
            hexstrToBytes(string);
        } else if (0x1dcd9b55 == uint32(function_selector >> 224)) {
            substring(string,uint256,uint256);
        } else if (0x38b025b2 == uint32(function_selector >> 224)) {
            parseInt16Char(string);
        } else if (0x886d3db9 == uint32(function_selector >> 224)) {
            uintToBytes32(uint256);
        } else if (0xdae21454 == uint32(function_selector >> 224)) {
            toEthereumSignedMessage(string);
        } else if (0xdca95419 == uint32(function_selector >> 224)) {
            recoverSigner(bytes32,string);
        } else if (0xe9395679 == uint32(function_selector >> 224)) {
            uintToString(uint256);
        }
    }
    ();
}
