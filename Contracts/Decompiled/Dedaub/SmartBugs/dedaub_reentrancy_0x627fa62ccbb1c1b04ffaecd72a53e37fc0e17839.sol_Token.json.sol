// Decompiled by library.dedaub.com
// 2023.11.08 20:26 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _confirmOwner; // STORAGE[0x0] bytes 0 to 19
uint256 _changeOwner; // STORAGE[0x1] bytes 0 to 19



function () public payable { 
    revert();
}

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

function WithdrawToken(address varg0, uint256 varg1, address varg2) public nonPayable { 
    if (_changeOwner == msg.sender) {
        v0 = varg0.transfer(varg2, varg1).gas(msg.gas);
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xa6f9dae1 == uint32(function_selector >> 224)) {
            changeOwner(address);
        } else if (0xbd9b6d86 == uint32(function_selector >> 224)) {
            confirmOwner();
        } else if (0xc7de2d13 == uint32(function_selector >> 224)) {
            WithdrawToken(address,uint256,address);
        }
    }
    ();
}
