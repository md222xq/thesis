// Decompiled by library.dedaub.com
// 2023.11.08 21:42 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _minDeposit; // STORAGE[0x3]
mapping (uint256 => uint256) _fallback; // STORAGE[0x4]
uint256 _confirmOwner; // STORAGE[0x0] bytes 0 to 19
uint256 _changeOwner; // STORAGE[0x1] bytes 0 to 19
uint256 _initTokenBank; // STORAGE[0x2] bytes 0 to 19



function changeOwner(address varg0) public nonPayable { 
    if (_changeOwner == msg.sender) {
        _confirmOwner = varg0;
    }
}

function confirmOwner() public nonPayable { 
    if (msg.sender == _confirmOwner) {
        _changeOwner = _confirmOwner;
    }
}

function Bal() public nonPayable { 
    return (address(this)).balance;
}

function WithdrawToken(address varg0, uint256 varg1, address varg2) public nonPayable { 
    if (_changeOwner == msg.sender) {
        v0 = varg0.transfer(varg2, varg1).gas(msg.gas);
    }
}

function Deposit() public payable { 
    if (!bool(msg.value < _minDeposit)) {
        _fallback[msg.sender] = _fallback[msg.sender] + msg.value;
    }
}

function Holders(address varg0) public nonPayable { 
    return _fallback[varg0];
}

function WithdrawToHolder(address varg0, uint256 varg1) public payable { 
    if (_changeOwner == msg.sender) {
        if (_fallback[msg.sender] > 0) {
            if (!bool(_fallback[address(address(address(varg0)))] < varg1)) {
                _fallback[varg0] = _fallback[varg0] - varg1;
            }
        }
    }
}

function () public payable { 
    if (!bool(msg.value < _minDeposit)) {
        _fallback[msg.sender] = _fallback[msg.sender] + msg.value;
    }
}

function MinDeposit() public nonPayable { 
    return _minDeposit;
}

function initTokenBank() public nonPayable { 
    _initTokenBank = msg.sender;
    _minDeposit = 0xde0b6b3a7640000;
}

function WitdrawTokenToHolder(address varg0, address varg1, uint256 varg2) public nonPayable { 
    if (_changeOwner == msg.sender) {
        if (_fallback[varg0] > 0) {
            _fallback[varg0] = 0;
            if (_changeOwner == msg.sender) {
                v0 = varg1.transfer(varg0, varg2).gas(msg.gas);
            }
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x11bcd830 == uint32(function_selector >> 224)) {
            MinDeposit();
        } else if (0x290b1e5f == uint32(function_selector >> 224)) {
            initTokenBank();
        } else if (0x2e2a51bd == uint32(function_selector >> 224)) {
            WitdrawTokenToHolder(address,address,uint256);
        } else if (0xa6f9dae1 == uint32(function_selector >> 224)) {
            changeOwner(address);
        } else if (0xbd9b6d86 == uint32(function_selector >> 224)) {
            confirmOwner();
        } else if (0xbea69bb9 == uint32(function_selector >> 224)) {
            Bal();
        } else if (0xc7de2d13 == uint32(function_selector >> 224)) {
            WithdrawToken(address,uint256,address);
        } else if (0xed21248c == uint32(function_selector >> 224)) {
            Deposit();
        } else if (0xeec0ddd7 == uint32(function_selector >> 224)) {
            Holders(address);
        } else if (0xf8ff612e == uint32(function_selector >> 224)) {
            WithdrawToHolder(address,uint256);
        }
    }
    ();
}
