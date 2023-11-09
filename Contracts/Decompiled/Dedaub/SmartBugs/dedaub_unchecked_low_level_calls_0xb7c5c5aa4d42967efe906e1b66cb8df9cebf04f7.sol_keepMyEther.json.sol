// Decompiled by library.dedaub.com
// 2023.11.08 21:52 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _fallback; // STORAGE[0x0]



function () public payable { 
    _fallback[msg.sender] = _fallback[msg.sender] + msg.value;
}

function balances(address varg0) public nonPayable { 
    return _fallback[varg0];
}

function withdraw() public nonPayable { 
    v0 = msg.sender.call().value(_fallback[msg.sender]).gas(msg.gas);
    _fallback[msg.sender] = 0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x27e235e3 == uint32(function_selector >> 224)) {
            balances(address);
        } else if (0x3ccfd60b == uint32(function_selector >> 224)) {
            withdraw();
        }
    }
    ();
}
