// Decompiled by library.dedaub.com
// 2023.11.08 21:09 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256[] array_0; // STORAGE[0x0]
uint256[] array_1; // STORAGE[0x1]
uint256 _otherchainstotalsupply; // STORAGE[0x4]
uint256 _supplylimit; // STORAGE[0x5]
uint256 _totalSupply; // STORAGE[0x6]
uint256 _totalMigrated; // STORAGE[0xc]
mapping (uint256 => struct_792) map_d; // STORAGE[0xd]
uint256 stor_e; // STORAGE[0xe]
mapping (uint256 => uint256) _balanceOf; // STORAGE[0xf]
mapping (uint256 => uint256) owner_10; // STORAGE[0x10]
mapping (uint256 => mapping (uint256 => uint256)) _allowance; // STORAGE[0x11]
uint256 _tokenCreationRate; // STORAGE[0x13]
uint256 _bonusCreationRate; // STORAGE[0x14]
uint256 _creationRate; // STORAGE[0x15]
uint256 _fundingEndBlock; // STORAGE[0x16]
uint256 _supplylimitset; // STORAGE[0x12] bytes 0 to 0
uint256 _otherchainstotalset; // STORAGE[0x12] bytes 1 to 1
uint256 _funding; // STORAGE[0x17] bytes 0 to 0
uint256 _refundstate; // STORAGE[0x17] bytes 1 to 1
uint256 _migratestate; // STORAGE[0x17] bytes 2 to 2
uint256 _owner; // STORAGE[0x2] bytes 0 to 19
uint256 _migrationMaster; // STORAGE[0x3] bytes 0 to 19
uint256 _chain1; // STORAGE[0x7] bytes 0 to 19
uint256 _chain2; // STORAGE[0x8] bytes 0 to 19
uint256 _chain3; // STORAGE[0x9] bytes 0 to 19
uint256 _chain4; // STORAGE[0xa] bytes 0 to 19
uint256 _migrationAgent; // STORAGE[0xb] bytes 0 to 19

struct struct_792 { uint256 field0; uint256 field1; uint256 field2; };

// Events
receivedEther(address, uint256);
Approval(address, address, uint256);
Transfer(address, address, uint256);
Burn(address, uint256);
Migrate(address, address, uint256);
UpdatedTokenInformation(string, string);
Refund(address, uint256);

function supplylimit() public nonPayable { 
    return _supplylimit;
}

function migratestate() public nonPayable { 
    return _migratestate;
}

function setChainsAddresses(address varg0, int256 varg1) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    if (varg1 == 1) {
        _chain1 = varg0;
    }
    if (varg1 == 2) {
        _chain2 = varg0;
    }
    if (varg1 == 3) {
        _chain3 = varg0;
    }
    if (varg1 == 4) {
        _chain4 = varg0;
    }
}

function Chain1() public nonPayable { 
    return _chain1;
}

function 0x1101() private { 
    v0 = new bytes[](((!(0x1 & array_0.length) << 8) - 1 & array_0.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & array_0.length) << 8) - 1 & array_0.length) >> 1)) {
        return v0, v3;
    } else if (31 < ((!(0x1 & array_0.length) << 8) - 1 & array_0.length) >> 1) {
        v4 = v5 = array_0.data;
        do {
            MEM[v1] = STORAGE[v4];
            v4 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & array_0.length) << 8) - 1 & array_0.length) >> 1) <= v1);
        return v0, v3;
    } else {
        MEM[v2] = array_0.length >> 8 << 8;
        return v0, v3;
    }
}

function () public payable { 
    require(_funding);
    emit receivedEther(msg.sender, msg.value);
    _balanceOf[msg.sender] = _balanceOf[msg.sender] + msg.value;
}

function 0x272c() private { 
    v0 = new bytes[](((!(0x1 & array_1.length) << 8) - 1 & array_1.length) >> 1);
    v1 = v2 = v0.data;
    if (!(((!(0x1 & array_1.length) << 8) - 1 & array_1.length) >> 1)) {
        return v0, v3;
    } else if (31 < ((!(0x1 & array_1.length) << 8) - 1 & array_1.length) >> 1) {
        v4 = v5 = array_1.data;
        do {
            MEM[v1] = STORAGE[v4];
            v4 += 1;
            v1 += 32;
        } while (v2 + (((!(0x1 & array_1.length) << 8) - 1 & array_1.length) >> 1) <= v1);
        return v0, v3;
    } else {
        MEM[v2] = array_1.length >> 8 << 8;
        return v0, v3;
    }
}

function name() public nonPayable { 
    v0, v1 = 0x1101();
    v2 = new bytes[](v0.length);
    v3 = v4 = 0;
    while (v3 < v0.length) {
        v2[v3] = v0[v3];
        v3 = v3 + 32;
    }
    v5 = v6 = v0.length + v2.data;
    if (0x1f & v0.length) {
        MEM[v6 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v6 - (0x1f & v0.length)];
    }
    return v2;
}

function approve(address varg0, uint256 varg1) public nonPayable { 
    _allowance[msg.sender][varg0] = varg1;
    emit Approval(msg.sender, varg0, varg1);
    return bool(1);
}

function CreationRate() public nonPayable { 
    return _creationRate;
}

function preICOregulations() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    v4 = v5 = v1.length + v0.data;
    if (17) {
        MEM[v5 - 17] = ~0xffffffffffffffffffffffffffffff & MEM[v5 - 17];
    }
    return v0;
}

function totalSupply() public nonPayable { 
    return _totalSupply;
}

function otherchainstotalset() public nonPayable { 
    return _otherchainstotalset;
}

function Chain3() public nonPayable { 
    return _chain3;
}

function transferFrom(address varg0, address varg1, uint256 varg2) public nonPayable { 
    v0 = v1 = _balanceOf[varg0] >= varg2;
    if (!bool(_balanceOf[varg0] < varg2)) {
        v0 = v2 = _allowance[varg0][msg.sender] >= varg2;
    }
    if (v0) {
        v0 = _balanceOf[varg1] + varg2 > _balanceOf[varg1];
    }
    if (!v0) {
        v3 = v4 = 0;
    } else {
        _balanceOf[varg1] = _balanceOf[varg1] + varg2;
        _balanceOf[varg0] = _balanceOf[varg0] - varg2;
        _allowance[varg0][msg.sender] = _allowance[varg0][msg.sender] - varg2;
        emit Transfer(varg0, varg1, varg2);
        v3 = 1;
    }
    return bool(v3);
}

function setotherchainstotalsupply(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(bool(_supplylimitset == bool(0)));
    _otherchainstotalset = 1;
    _otherchainstotalsupply = varg0 ** uint8(18);
}

function otherchainstotalsupply() public nonPayable { 
    return _otherchainstotalsupply;
}

function decimals() public nonPayable { 
    return uint8(18);
}

function supplylimitset() public nonPayable { 
    return _supplylimitset;
}

function setSupply(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(bool(_supplylimitset == bool(0)));
    _supplylimitset = 1;
    _supplylimit = varg0 ** uint8(18);
}

function setBonusCreationRate(uint256 varg0) public nonPayable { 
    if (msg.sender == _owner) {
        _bonusCreationRate = varg0;
        _creationRate = _tokenCreationRate + _bonusCreationRate;
    }
}

function burn(uint256 varg0) public nonPayable { 
    require(bool(_balanceOf[address(address(msg.sender))] >= varg0));
    _balanceOf[msg.sender] = _balanceOf[msg.sender] - varg0;
    _totalSupply = _totalSupply - varg0;
    emit Burn(msg.sender, varg0);
    return bool(1);
}

function PartialFundsTransfer(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    v0 = _owner.call().value((address(this)).balance - varg0).gas(!((address(this)).balance - varg0) * 2300);
}

function FundsTransfer() public nonPayable { 
    require(_funding != bool(1));
    v0 = _owner.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v0));
}

function migrate(uint256 varg0) public nonPayable { 
    require(!_migratestate);
    require(varg0 != 0);
    require(varg0 <= _balanceOf[msg.sender]);
    _balanceOf[msg.sender] = _balanceOf[msg.sender] - varg0;
    _totalSupply = _totalSupply - varg0;
    _totalMigrated = _totalMigrated + varg0;
    require(bool(_migrationAgent.code.size));
    v0 = _migrationAgent.migrateFrom(msg.sender, varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    emit Migrate(msg.sender, _migrationAgent, varg0);
}

function finalize() public nonPayable { 
    require(bool(block.number > _fundingEndBlock + 0x46500));
    _funding = 0;
    _refundstate = !_refundstate;
    if (msg.sender == _owner) {
        v0 = _owner.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    }
}

function setTokenInformation(string varg0, string varg1) public nonPayable { 
    v0 = new bytes[](varg0.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v1 = new bytes[](varg1.length);
    CALLDATACOPY(v1.data, varg1.data, varg1.length);
    require(bool(address(msg.sender) == _owner));
    v2 = v3 = v0.data;
    v4 = v5 = array_0.data;
    if (31 < v0.length) {
        array_0 = 1 + (v0.length + v0.length);
        if (v0.length) {
            while (v3 + v0.length > v2) {
                STORAGE[v4] = MEM[v2];
                v2 += 32;
                v4 += 1;
            }
        }
    } else {
        array_0 = v0.length + v0.length | bytes31(MEM[v3]);
    }
    while (v5 + (31 + (((!(0x1 & array_0.length) << 8) - 1 & array_0.length) >> 1) >> 5) > v4) {
        STORAGE[v4] = 0;
        v4 += 1;
    }
    v6 = v7 = v1.data;
    v8 = v9 = array_1.data;
    if (31 < v1.length) {
        array_1 = 1 + (v1.length + v1.length);
        if (v1.length) {
            while (v7 + v1.length > v6) {
                STORAGE[v8] = MEM[v6];
                v6 += 32;
                v8 += 1;
            }
        }
    } else {
        array_1 = v1.length + v1.length | bytes31(MEM[v7]);
    }
    while (v9 + (31 + (((!(0x1 & array_1.length) << 8) - 1 & array_1.length) >> 1) >> 5) > v8) {
        STORAGE[v8] = 0;
        v8 += 1;
    }
    v10 = new uint256[](((!(0x1 & array_0.length) << 8) - 1 & array_0.length) >> 1);
    v11 = v12 = v10.data;
    if (((!(0x1 & array_0.length) << 8) - 1 & array_0.length) >> 1) {
        if (31 < ((!(0x1 & array_0.length) << 8) - 1 & array_0.length) >> 1) {
            v13 = v14 = array_0.data;
            do {
                MEM[v11] = STORAGE[v13];
                v13 += 1;
                v11 += 32;
            } while (v12 + (((!(0x1 & array_0.length) << 8) - 1 & array_0.length) >> 1) <= v11);
        } else {
            MEM[v12] = array_0.length >> 8 << 8;
        }
    }
    v11 = new uint256[](((!(0x1 & array_1.length) << 8) - 1 & array_1.length) >> 1);
    v15 = v16 = v11.data;
    if (((!(0x1 & array_1.length) << 8) - 1 & array_1.length) >> 1) {
        if (31 < ((!(0x1 & array_1.length) << 8) - 1 & array_1.length) >> 1) {
            v17 = v18 = array_1.data;
            do {
                MEM[v15] = STORAGE[v17];
                v17 += 1;
                v15 += 32;
            } while (v16 + (((!(0x1 & array_1.length) << 8) - 1 & array_1.length) >> 1) <= v15);
        } else {
            MEM[v16] = array_1.length >> 8 << 8;
        }
    }
    emit UpdatedTokenInformation(v10, v11);
}

function DAOPolskaTokenICOregulations() public nonPayable { 
    v0 = new bytes[](v1.length);
    v2 = v3 = 0;
    while (v2 < v1.length) {
        v0[v2] = v1[v2];
        v2 = v2 + 32;
    }
    v4 = v5 = v1.length + v0.data;
    if (21) {
        MEM[v5 - 21] = ~0xffffffffffffffffffffff & MEM[v5 - 21];
    }
    return v0;
}

function migrationMaster() public nonPayable { 
    return _migrationMaster;
}

function sendTokenAw(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    map_d[stor_e].field0 = varg0 | bytes12(map_d[stor_e].field0);
    map_d[stor_e].field1 = varg2;
    map_d[stor_e].field2 = varg1 | bytes12(map_d[stor_e].field2);
    require(bool((address(address(map_d[stor_e].field0))).code.size));
    v0, /* uint256 */ v1 = address(map_d[stor_e].field0).transfer(varg1, varg2).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    stor_e += 1;
}

function refundTRA() public nonPayable { 
    require(!_funding);
    require(_refundstate);
    require(owner_10[msg.sender] != 0);
    owner_10[msg.sender] = 0;
    _totalSupply = _totalSupply - _balanceOf[msg.sender];
    emit Refund(msg.sender, owner_10[msg.sender]);
    v0 = msg.sender.call().value(owner_10[msg.sender]).gas(!owner_10[msg.sender] * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function balanceOf(address varg0) public nonPayable { 
    return _balanceOf[varg0];
}

function burnFrom(address varg0, uint256 varg1) public nonPayable { 
    require(bool(_balanceOf[address(address(address(varg0)))] >= varg1));
    require(bool(varg1 <= _allowance[address(address(address(varg0)))][address(address(msg.sender))]));
    _balanceOf[varg0] = _balanceOf[varg0] - varg1;
    _allowance[varg0][msg.sender] = _allowance[varg0][msg.sender] - varg1;
    _totalSupply = _totalSupply - varg1;
    emit Burn(varg0, varg1);
    return bool(1);
}

function migrationAgent() public nonPayable { 
    return _migrationAgent;
}

function Chain4() public nonPayable { 
    return _chain4;
}

function owner() public nonPayable { 
    return _owner;
}

function turnmigrate() public nonPayable { 
    require(bool(address(msg.sender) == _migrationMaster));
    _migratestate = !_migratestate;
}

function Chain2() public nonPayable { 
    return _chain2;
}

function fundingEndBlock() public nonPayable { 
    return _fundingEndBlock;
}

function totalMigrated() public nonPayable { 
    return _totalMigrated;
}

function symbol() public nonPayable { 
    v0, v1 = 0x272c();
    v2 = new bytes[](v0.length);
    v3 = v4 = 0;
    while (v3 < v0.length) {
        v2[v3] = v0[v3];
        v3 = v3 + 32;
    }
    v5 = v6 = v0.length + v2.data;
    if (0x1f & v0.length) {
        MEM[v6 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v6 - (0x1f & v0.length)];
    }
    return v2;
}

function bonusCreationRate() public nonPayable { 
    return _bonusCreationRate;
}

function transfer(address varg0, uint256 varg1) public nonPayable { 
    v0 = v1 = _balanceOf[msg.sender] >= varg1;
    if (!bool(_balanceOf[msg.sender] < varg1)) {
        v0 = _balanceOf[varg0] + varg1 > _balanceOf[varg0];
    }
    if (!v0) {
        v2 = v3 = 0;
    } else {
        _balanceOf[msg.sender] = _balanceOf[msg.sender] - varg1;
        _balanceOf[varg0] = _balanceOf[varg0] + varg1;
        emit Transfer(msg.sender, varg0, varg1);
        v2 = 1;
    }
    return bool(v2);
}

function fundingState() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    _funding = !_funding;
}

function oneweek() public nonPayable { 
    return 36000;
}

function createDaoPOLSKAtokens(address varg0) public payable { 
    require(_funding);
    require(msg.value != 0);
    assert(bool(_creationRate));
    require(msg.value <= (_supplylimit - _totalSupply) / _creationRate);
    _totalSupply = _totalSupply + msg.value * _creationRate;
    _balanceOf[varg0] = _balanceOf[varg0] + msg.value * _creationRate;
    owner_10[varg0] = owner_10[varg0] + msg.value;
    emit Transfer(0, varg0, msg.value * _creationRate);
    assert(bool(100));
    _totalSupply = _totalSupply + msg.value * _creationRate * 12 / 100;
    _balanceOf[_migrationMaster] = _balanceOf[_migrationMaster] + msg.value * _creationRate * 12 / 100;
    emit Transfer(0, _migrationMaster, msg.value * _creationRate * 12 / 100);
}

function approveAndCall(address varg0, uint256 varg1, bytes varg2) public nonPayable { 
    v0 = new bytes[](varg2.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    v1 = v2 = 0;
    _allowance[msg.sender][varg0] = varg1;
    emit Approval(msg.sender, varg0, varg1);
    if (1) {
        v3 = new bytes[](v0.length);
        v4 = v5 = 0;
        while (v4 < v0.length) {
            v3[v4] = v0[v4];
            v4 = v4 + 32;
        }
        v6 = v7 = v0.length + v3.data;
        if (0x1f & v0.length) {
            MEM[v7 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v7 - (0x1f & v0.length)];
        }
        require(bool((address(address(varg0))).code.size));
        v8 = varg0.receiveApproval(msg.sender, varg1, address(this), v3).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v1 = v9 = 1;
    }
    return bool(v1);
}

function turnrefund() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    _refundstate = !_refundstate;
}

function funding() public nonPayable { 
    return _funding;
}

function tokenCreationRate() public nonPayable { 
    return _tokenCreationRate;
}

function refundstate() public nonPayable { 
    return _refundstate;
}

function allowance(address varg0, address varg1) public nonPayable { 
    return _allowance[varg0][varg1];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = uint32(function_selector >> 224);
        if (0x6fdde03 == v0) {
            name();
        } else if (0x95ea7b3 == v0) {
            approve(address,uint256);
        } else if (0xa49646b == v0) {
            CreationRate();
        } else if (0x131be36c == v0) {
            preICOregulations();
        } else if (0x18160ddd == v0) {
            totalSupply();
        } else if (0x1a1773f4 == v0) {
            otherchainstotalset();
        } else if (0x1b44f449 == v0) {
            Chain3();
        } else if (0x23b872dd == v0) {
            transferFrom(address,address,uint256);
        } else if (0x26f08aec == v0) {
            setotherchainstotalsupply(uint256);
        } else if (0x2d47c29e == v0) {
            otherchainstotalsupply();
        } else if (0x313ce567 == v0) {
            decimals();
        } else if (0x327efb0c == v0) {
            supplylimitset();
        } else if (0x3b4c4b25 == v0) {
            setSupply(uint256);
        } else if (0x41d003cb == v0) {
            setBonusCreationRate(uint256);
        } else if (0x42966c68 == v0) {
            burn(uint256);
        } else if (0x42af2478 == v0) {
            PartialFundsTransfer(uint256);
        } else if (0x42bb5709 == v0) {
            FundsTransfer();
        } else if (0x454b0608 == v0) {
            migrate(uint256);
        } else if (0x4bb278f3 == v0) {
            finalize();
        } else if (0x4eee966f == v0) {
            setTokenInformation(string,string);
        } else if (0x5d5c606f == v0) {
            DAOPolskaTokenICOregulations();
        } else if (0x676d2e62 == v0) {
            migrationMaster();
        } else if (0x6d57dee4 == v0) {
            sendTokenAw(address,address,uint256);
        } else if (0x6f766f20 == v0) {
            refundTRA();
        } else if (0x70a08231 == v0) {
            balanceOf(address);
        } else if (0x79cc6790 == v0) {
            burnFrom(address,uint256);
        } else if (0x8328dbcd == v0) {
            migrationAgent();
        } else if (0x8842bfa0 == v0) {
            Chain4();
        } else if (0x8da5cb5b == v0) {
            owner();
        } else if (0x8e49a2c2 == v0) {
            turnmigrate();
        } else if (0x91a7aa37 == v0) {
            Chain2();
        } else if (0x91b43d13 == v0) {
            fundingEndBlock();
        } else if (0x95a0f5eb == v0) {
            totalMigrated();
        } else if (0x95d89b41 == v0) {
            symbol();
        } else if (0xa4f5b8c1 == v0) {
            bonusCreationRate();
        } else if (0xa9059cbb == v0) {
            transfer(address,uint256);
        } else if (0xb25cdccf == v0) {
            fundingState();
        } else if (0xbf5c844b == v0) {
            oneweek();
        } else if (0xc0a1e525 == v0) {
            createDaoPOLSKAtokens(address);
        } else if (0xcae9ca51 == v0) {
            approveAndCall(address,uint256,bytes);
        } else if (0xcaecc5aa == v0) {
            turnrefund();
        } else if (0xcb4c86b7 == v0) {
            funding();
        } else if (0xcf8d652c == v0) {
            tokenCreationRate();
        } else if (0xdcabf93f == v0) {
            refundstate();
        } else if (0xdd62ed3e == v0) {
            allowance(address,address);
        } else if (0xe4eba2ef == v0) {
            supplylimit();
        } else if (0xea16cee5 == v0) {
            migratestate();
        } else if (0xfbf7980f == v0) {
            setChainsAddresses(address,int256);
        } else if (0xfd4faee0 == v0) {
            Chain1();
        }
    }
    ();
}
