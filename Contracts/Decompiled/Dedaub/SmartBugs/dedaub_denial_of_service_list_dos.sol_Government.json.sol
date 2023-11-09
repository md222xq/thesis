// Decompiled by library.dedaub.com
// 2023.11.08 20:10 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _lastTimeOfNewCredit; // STORAGE[0x1]
uint256 _investInTheSystem; // STORAGE[0x2]
uint256[] _creditorAddresses; // STORAGE[0x3]
uint256 _lastCreditorPayedOut; // STORAGE[0x0] bytes 0 to 3
uint256[] _creditorAmounts; // STORAGE[0x4]
mapping (uint256 => uint256) owner_6; // STORAGE[0x6]
uint256 _round; // STORAGE[0x7] bytes 0 to 0
uint256 _corruptElite; // STORAGE[0x5] bytes 0 to 19



function round() public nonPayable { 
    return _round;
}

function corruptElite() public nonPayable { 
    return _corruptElite;
}

function lastTimeOfNewCredit() public nonPayable { 
    return _lastTimeOfNewCredit;
}

function inheritToNextGeneration(address varg0) public nonPayable { 
    if (msg.sender == _corruptElite) {
        _corruptElite = varg0;
    }
}

function investInTheSystem() public nonPayable { 
    _investInTheSystem = _investInTheSystem + msg.value;
}

function totalPayedOut() public nonPayable { 
    v0 = v1 = 0;
    v2 = v3 = 0;
    while (v2 < _lastCreditorPayedOut) {
        assert(bool(v2 < _creditorAmounts.length));
        v0 = v0 + _creditorAmounts[v2];
        v2 += 1;
    }
    return v0;
}

function profitFromCrash() public nonPayable { 
    return _investInTheSystem;
}

function getCreditorAmounts() public nonPayable { 
    v0 = new uint256[](_creditorAmounts.length);
    v1 = v2 = v0.data;
    if (_creditorAmounts.length) {
        v3 = v4 = _creditorAmounts.data;
        do {
            MEM[v1] = STORAGE[v3];
            v1 += 32;
            v3 += 1;
        } while (v2 + (_creditorAmounts.length << 5) <= v1);
    }
    v5 = new uint256[](v0.length);
    v6 = v7 = 0;
    while (v6 < v0.length << 5) {
        MEM[v5.data + v6] = MEM[v0.data + v6];
        v6 = v6 + 32;
    }
    return v5;
}

function creditorAddresses(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _creditorAddresses.length));
    return address(_creditorAddresses[varg0]);
}

function getCreditorAddresses() public nonPayable { 
    v0 = new uint256[](_creditorAddresses.length);
    v1 = v2 = v0.data;
    if (_creditorAddresses.length) {
        v3 = v4 = _creditorAddresses.data;
        do {
            MEM[v1] = address(STORAGE[v3]);
            v1 += 32;
            v3 += 1;
        } while (v2 + (_creditorAddresses.length << 5) <= v1);
    }
    v5 = new uint256[](v0.length);
    v6 = v7 = 0;
    while (v6 < v0.length << 5) {
        MEM[v5.data + v6] = MEM[v0.data + v6];
        v6 = v6 + 32;
    }
    return v5;
}

function lendGovernmentMoney(address varg0) public nonPayable { 
    v0 = 0x490(varg0);
    return bool(v0);
}

function creditorAmounts(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _creditorAmounts.length));
    return _creditorAmounts[varg0];
}

function totalDebt() public nonPayable { 
    v0 = v1 = 0;
    v2 = v3 = _lastCreditorPayedOut;
    while (v2 < _creditorAmounts.length) {
        assert(bool(v2 < _creditorAmounts.length));
        v0 = v0 + _creditorAmounts[v2];
        v2 += 1;
    }
    return v0;
}

function 0x490(address varg0) private { 
    if (_lastTimeOfNewCredit + 43200 >= block.timestamp) {
        if (bool(msg.value < 0xde0b6b3a7640000)) {
            v0 = msg.sender.call().value(msg.value).gas(!msg.value * 2300);
            return 0;
        } else {
            _lastTimeOfNewCredit = block.timestamp;
            _creditorAddresses = _creditorAddresses.length + 1;
            _creditorAddresses[_creditorAddresses.length + 1 - 1] = msg.sender | bytes12(_creditorAddresses[_creditorAddresses.length + 1 - 1]);
            assert(bool(100));
            _creditorAmounts = _creditorAmounts.length + 1;
            _creditorAmounts[_creditorAmounts.length + 1 - 1] = msg.value * 110 / 100;
            assert(bool(100));
            v1 = _corruptElite.call().value(msg.value * 5 / 100).gas(!(msg.value * 5 / 100) * 2300);
            if (_investInTheSystem < 0x21e19e0c9bab2400000) {
                assert(bool(100));
                _investInTheSystem = _investInTheSystem + msg.value * 5 / 100;
            }
            if (!bool(owner_6[address(address(varg0))] < msg.value)) {
                assert(bool(100));
                v2 = varg0.call().value(msg.value * 5 / 100).gas(!(msg.value * 5 / 100) * 2300);
            }
            assert(bool(100));
            owner_6[msg.sender] = owner_6[msg.sender] + msg.value * 110 / 100;
            assert(bool(_lastCreditorPayedOut < _creditorAmounts.length));
            if (!bool(_creditorAmounts[_lastCreditorPayedOut] > (address(this)).balance - _investInTheSystem)) {
                assert(bool(_lastCreditorPayedOut < _creditorAddresses.length));
                assert(bool(_lastCreditorPayedOut < _creditorAmounts.length));
                v3 = address(_creditorAddresses[_lastCreditorPayedOut]).call().value(_creditorAmounts[_lastCreditorPayedOut]).gas(!_creditorAmounts[_lastCreditorPayedOut] * 2300);
                assert(bool(_lastCreditorPayedOut < _creditorAmounts.length));
                assert(bool(_lastCreditorPayedOut < _creditorAddresses.length));
                owner_6[address(_creditorAddresses[_lastCreditorPayedOut])] = owner_6[address(_creditorAddresses[_lastCreditorPayedOut])] - _creditorAmounts[_lastCreditorPayedOut];
                _lastCreditorPayedOut = _lastCreditorPayedOut + 1;
            }
            return 1;
        }
    } else {
        v4 = msg.sender.call().value(msg.value).gas(!msg.value * 2300);
        assert(bool(_creditorAddresses.length - 1 < _creditorAddresses.length));
        v5 = address(_creditorAddresses[_creditorAddresses.length - 1]).call().value(_investInTheSystem).gas(!_investInTheSystem * 2300);
        v6 = _corruptElite.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
        _lastCreditorPayedOut = 0;
        _lastTimeOfNewCredit = block.timestamp;
        _investInTheSystem = 0;
        v7 = new uint256[](0);
        if (0) {
            MEM[(v7.data) len 0] = this.code[this.code.size len 0];
            v8 = v7.data;
        }
        v9 = v10 = v7.data;
        _creditorAddresses = v7.length;
        v11 = v12 = _creditorAddresses.data;
        if (v7.length) {
            while (v7.data > v9) {
                STORAGE[v11] = address(MEM[v9]) | bytes12(STORAGE[v11]);
                v9 += 32;
                v11 += 1;
            }
        }
        while (v12 + _creditorAddresses.length > v11) {
            STORAGE[v11] = bytes12(STORAGE[v11]);
            v11 += 1;
        }
        v13 = new uint256[](0);
        if (0) {
            MEM[(v13.data) len 0] = this.code[this.code.size len 0];
            v14 = v13.data;
        }
        v15 = v16 = v13.data;
        _creditorAmounts = v13.length;
        v17 = v18 = _creditorAmounts.data;
        if (v13.length) {
            while (v13.data > v15) {
                STORAGE[v17] = MEM[v15];
                v15 += 32;
                v17 += 1;
            }
        }
        while (v18 + _creditorAmounts.length > v17) {
            STORAGE[v17] = 0;
            v17 += 1;
        }
        _round = _round + 1;
        return 0;
    }
}

function () public nonPayable { 
    v0 = 0x490(0);
}

function lastCreditorPayedOut() public nonPayable { 
    return _lastCreditorPayedOut;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x9f32957 == uint32(function_selector >> 224)) {
            lastCreditorPayedOut();
        } else if (0x146ca531 == uint32(function_selector >> 224)) {
            round();
        } else if (0x3beea695 == uint32(function_selector >> 224)) {
            corruptElite();
        } else if (0x45941a38 == uint32(function_selector >> 224)) {
            lastTimeOfNewCredit();
        } else if (0x4a1f0bf6 == uint32(function_selector >> 224)) {
            inheritToNextGeneration(address);
        } else if (0x4f013184 == uint32(function_selector >> 224)) {
            investInTheSystem();
        } else if (0x6831c169 == uint32(function_selector >> 224)) {
            totalPayedOut();
        } else if (0x719874da == uint32(function_selector >> 224)) {
            profitFromCrash();
        } else if (0x81064e2d == uint32(function_selector >> 224)) {
            getCreditorAmounts();
        } else if (0xce43b0c0 == uint32(function_selector >> 224)) {
            creditorAddresses(uint256);
        } else if (0xd3edcb5b == uint32(function_selector >> 224)) {
            getCreditorAddresses();
        } else if (0xd95a2d42 == uint32(function_selector >> 224)) {
            lendGovernmentMoney(address);
        } else if (0xf42d1d30 == uint32(function_selector >> 224)) {
            creditorAmounts(uint256);
        } else if (0xfc7b9c18 == uint32(function_selector >> 224)) {
            totalDebt();
        }
    }
    ();
}
