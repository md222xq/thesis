// Decompiled by library.dedaub.com
// 2023.11.08 19:41 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _deposit; // STORAGE[0x1]
uint256 _initWallet; // STORAGE[0x0] bytes 0 to 19



function () public payable { 
    revert();
}

function withdraw(uint256 varg0) public nonPayable { 
    require(bool(varg0 <= _deposit[address(address(msg.sender))]));
    v0 = msg.sender.call().value(varg0).gas(!varg0 * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    _deposit[msg.sender] = _deposit[msg.sender] - varg0;
}

function initWallet() public nonPayable { 
    _initWallet = msg.sender;
}

function migrateTo(address varg0) public nonPayable { 
    require(bool(_initWallet == address(msg.sender)));
    v0 = varg0.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function deposit() public payable { 
    assert(bool(_deposit[address(address(msg.sender))] + msg.value > _deposit[address(address(msg.sender))]));
    _deposit[msg.sender] = _deposit[msg.sender] + msg.value;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x2e1a7d4d == uint32(function_selector >> 224)) {
            withdraw(uint256);
        } else if (0x3e326048 == uint32(function_selector >> 224)) {
            initWallet();
        } else if (0x4ddaf8f2 == uint32(function_selector >> 224)) {
            migrateTo(address);
        } else if (0xd0e30db0 == uint32(function_selector >> 224)) {
            deposit();
        }
    }
    ();
}
