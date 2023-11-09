// Decompiled by library.dedaub.com
// 2023.11.08 21:51 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256[] _getPlayerCount; // STORAGE[0x4]
mapping (uint256 => uint256) _setSeed; // STORAGE[0x5]
uint256 _secret; // STORAGE[0x6]
uint256[] _getLength; // STORAGE[0x7]
uint256[] _balance; // STORAGE[0x8]
uint256 _winner; // STORAGE[0x0] bytes 0 to 19
uint256 _dranMe; // STORAGE[0x1] bytes 0 to 19
uint256 _firstTarget; // STORAGE[0x2] bytes 0 to 19
uint256 _secondTarget; // STORAGE[0x3] bytes 0 to 19



function () public payable { 
}

function callFirstTarget() public payable { 
    require(bool(uint8(_setSeed[address(address(msg.sender))])));
    require(bool(msg.value >= 0x11c37937e08000));
    v0 = _firstTarget.call().value(msg.value).gas(msg.gas);
}

function callSecondTarget() public payable { 
    require(bool(uint8(_setSeed[address(address(msg.sender))])));
    require(bool(msg.value >= 0x11c37937e08000));
    v0 = _secondTarget.call().value(msg.value).gas(msg.gas);
}

function setSeed(uint256 varg0, uint256 varg1) public payable { 
    require(bool(uint8(_setSeed[address(address(msg.sender))])));
    assert(bool(varg0 < _getLength.length));
    _getLength[varg0] = varg1;
}

function DranMe() public payable { 
    _dranMe = msg.sender;
}

function checkSecret() public payable { 
    v0 = v1 = 0;
    require(bool(uint8(_setSeed[address(address(msg.sender))])));
    require(bool(msg.value >= 0x2386f26fc10000));
    if (msg.value == _secret) {
        v0 = v2 = 1;
    }
    return bool(v0);
}

function setSecret(uint256 varg0) public payable { 
    require(bool(address(msg.sender) == _dranMe));
    _secret = varg0;
}

function balance(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _balance.length));
    return _balance[varg0];
}

function becomePlayer() public payable { 
    require(bool(msg.value >= 0x470de4df820000));
    _getPlayerCount = _getPlayerCount.length + 1;
    _getPlayerCount[_getPlayerCount.length + 1 - 1] = msg.sender | bytes12(_getPlayerCount[_getPlayerCount.length + 1 - 1]);
    _setSeed[msg.sender] = 0x1 | bytes31(_setSeed[address(address(msg.sender))]);
}

function manipulateSecret() public payable { 
    require(bool(uint8(_setSeed[address(address(msg.sender))])));
    require(bool(msg.value >= 0x2386f26fc10000));
    v0 = v1 = msg.sender != _dranMe;
    if (msg.sender == _dranMe) {
        assert(bool(5));
        if (keccak256(uint256(block.blockhash(block.number - 1))) % 5 != 0) {
            v0 = v2 = 0;
        } else {
            _winner = msg.sender;
            v0 = v3 = 1;
        }
    }
    if (v0) {
        v4 = msg.sender.call().gas(2300);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function claimPrize() public payable { 
    require(bool(address(msg.sender) == _winner));
    v0 = _winner.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function owner() public nonPayable { 
    return _dranMe;
}

function seed(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _getLength.length));
    return _getLength[varg0];
}

function secondTarget() public nonPayable { 
    return _secondTarget;
}

function winPrize() public payable { 
    require(bool(address(msg.sender) == _dranMe));
    v0 = _dranMe.call().value(1).gas(msg.gas);
}

function guessSeed(uint256 varg0) public payable { 
    require(bool(uint8(_setSeed[address(address(msg.sender))])));
    assert(bool(1 < _getLength.length));
    assert(bool(0 < _getLength.length));
    assert(bool(_getLength[0] * _getLength[1]));
    return varg0 / (_getLength[0] * _getLength[1]);
}

function getLength() public nonPayable { 
    return _getLength.length;
}

function getPlayerCount() public nonPayable { 
    return _getPlayerCount.length;
}

function getPrize() public nonPayable { 
    return (address(this)).balance;
}

function secret() public nonPayable { 
    return _secret;
}

function winner() public nonPayable { 
    return _winner;
}

function firstTarget() public nonPayable { 
    return _firstTarget;
}

function addSeed(uint256 varg0) public payable { 
    require(bool(uint8(_setSeed[address(address(msg.sender))])));
    _getLength = varg0;
    if (_getLength.length > varg0) {
        v0 = v1 = keccak256(7) + varg0;
        while (keccak256(7) + _getLength.length > v0) {
            STORAGE[v0] = 0;
            v0 += 1;
        }
    }
}

function players(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _getPlayerCount.length));
    return address(_getPlayerCount[varg0]);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = uint32(function_selector >> 224);
        if (0x66d4701 == v0) {
            callFirstTarget();
        } else if (0x1d263b53 == v0) {
            callSecondTarget();
        } else if (0x1d7915ad == v0) {
            setSeed(uint256,uint256);
        } else if (0x2a8de0ca == v0) {
            DranMe();
        } else if (0x2fdfd2ae == v0) {
            checkSecret();
        } else if (0x3b4dbf8b == v0) {
            setSecret(uint256);
        } else if (0x47bb89f0 == v0) {
            balance(uint256);
        } else if (0x56075a98 == v0) {
            becomePlayer();
        } else if (0x59eca3e2 == v0) {
            manipulateSecret();
        } else if (0x70740ac9 == v0) {
            claimPrize();
        } else if (0x8da5cb5b == v0) {
            owner();
        } else if (0x95564837 == v0) {
            seed(uint256);
        } else if (0x9e3b9dc1 == v0) {
            secondTarget();
        } else if (0xb11cc099 == v0) {
            winPrize();
        } else if (0xbced9cfd == v0) {
            guessSeed(uint256);
        } else if (0xbe1c766b == v0) {
            getLength();
        } else if (0xc2e52206 == v0) {
            getPlayerCount();
        } else if (0xc34f6b0d == v0) {
            getPrize();
        } else if (0xd1efd30d == v0) {
            secret();
        } else if (0xdfbf53ae == v0) {
            winner();
        } else if (0xf5db9820 == v0) {
            firstTarget();
        } else if (0xf6fc8160 == v0) {
            addSeed(uint256);
        } else if (0xf71d96cb == v0) {
            players(uint256);
        }
    }
    ();
}
