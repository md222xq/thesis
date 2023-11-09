// Decompiled by library.dedaub.com
// 2023.11.08 22:09 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => struct_359) _getPot; // STORAGE[0x0]



function blockReward() public nonPayable { 
    return 0x4563918244f40000;
}

function ticketPrice() public nonPayable { 
    return 0x16345785d8a0000;
}

function getPot(uint256 varg0) public nonPayable { 
    return _getPot[varg0].field1;
}

function 0x305a762a(uint256 varg0, address varg1) public nonPayable { 
    return _getPot[varg0].field4[varg1];
}

function 0x358d5dc2(uint256 varg0, uint256 varg1) public nonPayable { 
    return bool(uint8(_getPot[varg0].field3[varg1]));
}

function 0x459f93f7(uint256 varg0, address varg1) public nonPayable { 
    v0 = new uint256[](_getPot[varg0].field0.length);
    v1 = v2 = v0.data;
    if (_getPot[varg0].field0.length) {
        v3 = v4 = _getPot[varg0].field0.data;
        do {
            MEM[v1] = address(STORAGE[v3]);
            v1 += 32;
            v3 += 1;
        } while (v2 + (_getPot[varg0].field0.length << 5) <= v1);
    }
    v5 = new uint256[](v0.length);
    v6 = v7 = 0;
    while (v6 < v0.length << 5) {
        MEM[v5.data + v6] = MEM[v0.data + v6];
        v6 = v6 + 32;
    }
    return v5;
}

function 0x46a2679a(uint256 varg0) public nonPayable { 
    v0 = 0x91c(varg0);
    return v0;
}

function 0x6572ae13(uint256 varg0, uint256 varg1) public nonPayable { 
    v0 = 0x98d(varg1, varg0);
    return address(v0);
}

function 0x67af1c81() public nonPayable { 
    assert(bool(6800));
    return block.number / 6800;
}

function blocksPerRound() public nonPayable { 
    return 6800;
}

function 0x8089d001(uint256 varg0) public nonPayable { 
    return block.blockhash(varg0);
}

function 0x86bb7121() public nonPayable { 
    return 6800;
}

function getTicketPrice() public nonPayable { 
    return 0x16345785d8a0000;
}

function 0x93dafba2(uint256 varg0) public nonPayable { 
    v0 = 0xb0d(varg0);
    return v0;
}

function 0xce5566c5(uint256 varg0, uint256 varg1) public nonPayable { 
    v0 = 0x91c(varg0);
    if (bool(varg1 < v0)) {
        if ((varg0 + 1) * 6800 + varg1 <= block.number) {
            if (!uint8(_getPot[varg0].field3[varg1])) {
                v1 = 0x98d(varg1, varg0);
                v2 = 0xb0d(varg0);
                v3 = address(v1).call().value(v2).gas(!v2 * 2300);
                _getPot[varg0].field3[varg1] = 0x1 | bytes31(_getPot[varg0].field3[varg1]);
                // Unknown jump to Block 0x744. Refer to 3-address code (TAC);
            } else {
                // Unknown jump to Block 0x744. Refer to 3-address code (TAC);
            }
        } else {
            // Unknown jump to Block 0x744. Refer to 3-address code (TAC);
        }
    }
}

function 0xdf2f0a4a(uint256 varg0, uint256 varg1) public nonPayable { 
    return (varg0 + 1) * 6800 + varg1;
}

function 0x91c(uint256 varg0) private { 
    assert(bool(0x4563918244f40000));
    v0 = v1 = _getPot[varg0].field1 / 0x4563918244f40000;
    assert(bool(0x4563918244f40000));
    if (_getPot[varg0].field1 % 0x4563918244f40000 > 0) {
        v0 = v2 = 1 + v1;
    }
    return v0;
}

function 0x98d(uint256 varg0, uint256 varg1) private { 
    if ((varg1 + 1) * 6800 + varg0 <= block.number) {
        assert(bool(_getPot[varg1].field2));
        v0 = v1 = 0;
        v2 = v3 = 0;
        while (uint8(v2) < _getPot[varg1].field0.length) {
            assert(bool(uint8(v2) < _getPot[varg1].field0.length));
            v4 = address(_getPot[varg1].field0[uint8(v2)]);
            v0 = v0 + _getPot[varg1].field4[v4];
            if (v0 <= block.blockhash((varg1 + 1) * 6800 + varg0) % _getPot[varg1].field2) {
                v2 += 1;
            } else {
                return address(_getPot[varg1].field0[uint8(v2)]);
            }
        }
        return 0;
    } else {
        return 0;
    }
}

function 0xb0d(uint256 varg0) private { 
    v0 = 0x91c(varg0);
    assert(bool(v0));
    return _getPot[varg0].field1 / v0;
}

function () public nonPayable { 
    assert(bool(6800));
    assert(bool(0x16345785d8a0000));
    if (msg.value - msg.value % 0x16345785d8a0000 != 0) {
        if (msg.value - msg.value % 0x16345785d8a0000 < msg.value) {
            v0 = msg.sender.call().value(msg.value - (msg.value - msg.value % 0x16345785d8a0000)).gas(!(msg.value - (msg.value - msg.value % 0x16345785d8a0000)) * 2300);
        }
        assert(bool(0x16345785d8a0000));
        _getPot[block.number / 6800].field2 = _getPot[block.number / 6800].field2 + (msg.value - msg.value % 0x16345785d8a0000) / 0x16345785d8a0000;
        if (_getPot[block.number / 6800].field4[msg.sender] == 0) {
            _getPot[block.number / 6800].field0.length += 1;
            if (_getPot[block.number / 6800].field0.length > 1 + _getPot[block.number / 6800].field0.length) {
                v1 = v2 = keccak256(0 + keccak256(block.number / 6800, 0)) + (1 + _getPot[block.number / 6800].field0.length);
                while (keccak256(0 + keccak256(block.number / 6800, 0)) + _getPot[block.number / 6800].field0.length > v1) {
                    STORAGE[v1] = 0;
                    v1 += 1;
                }
            }
            assert(bool(_getPot[block.number / 6800].field0.length < _getPot[block.number / 6800].field0.length));
            _getPot[block.number / 6800].field0[_getPot[block.number / 6800].field0.length] = msg.sender | bytes12(_getPot[block.number / 6800].field0[_getPot[block.number / 6800].field0.length]);
        }
        _getPot[block.number / 6800].field4[msg.sender] = _getPot[block.number / 6800].field4[msg.sender] + (msg.value - msg.value % 0x16345785d8a0000) / 0x16345785d8a0000;
        _getPot[block.number / 6800].field2 = _getPot[block.number / 6800].field2 + (msg.value - msg.value % 0x16345785d8a0000) / 0x16345785d8a0000;
        _getPot[block.number / 6800].field1 = _getPot[block.number / 6800].field1 + (msg.value - msg.value % 0x16345785d8a0000);
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xac168a1 == uint32(function_selector >> 224)) {
            blockReward();
        } else if (0x1209b1f6 == uint32(function_selector >> 224)) {
            ticketPrice();
        } else if (0x28d3ad3f == uint32(function_selector >> 224)) {
            getPot(uint256);
        } else if (0x305a762a == uint32(function_selector >> 224)) {
            0x305a762a();
        } else if (0x358d5dc2 == uint32(function_selector >> 224)) {
            0x358d5dc2();
        } else if (0x459f93f7 == uint32(function_selector >> 224)) {
            0x459f93f7();
        } else if (0x46a2679a == uint32(function_selector >> 224)) {
            0x46a2679a();
        } else if (0x6572ae13 == uint32(function_selector >> 224)) {
            0x6572ae13();
        } else if (0x67af1c81 == uint32(function_selector >> 224)) {
            0x67af1c81();
        } else if (0x6e4ed796 == uint32(function_selector >> 224)) {
            blocksPerRound();
        } else if (0x8089d001 == uint32(function_selector >> 224)) {
            0x8089d001();
        } else if (0x86bb7121 == uint32(function_selector >> 224)) {
            0x86bb7121();
        } else if (0x87bb7ae0 == uint32(function_selector >> 224)) {
            getTicketPrice();
        } else if (0x93dafba2 == uint32(function_selector >> 224)) {
            0x93dafba2();
        } else if (0xce5566c5 == uint32(function_selector >> 224)) {
            0xce5566c5();
        } else if (0xdf2f0a4a == uint32(function_selector >> 224)) {
            0xdf2f0a4a();
        }
    }
    ();
}
