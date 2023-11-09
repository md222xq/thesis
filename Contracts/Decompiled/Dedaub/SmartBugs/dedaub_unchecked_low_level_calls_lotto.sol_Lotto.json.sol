// Decompiled by library.dedaub.com
// 2023.11.08 22:09 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _withdrawLeftOver; // STORAGE[0x0] bytes 0 to 0
uint256 _winAmount; // STORAGE[0x1]
uint256 _winner; // STORAGE[0x0] bytes 1 to 20



function 0xff15a452() public nonPayable { 
    return _withdrawLeftOver;
}

function () public payable { 
    revert();
}

function withdrawLeftOver() public nonPayable { 
    require(_withdrawLeftOver);
    v0 = msg.sender.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
}

function 0x8f1c0585() public nonPayable { 
    require(bool(!_withdrawLeftOver));
    v0 = _winner.call().value(_winAmount).gas(!_winAmount * 2300);
    _withdrawLeftOver = 1;
}

function winAmount() public nonPayable { 
    return _winAmount;
}

function winner() public nonPayable { 
    return _winner;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1846f51a == uint32(function_selector >> 224)) {
            withdrawLeftOver();
        } else if (0x8f1c0585 == uint32(function_selector >> 224)) {
            0x8f1c0585();
        } else if (0xdecb3a90 == uint32(function_selector >> 224)) {
            winAmount();
        } else if (0xdfbf53ae == uint32(function_selector >> 224)) {
            winner();
        } else if (0xff15a452 == uint32(function_selector >> 224)) {
            0xff15a452();
        }
    }
    ();
}
