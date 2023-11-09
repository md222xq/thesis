// Decompiled by library.dedaub.com
// 2023.11.08 20:07 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _bid; // STORAGE[0x1]
uint256 stor_0_0_19; // STORAGE[0x0] bytes 0 to 19



function () public payable { 
    revert();
}

function bid() public payable { 
    require(bool(msg.value > _bid));
    if (!bool(stor_0_0_19 == 0)) {
        v0 = stor_0_0_19.call().value(_bid).gas(!_bid * 2300);
        require(bool(v0));
    }
    stor_0_0_19 = msg.sender;
    _bid = msg.value;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1998aeef == uint32(function_selector >> 224)) {
            bid();
        }
    }
    ();
}
