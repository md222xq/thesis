// Decompiled by library.dedaub.com
// 2023.11.08 20:14 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _reward; // STORAGE[0x1]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _claimed; // STORAGE[0x0] bytes 20 to 20



function claimed() public nonPayable { 
    return _claimed;
}

function () public payable { 
    revert();
}

function reward() public nonPayable { 
    return _reward;
}

function setReward() public payable { 
    require(bool(!_claimed));
    require(bool(address(msg.sender) == _owner));
    v0 = _owner.call().value(_reward).gas(!_reward * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    _reward = msg.value;
}

function owner() public nonPayable { 
    return _owner;
}

function claimReward(uint256 varg0) public nonPayable { 
    require(bool(!_claimed));
    require(bool(varg0 < 10));
    v0 = msg.sender.call().value(_reward).gas(!_reward * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    _claimed = 1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x228cb733 == uint32(function_selector >> 224)) {
            reward();
        } else if (0x3eb6a67e == uint32(function_selector >> 224)) {
            setReward();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0xae169a50 == uint32(function_selector >> 224)) {
            claimReward(uint256);
        } else if (0xe834a834 == uint32(function_selector >> 224)) {
            claimed();
        }
    }
    ();
}
