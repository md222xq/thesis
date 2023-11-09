// Decompiled by library.dedaub.com
// 2023.11.08 20:53 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _donate; // STORAGE[0x0]



function balanceOf(address varg0) public nonPayable { 
    return _donate[varg0];
}

function () public payable { 
}

function donate(address varg0) public payable { 
    _donate[varg0] = _donate[varg0] + msg.value;
}

function balances(address varg0) public nonPayable { 
    return _donate[varg0];
}

function withdraw(uint256 varg0) public nonPayable { 
    if (!bool(_donate[address(address(msg.sender))] < varg0)) {
        v0 = msg.sender.call().value(varg0).gas(msg.gas);
        _donate[msg.sender] = _donate[msg.sender] - varg0;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x362a95 == uint32(function_selector >> 224)) {
            donate(address);
        } else if (0x27e235e3 == uint32(function_selector >> 224)) {
            balances(address);
        } else if (0x2e1a7d4d == uint32(function_selector >> 224)) {
            withdraw(uint256);
        } else if (0x70a08231 == uint32(function_selector >> 224)) {
            balanceOf(address);
        }
    }
    ();
}
