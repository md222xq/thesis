// Decompiled by library.dedaub.com
// 2023.11.08 22:09 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _withdrawBalance; // STORAGE[0x0]



function () public payable { 
    revert();
}

function withdrawBalance() public nonPayable { 
    _withdrawBalance[msg.sender] = 0;
    v0 = msg.sender.call().value(_withdrawBalance[msg.sender]).gas(!_withdrawBalance[msg.sender] * 2300);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x5fd8c710 == uint32(function_selector >> 224)) {
            withdrawBalance();
        }
    }
    ();
}
