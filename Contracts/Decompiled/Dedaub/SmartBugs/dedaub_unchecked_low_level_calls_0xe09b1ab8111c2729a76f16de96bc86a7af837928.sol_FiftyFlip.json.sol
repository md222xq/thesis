// Decompiled by library.dedaub.com
// 2023.11.08 22:00 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _jackpotSize; // STORAGE[0x4]
uint256 _devFeeSize; // STORAGE[0x5]
uint256 _lockedInBets; // STORAGE[0x6]
uint256 _totalAmountToWhale; // STORAGE[0x7]
mapping (uint256 => struct_496) _getBetInfo; // STORAGE[0x8]
mapping (uint256 => uint256) _donateForContractHealth; // STORAGE[0x9]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _autoPlayBot; // STORAGE[0x1] bytes 0 to 19
uint256 _secretSigner; // STORAGE[0x2] bytes 0 to 19
uint256 stor_3_0_19; // STORAGE[0x3] bytes 0 to 19

struct struct_496 { uint256 field0; uint256 field1; uint256 field2; };

// Events
Wager(uint256, uint256, uint256, bool, address);
JackpotPayment(address, uint256, uint256);
Donate(uint256, address);
Refund(uint256, uint256, address);
Win(address, uint256, uint256, bool, uint256);
Lose(address, uint256, uint256, bool, uint256);
Payment(address, uint256);
FailedPayment(address, uint256);

function () public payable { 
}

function wager(bool varg0, uint256 varg1, uint256 varg2, uint8 varg3, bytes32 varg4, bytes32 varg5) public payable { 
    require(bool((address(this)).balance >= _lockedInBets + _jackpotSize + _devFeeSize), Error("This contract doesn't have enough balance, it is stopped till someone donate to this game!"));
    require(bool(address(address(_getBetInfo[varg1].field2 >> 8)) == address(0x0)), Error('Ticket is not new one!'));
    require(bool(msg.value >= 0x2386f26fc10000), Error('Your bet is lower than minimum bet amount'));
    require(bool(msg.value <= 0xde0b6b3a7640000), Error('Your bet is higher than maximum bet amount'));
    v0 = 0xf76();
    require(bool(v0 >= msg.value << 1), Error('If we accept this, this contract will be in danger!'));
    require(bool(block.number <= varg2), Error('Ticket has expired.'));
    MEM[32 + MEM[64]] = '\x19Ethereum Signed Message:\n37';
    MEM[60 + MEM[64]] = uint40(varg2) << 216;
    MEM[65 + MEM[64]] = varg1;
    v1 = v2 = v2.data;
    v3 = v4 = 32 + MEM[64];
    while (!bool(v5 < 32)) {
        MEM[v1] = MEM[v3];
        v1 = v1 + 32;
        v3 = v3 + 32;
        v5 = v5 - 32;
    }
    MEM[v1] = MEM[v3] & ~(256 ** (32 - v5) - 1) | MEM[v1] & 256 ** (32 - v5) - 1;
    MEM[MEM[64]] = 0;
    v6, /* address */ v7 = ecrecover(uint256(keccak256(MEM[(v2.data) len 65])), varg3, uint256(varg4), uint256(varg5));
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (bool(_secretSigner == address(v7))) {
        assert(bool(1000));
        _jackpotSize = _jackpotSize + msg.value * 10 / 1000;
        assert(bool(1000));
        _devFeeSize = _devFeeSize + msg.value * 20 / 1000;
        assert(bool(1000));
        _lockedInBets = _lockedInBets + msg.value * 1900 / 1000;
        assert(bool(1000));
        v8 = stor_3_0_19.donate().value(msg.value * 20 / 1000).gas(msg.gas);
        _totalAmountToWhale = _totalAmountToWhale + msg.value * 20 / 1000;
        _getBetInfo[varg1].field0 = msg.value;
        _getBetInfo[varg1].field1 = block.number;
        _getBetInfo[varg1].field2 = varg0 | bytes31(_getBetInfo[varg1].field2);
        _getBetInfo[varg1].field2 = msg.sender << 8 | ~0xffffffffffffffffffffffffffffffffffffffff00 & _getBetInfo[varg1].field2;
        emit Wager(varg1, _getBetInfo[varg1].field0, _getBetInfo[varg1].field1, bool(uint8(_getBetInfo[varg1].field2)), address(_getBetInfo[varg1].field2 >> 8));
        exit;
    } else {
        MEM[v9.data] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
        MEM[4 + v9.data] = 32;
        revert(Error(v9.data, 'web3 vrs signature is not valid.'));
    }
}

function getCollateralBalance() public nonPayable { 
    v0 = 0xf76();
    return v0;
}

function devFeeSize() public nonPayable { 
    return _devFeeSize;
}

function refund(uint256 varg0) public nonPayable { 
    require(bool((address(this)).balance >= _lockedInBets + _jackpotSize + _devFeeSize), Error("This contract doesn't have enough balance, it is stopped till someone donate to this game!"));
    require(bool(_getBetInfo[varg0].field0 != 0), Error('this ticket has no balance'));
    require(bool(block.number > _getBetInfo[varg0].field1 + 250), Error('this ticket is expired.'));
    v0 = address(_getBetInfo[varg0].field2 >> 8).call().value(_getBetInfo[varg0].field0).gas(!_getBetInfo[varg0].field0 * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    assert(bool(1000));
    _lockedInBets = _lockedInBets - _getBetInfo[varg0].field0 * 1900 / 1000;
    _getBetInfo[varg0].field0 = 0;
    emit Refund(varg0, _getBetInfo[varg0].field0, address(_getBetInfo[varg0].field2 >> 8));
}

function setBotAddress(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner), Error('You are not the owner of this contract!'));
    _autoPlayBot = varg0;
}

function kill() public nonPayable { 
    require(bool(address(msg.sender) == _owner), Error('You are not the owner of this contract!'));
    require(bool(_lockedInBets == 0), Error('All bets should be processed (settled or refunded) before self-destruct.'));
    selfdestruct(_owner);
}

function secretSigner() public nonPayable { 
    return _secretSigner;
}

function 0x2b09(uint256 varg0, address varg1) private { 
    v0 = varg1.call().value(varg0).gas(!varg0 * 2300);
    if (!v0) {
        emit FailedPayment(varg1, varg0);
    } else {
        emit Payment(varg1, varg0);
    }
    return v0;
}

function jackpotSize() public nonPayable { 
    return _jackpotSize;
}

function play(uint256 varg0) public nonPayable { 
    require(bool((address(this)).balance >= _lockedInBets + _jackpotSize + _devFeeSize), Error("This contract doesn't have enough balance, it is stopped till someone donate to this game!"));
    MEM[32 + MEM[64]] = varg0;
    v0 = v1 = v1.data;
    v2 = v3 = 32 + MEM[64];
    while (!bool(v4 < 32)) {
        MEM[v0] = MEM[v2];
        v0 = v0 + 32;
        v2 = v2 + 32;
        v4 = v4 - 32;
    }
    MEM[v0] = MEM[v2] & ~(256 ** (32 - v4) - 1) | MEM[v0] & 256 ** (32 - v4) - 1;
    v5 = keccak256(MEM[(v1.data) len 32]);
    require(bool(address(address(_getBetInfo[v5].field2 >> 8)) != address(0x0)), Error('TicketID is not correct!'));
    require(bool(_getBetInfo[v5].field0 != 0), Error('Ticket is already used one!'));
    v6 = v7 = _getBetInfo[v5].field1 < block.number;
    if (v7) {
        v6 = _getBetInfo[v5].field1 >= block.number - 250;
    }
    require(v6);
    MEM[32 + MEM[64]] = uint256(block.blockhash(_getBetInfo[v5].field1));
    MEM[64 + MEM[64]] = varg0;
    v8 = v9 = v9.data;
    v10 = v11 = 32 + MEM[64];
    while (!bool(v12 < 32)) {
        MEM[v8] = MEM[v10];
        v8 = v8 + 32;
        v10 = v10 + 32;
        v12 = v12 - 32;
    }
    MEM[v8] = MEM[v10] & ~(256 ** (32 - v12) - 1) | MEM[v8] & 256 ** (32 - v12) - 1;
    assert(bool(2));
    v13 = keccak256(MEM[(v9.data) len 64]) % 2 != 0;
    assert(bool(1000));
    assert(bool(1000));
    v14 = v15 = _getBetInfo[v5].field0 * 1900 / 1000;
    v14 = v16 = 0;
    v17 = v18 = 0;
    if (keccak256(MEM[(v9.data) len 64]) % 1000 == 0) {
        v17 = v19 = _jackpotSize;
        _jackpotSize = 0;
    }
    if (v17 > 0) {
        emit JackpotPayment(address(_getBetInfo[v5].field2 >> 8), v5, v17);
    }
    if (v14 + v17 <= 0) {
        emit Lose(address(_getBetInfo[v5].field2 >> 8), _getBetInfo[v5].field0, v5, bool(v13), keccak256(MEM[(v9.data) len 64]) % 1000);
    } else {
        v20 = address(_getBetInfo[v5].field2 >> 8).call().value(v14 + v17).gas(!(v14 + v17) * 2300);
        require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        emit Win(address(_getBetInfo[v5].field2 >> 8), v14 + v17, v5, bool(v13), keccak256(MEM[(v9.data) len 64]) % 1000);
    }
    _lockedInBets = _lockedInBets - v15;
    _getBetInfo[v5].field0 = 0;
}

function totalAmountToWhale() public nonPayable { 
    return _totalAmountToWhale;
}

function donateForContractHealth() public payable { 
    _donateForContractHealth[msg.sender] = _donateForContractHealth[msg.sender] + msg.value;
    emit Donate(msg.value, msg.sender);
}

function getContractBalance() public nonPayable { 
    return (address(this)).balance;
}

function getBetInfo(uint256 varg0) public nonPayable { 
    return _getBetInfo[varg0].field0, _getBetInfo[varg0].field1, bool(uint8(_getBetInfo[varg0].field2)), address(_getBetInfo[varg0].field2 >> 8);
}

function withdrawDevFee(address varg0, uint256 varg1) public nonPayable { 
    require(bool(address(msg.sender) == _owner), Error('You are not the owner of this contract!'));
    require(bool((address(this)).balance >= _lockedInBets + _jackpotSize + _devFeeSize), Error("This contract doesn't have enough balance, it is stopped till someone donate to this game!"));
    require(bool(_devFeeSize >= varg1), Error('You are trying to withdraw more amount than developer fee.'));
    require(bool(varg1 <= (address(this)).balance), Error('Contract balance is lower than withdrawAmount'));
    require(bool(_devFeeSize <= (address(this)).balance), Error('Not enough funds to withdraw.'));
    v0 = 0x2b09(varg1, varg0);
    if (v0) {
        _devFeeSize = _devFeeSize - varg1;
    }
}

function owner() public nonPayable { 
    return _owner;
}

function withdrawDonation(uint256 varg0) public nonPayable { 
    require(bool(_donateForContractHealth[address(address(msg.sender))] >= varg0), Error('You are going to withdraw more than you donated!'));
    v0 = 0x2b09(varg0, msg.sender);
    if (v0) {
        _donateForContractHealth[msg.sender] = _donateForContractHealth[msg.sender] - varg0;
    }
}

function autoPlayBot() public nonPayable { 
    return _autoPlayBot;
}

function withdrawBotFee(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _autoPlayBot), Error('You are not the bot of this contract!'));
    require(bool((address(this)).balance >= _lockedInBets + _jackpotSize + _devFeeSize), Error("This contract doesn't have enough balance, it is stopped till someone donate to this game!"));
    require(bool(_devFeeSize >= varg0), Error('You are trying to withdraw more amount than developer fee.'));
    require(bool(varg0 <= (address(this)).balance), Error('Contract balance is lower than withdrawAmount'));
    require(bool(_devFeeSize <= (address(this)).balance), Error('Not enough funds to withdraw.'));
    v0 = 0x2b09(varg0, _autoPlayBot);
    if (v0) {
        _devFeeSize = _devFeeSize - varg0;
    }
}

function transferAnyERC20Token(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(bool(address(msg.sender) == _owner), Error('You are not the owner of this contract!'));
    require(bool((address(address(varg0))).code.size));
    v0, /* bool */ v1 = varg0.transfer(varg1, varg2).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    return bool(v1);
}

function setSecretSigner(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner), Error('You are not the owner of this contract!'));
    _secretSigner = varg0;
}

function lockedInBets() public nonPayable { 
    return _lockedInBets;
}

function clearStorage(uint256[] varg0) public nonPayable { 
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        assert(bool(v0 < varg0.length));
        v2 = v3 = _getBetInfo[msg.data[(v0 << 5) + varg0.data]].field0 != 0;
        if (_getBetInfo[msg.data[(v0 << 5) + varg0.data]].field0 == 0) {
            v2 = block.number <= _getBetInfo[msg.data[(v0 << 5) + varg0.data]].field1 + 250;
        }
        if (!v2) {
            _getBetInfo[msg.data[(v0 << 5) + varg0.data]].field1 = 0;
            _getBetInfo[msg.data[(v0 << 5) + varg0.data]].field2 = 0x0 | bytes31(_getBetInfo[msg.data[(v0 << 5) + varg0.data]].field2);
            _getBetInfo[msg.data[(v0 << 5) + varg0.data]].field2 = 0x0 | ~0xffffffffffffffffffffffffffffffffffffffff00 & _getBetInfo[msg.data[(v0 << 5) + varg0.data]].field2;
        }
        v0 += 1;
    }
}

function 0xf76() private { 
    if ((address(this)).balance <= _lockedInBets + _jackpotSize + _devFeeSize) {
        v0 = v1 = 0;
    } else {
        v0 = v2 = (address(this)).balance - _lockedInBets - _jackpotSize - _devFeeSize;
    }
    return v0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = uint32(function_selector >> 224);
        if (0xecae7d3 == v0) {
            wager(bool,uint256,uint256,uint8,bytes32,bytes32);
        } else if (0x1529a639 == v0) {
            getCollateralBalance();
        } else if (0x27150f01 == v0) {
            devFeeSize();
        } else if (0x278ecde1 == v0) {
            refund(uint256);
        } else if (0x2d4f40c6 == v0) {
            setBotAddress(address);
        } else if (0x41c0e1b5 == v0) {
            kill();
        } else if (0x4d61537f == v0) {
            secretSigner();
        } else if (0x57246d23 == v0) {
            jackpotSize();
        } else if (0x6898f82b == v0) {
            play(uint256);
        } else if (0x6a98085a == v0) {
            totalAmountToWhale();
        } else if (0x6eb91683 == v0) {
            donateForContractHealth();
        } else if (0x6f9fb98a == v0) {
            getContractBalance();
        } else if (0x79141f80 == v0) {
            getBetInfo(uint256);
        } else if (0x89c5077f == v0) {
            withdrawDevFee(address,uint256);
        } else if (0x8da5cb5b == v0) {
            owner();
        } else if (0x96afccb3 == v0) {
            withdrawDonation(uint256);
        } else if (0xc47fae76 == v0) {
            autoPlayBot();
        } else if (0xd3bced2c == v0) {
            withdrawBotFee(uint256);
        } else if (0xd493b9ac == v0) {
            transferAnyERC20Token(address,address,uint256);
        } else if (0xd702087f == v0) {
            setSecretSigner(address);
        } else if (0xdf88126f == v0) {
            lockedInBets();
        } else if (0xef115542 == v0) {
            clearStorage(uint256[]);
        }
    }
    ();
}
