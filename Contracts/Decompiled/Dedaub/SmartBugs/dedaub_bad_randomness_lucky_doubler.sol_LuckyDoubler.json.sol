// Decompiled by library.dedaub.com
// 2023.11.08 20:01 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 stor_1; // STORAGE[0x1]
uint256 _changeFee; // STORAGE[0x2]
uint256 _multiplierFactor; // STORAGE[0x3]
mapping (uint256 => struct_352) _userStats; // STORAGE[0x4]
struct_350[] _totalEntries; // STORAGE[0x5]
uint256[] array_6; // STORAGE[0x6]
uint256 _changeMultiplier; // STORAGE[0x0] bytes 0 to 19

struct struct_352 { uint256 field0; uint256 field1; uint256 field2; };
struct struct_350 { uint256 field0; uint256 field1; uint256 field2; uint256 field3; };


function changeFee(uint256 varg0) public nonPayable { 
    if (msg.sender == _changeMultiplier) {
        require(_changeFee <= 5);
        _changeFee = varg0;
    }
}

function totalEntries() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    if (23) {
        MEM[v0.data] = ~0xffffffffffffffffff & 'The number of deposits.';
    }
    return _totalEntries.length, v0;
}

function userStats(address varg0) public nonPayable { 
    v0 = v1 = 0;
    v2 = v3 = 96;
    if (!bool(address(address(_userStats[address(address(address(varg0)))].field0)) == address(0x0))) {
        v0 = v4 = _userStats[varg0].field1;
        v0 = v5 = _userStats[varg0].field2;
        v2 = v6 = 'Users stats: total deposits, payouts received.';
    }
    v7 = new uint256[](MEM[v2]);
    v8 = v9 = 0;
    while (v8 < MEM[v2]) {
        MEM[v7.data + v8] = MEM[32 + v2 + v8];
        v8 = v8 + 32;
    }
    v10 = v11 = MEM[v2] + v7.data;
    if (0x1f & MEM[v2]) {
        MEM[v11 - (0x1f & MEM[v2])] = ~(256 ** (32 - (0x1f & MEM[v2])) - 1) & MEM[v11 - (0x1f & MEM[v2])];
    }
    return v0, v0, v7;
}

function changeOwner(address varg0) public nonPayable { 
    if (msg.sender == _changeMultiplier) {
        _changeMultiplier = varg0;
    }
}

function changeMultiplier(uint256 varg0) public nonPayable { 
    if (msg.sender == _changeMultiplier) {
        v0 = v1 = varg0 < 110;
        if (varg0 >= 110) {
            v0 = varg0 > 150;
        }
        require(!v0);
        _multiplierFactor = varg0;
    }
}

function currentFee() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    v4 = v5 = v1.length + v0.data;
    if (20) {
        MEM[v5 - 20] = ~0xffffffffffffffffffffffff & 'ed payouts (max 5%).';
    }
    return _changeFee, v0, v6, 'The fee percentage applied to al', 'l deposits. It can change to spe';
}

function entryDetails(uint256 varg0) public nonPayable { 
    v0 = v1 = 0;
    v2 = v3 = 0;
    v4 = v5 = 96;
    if (varg0 < _totalEntries.length) {
        assert(bool(varg0 < _totalEntries.length));
        v0 = v6 = address(_totalEntries[varg0].field0);
        assert(bool(varg0 < _totalEntries.length));
        assert(bool(0x38d7ea4c68000));
        v0 = _totalEntries[varg0].field2 / 0x38d7ea4c68000;
        assert(bool(varg0 < _totalEntries.length));
        v2 = uint8(_totalEntries[varg0].field3);
        v4 = 'Entry info: user address, expected payout in Finneys, payout status.';
    }
    v7 = new uint256[](MEM[v4]);
    v8 = v9 = 0;
    while (v8 < MEM[v4]) {
        MEM[v7.data + v8] = MEM[32 + v4 + v8];
        v8 = v8 + 32;
    }
    v10 = v11 = MEM[v4] + v7.data;
    if (0x1f & MEM[v4]) {
        MEM[v11 - (0x1f & MEM[v4])] = ~(256 ** (32 - (0x1f & MEM[v4])) - 1) & MEM[v11 - (0x1f & MEM[v4])];
    }
    return address(v0), v0, bool(v2), v7;
}

function () public nonPayable { 
    if (msg.value >= 0xde0b6b3a7640000) {
        v0 = v1 = 0xde0b6b3a7640000;
        if (msg.value > 0xde0b6b3a7640000) {
            v2 = msg.sender.call().value(msg.value - 0xde0b6b3a7640000).gas(!(msg.value - 0xde0b6b3a7640000) * 2300);
            v0 = v3 = 0xde0b6b3a7640000;
        }
        if (address(_userStats[address(address(msg.sender))].field0) == address(0x0)) {
            _userStats[msg.sender].field0 = msg.sender | bytes12(_userStats[address(address(msg.sender))].field0);
            _userStats[msg.sender].field1 = 0;
            _userStats[msg.sender].field2 = 0;
        }
        assert(bool(100));
        _totalEntries = _totalEntries.length + 1;
        _totalEntries[_totalEntries.length + 1 - 1].field0 = msg.sender | bytes12(_totalEntries[_totalEntries.length + 1 - 1].field0);
        _totalEntries[_totalEntries.length + 1 - 1].field1 = v0;
        _totalEntries[_totalEntries.length + 1 - 1].field2 = v0 * _multiplierFactor / 100;
        _totalEntries[_totalEntries.length + 1 - 1].field3 = 0x0 | bytes31(_totalEntries[_totalEntries.length + 1 - 1].field3);
        _userStats[msg.sender].field1 += 1;
        array_6 = array_6.length + 1;
        array_6[array_6.length + 1 - 1] = _totalEntries.length - 1;
        assert(bool(100));
        stor_1 = stor_1 + v0 * (100 - _changeFee) / 100;
        if (array_6.length > 1) {
            assert(bool(array_6.length));
            assert(bool(-36 / array_6.length));
            assert(bool(array_6.length));
            v4 = v5 = block.blockhash(block.number - 1) / (-36 / array_6.length) % array_6.length;
        } else {
            v4 = v6 = 0;
        }
        assert(bool(v4 < array_6.length));
        assert(bool(array_6[v4] < _totalEntries.length));
        if (stor_1 > _totalEntries[array_6[v4]].field2) {
            v7 = address(_totalEntries[array_6[v4]].field0).call().value(_totalEntries[array_6[v4]].field2).gas(!_totalEntries[array_6[v4]].field2 * 2300);
            _totalEntries[array_6[v4]].field3 = 0x1 | bytes31(_totalEntries[array_6[v4]].field3);
            _userStats[address(_totalEntries[array_6[v4]].field0)].field2 += 1;
            stor_1 = stor_1 - _totalEntries[array_6[v4]].field2;
            if (v4 < array_6.length - 1) {
                assert(bool(array_6.length - 1 < array_6.length));
                assert(bool(v4 < array_6.length));
                array_6[v4] = array_6[array_6.length - 1];
            }
            array_6 = array_6.length - 1;
            if (array_6.length > array_6.length - 1) {
                v8 = v9 = keccak256(6) + (array_6.length - 1);
                while (keccak256(6) + array_6.length > v8) {
                    STORAGE[v8] = 0;
                    v8 += 1;
                }
            }
        }
        if ((address(this)).balance - stor_1 > 0) {
            v10 = _changeMultiplier.call().value((address(this)).balance - stor_1).gas(!((address(this)).balance - stor_1) * 2300);
        }
    } else {
        v11 = msg.sender.call().value(msg.value).gas(!msg.value * 2300);
    }
}

function multiplierFactor() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    v4 = v5 = v1.length + v0.data;
    if (3) {
        MEM[v5 - 3] = 0x30252e0000000000000000000000000000000000000000000000000000000000;
    }
    return _multiplierFactor, v0, v6, 'The current multiplier applied t', 'o all deposits. Min 110%, max 15';
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x30677b83 == uint32(function_selector >> 224)) {
            multiplierFactor();
        } else if (0x6a1db1bf == uint32(function_selector >> 224)) {
            changeFee(uint256);
        } else if (0x7fef036e == uint32(function_selector >> 224)) {
            totalEntries();
        } else if (0x8a65d874 == uint32(function_selector >> 224)) {
            userStats(address);
        } else if (0xa6f9dae1 == uint32(function_selector >> 224)) {
            changeOwner(address);
        } else if (0xced92670 == uint32(function_selector >> 224)) {
            changeMultiplier(uint256);
        } else if (0xda3c300d == uint32(function_selector >> 224)) {
            currentFee();
        } else if (0xf67abd87 == uint32(function_selector >> 224)) {
            entryDetails(uint256);
        }
    }
    ();
}
