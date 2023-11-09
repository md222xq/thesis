// Decompiled by library.dedaub.com
// 2023.11.08 19:38 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _currentPyramidBalanceApproximately; // STORAGE[0x0]
uint256 _feesSeperateFromBalanceApproximately; // STORAGE[0x1]
uint256 _currentFeePercentage; // STORAGE[0x2]
uint256 _currentMultiplier; // STORAGE[0x3]
uint256 _numberOfParticipantsWaitingForPayout; // STORAGE[0x4]
struct_306[] _totalParticipants; // STORAGE[0x6]
uint256 _dynamicPyramid; // STORAGE[0x5] bytes 0 to 19

struct struct_306 { uint256 field0; uint256 field1; };


function feesSeperateFromBalanceApproximately() public nonPayable { 
    assert(bool(0xde0b6b3a7640000));
    return _feesSeperateFromBalanceApproximately / 0xde0b6b3a7640000;
}

function collectPercentOfFees(uint256 varg0) public nonPayable { 
    if (msg.sender == _dynamicPyramid) {
        v0 = v1 = _feesSeperateFromBalanceApproximately == 0;
        if (_feesSeperateFromBalanceApproximately != 0) {
            v0 = varg0 > 100;
        }
        require(!v0);
        assert(bool(100));
        v2 = _dynamicPyramid.call().value(_feesSeperateFromBalanceApproximately / 100 * varg0).gas(!(_feesSeperateFromBalanceApproximately / 100 * varg0) * 2300);
        _feesSeperateFromBalanceApproximately = _feesSeperateFromBalanceApproximately - _feesSeperateFromBalanceApproximately / 100 * varg0;
    }
}

function nextPayoutWhenPyramidBalanceTotalsApproximately() public nonPayable { 
    assert(bool(_numberOfParticipantsWaitingForPayout < _totalParticipants.length));
    assert(bool(0xde0b6b3a7640000));
    return _totalParticipants[_numberOfParticipantsWaitingForPayout].field1 / 0xde0b6b3a7640000;
}

function DynamicPyramid() public nonPayable { 
    _dynamicPyramid = msg.sender;
}

function collectAllFees() public nonPayable { 
    0x724();
}

function currentMultiplier() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    v4 = v5 = v1.length + v0.data;
    if (31) {
        MEM[v5 - 31] = ~0xff & MEM[v5 - 31];
    }
    return _currentMultiplier, v0;
}

function currentFeePercentage() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    v4 = v5 = v1.length + v0.data;
    if (4) {
        MEM[v5 - 4] = ~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff & MEM[v5 - 4];
    }
    return _currentFeePercentage, v0;
}

function participantDetails(uint256 varg0) public nonPayable { 
    v0 = v1 = 0;
    if (!bool(varg0 > _totalParticipants.length)) {
        assert(bool(varg0 < _totalParticipants.length));
        v0 = v2 = address(_totalParticipants[varg0].field0);
        assert(bool(varg0 < _totalParticipants.length));
        assert(bool(0xde0b6b3a7640000));
        v0 = _totalParticipants[varg0].field1 / 0xde0b6b3a7640000;
    }
    return address(v0), v0;
}

function totalParticipants() public nonPayable { 
    return _totalParticipants.length;
}

function changeOwner(address varg0) public nonPayable { 
    if (msg.sender == _dynamicPyramid) {
        _dynamicPyramid = varg0;
    }
}

function collectFeesInEther(uint256 varg0) public nonPayable { 
    if (msg.sender == _dynamicPyramid) {
        if (varg0 * 0xde0b6b3a7640000 > _feesSeperateFromBalanceApproximately) {
            0x724();
        }
        require(_feesSeperateFromBalanceApproximately != 0);
        v0 = _dynamicPyramid.call().value(varg0 * 0xde0b6b3a7640000).gas(!(varg0 * 0xde0b6b3a7640000) * 2300);
        _feesSeperateFromBalanceApproximately = _feesSeperateFromBalanceApproximately - varg0 * 0xde0b6b3a7640000;
    }
}

function changeMultiplier(uint256 varg0) public nonPayable { 
    if (msg.sender == _dynamicPyramid) {
        v0 = v1 = varg0 > 300;
        if (varg0 <= 300) {
            v0 = varg0 < 120;
        }
        require(!v0);
        _currentMultiplier = varg0;
    }
}

function numberOfParticipantsWaitingForPayout() public nonPayable { 
    return _totalParticipants.length - _numberOfParticipantsWaitingForPayout;
}

function changeFeePercentage(uint256 varg0) public nonPayable { 
    if (msg.sender == _dynamicPyramid) {
        require(varg0 <= 10);
        _currentFeePercentage = varg0;
    }
}

function 0x724() private { 
    if (msg.sender == _dynamicPyramid) {
        require(_feesSeperateFromBalanceApproximately != 0);
        v0 = _dynamicPyramid.call().value(_feesSeperateFromBalanceApproximately).gas(!_feesSeperateFromBalanceApproximately * 2300);
        _feesSeperateFromBalanceApproximately = 0;
    }
    return ;
}

function () public nonPayable { 
    if (msg.value >= 0xde0b6b3a7640000) {
        v0 = v1 = _currentFeePercentage;
        if (!bool(msg.value < 0x2b5e3af16b1880000)) {
            assert(bool(2));
            v0 = v1 >> 1;
        }
        assert(bool(100));
        _totalParticipants = _totalParticipants.length + 1;
        _totalParticipants[_totalParticipants.length + 1 - 1].field0 = msg.sender | bytes12(_totalParticipants[_totalParticipants.length + 1 - 1].field0);
        _totalParticipants[_totalParticipants.length + 1 - 1].field1 = msg.value * _currentMultiplier / 100;
        if (_totalParticipants.length != 10) {
            if (_totalParticipants.length == 25) {
                _currentMultiplier = 150;
            }
        } else {
            _currentMultiplier = 200;
        }
        assert(bool(100));
        _currentPyramidBalanceApproximately = _currentPyramidBalanceApproximately + msg.value * (100 - v0) / 100;
        assert(bool(100));
        _feesSeperateFromBalanceApproximately = _feesSeperateFromBalanceApproximately + msg.value * v0 / 100;
        while (!bool(_numberOfParticipantsWaitingForPayout < _totalParticipants.length)) {
            if (_currentPyramidBalanceApproximately > _totalParticipants[_numberOfParticipantsWaitingForPayout].field1) {
                assert(bool(_numberOfParticipantsWaitingForPayout < _totalParticipants.length));
                assert(bool(_numberOfParticipantsWaitingForPayout < _totalParticipants.length));
                v2 = address(_totalParticipants[_numberOfParticipantsWaitingForPayout].field0).call().value(_totalParticipants[_numberOfParticipantsWaitingForPayout].field1).gas(!_totalParticipants[_numberOfParticipantsWaitingForPayout].field1 * 2300);
                assert(bool(_numberOfParticipantsWaitingForPayout < _totalParticipants.length));
                _currentPyramidBalanceApproximately = _currentPyramidBalanceApproximately - _totalParticipants[_numberOfParticipantsWaitingForPayout].field1;
                _numberOfParticipantsWaitingForPayout = _numberOfParticipantsWaitingForPayout + 1;
            }
        }
        throw();
    } else {
        _feesSeperateFromBalanceApproximately = _feesSeperateFromBalanceApproximately + msg.value;
    }
}

function currentPyramidBalanceApproximately() public nonPayable { 
    assert(bool(0xde0b6b3a7640000));
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    v4 = v5 = v1.length + v0.data;
    if (10) {
        MEM[v5 - 10] = ~0xffffffffffffffffffffffffffffffffffffffffffff & MEM[v5 - 10];
    }
    return _currentPyramidBalanceApproximately / 0xde0b6b3a7640000, v0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x9dfdc71 == uint32(function_selector >> 224)) {
            currentPyramidBalanceApproximately();
        } else if (0x253459e3 == uint32(function_selector >> 224)) {
            feesSeperateFromBalanceApproximately();
        } else if (0x4229616d == uint32(function_selector >> 224)) {
            collectPercentOfFees(uint256);
        } else if (0x57d4021b == uint32(function_selector >> 224)) {
            nextPayoutWhenPyramidBalanceTotalsApproximately();
        } else if (0x67f809e9 == uint32(function_selector >> 224)) {
            DynamicPyramid();
        } else if (0x686f2c90 == uint32(function_selector >> 224)) {
            collectAllFees();
        } else if (0x6fbaaa1e == uint32(function_selector >> 224)) {
            currentMultiplier();
        } else if (0x8a5fb3ca == uint32(function_selector >> 224)) {
            currentFeePercentage();
        } else if (0x9dbc4f9b == uint32(function_selector >> 224)) {
            participantDetails(uint256);
        } else if (0xa26dbf26 == uint32(function_selector >> 224)) {
            totalParticipants();
        } else if (0xa6f9dae1 == uint32(function_selector >> 224)) {
            changeOwner(address);
        } else if (0xb4022950 == uint32(function_selector >> 224)) {
            collectFeesInEther(uint256);
        } else if (0xced92670 == uint32(function_selector >> 224)) {
            changeMultiplier(uint256);
        } else if (0xd11f13df == uint32(function_selector >> 224)) {
            numberOfParticipantsWaitingForPayout();
        } else if (0xfae14192 == uint32(function_selector >> 224)) {
            changeFeePercentage(uint256);
        }
    }
    ();
}
