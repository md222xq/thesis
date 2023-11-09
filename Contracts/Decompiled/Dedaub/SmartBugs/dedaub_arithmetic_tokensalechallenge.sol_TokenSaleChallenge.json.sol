// Decompiled by library.dedaub.com
// 2023.11.08 19:58 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _balanceOf; // STORAGE[0x0]



function sell(uint256 varg0) public nonPayable { 
    require(bool(_balanceOf[address(address(msg.sender))] >= varg0));
    _balanceOf[msg.sender] = _balanceOf[msg.sender] - varg0;
    v0 = msg.sender.call().value(varg0 * 0xde0b6b3a7640000).gas(!(varg0 * 0xde0b6b3a7640000) * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function () public payable { 
    revert();
}

function balanceOf(address varg0) public nonPayable { 
    return _balanceOf[varg0];
}

function isComplete() public nonPayable { 
    return bool((address(this)).balance < 0xde0b6b3a7640000);
}

function buy(uint256 varg0) public payable { 
    require(bool(msg.value == varg0 * 0xde0b6b3a7640000));
    _balanceOf[msg.sender] = _balanceOf[msg.sender] + varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x70a08231 == uint32(function_selector >> 224)) {
            balanceOf(address);
        } else if (0xb2fa1c9e == uint32(function_selector >> 224)) {
            isComplete();
        } else if (0xd96a094a == uint32(function_selector >> 224)) {
            buy(uint256);
        } else if (0xe4849b32 == uint32(function_selector >> 224)) {
            sell(uint256);
        }
    }
    ();
}
