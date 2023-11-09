// Decompiled by library.dedaub.com
// 2023.11.08 20:02 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => struct_142) _settle; // STORAGE[0x0]

struct struct_142 { uint256 field0; uint256 field1; };


function () public payable { 
    revert();
}

function settle() public nonPayable { 
    require(bool(block.number > _settle[address(address(msg.sender))].field0));
    _settle[msg.sender].field0 = 0;
    if (uint256(_settle[address(address(msg.sender))].field1) == uint256(block.blockhash(_settle[address(address(msg.sender))].field0))) {
        v0 = msg.sender.call().value(0x1bc16d674ec80000);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0xed7f559c(uint256 varg0) public payable { 
    require(bool(_settle[address(address(msg.sender))].field0 == 0));
    require(bool(msg.value == 0xde0b6b3a7640000));
    _settle[msg.sender].field1 = varg0;
    _settle[msg.sender].field0 = block.number + 1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x11da60b4 == uint32(function_selector >> 224)) {
            settle();
        } else if (0xed7f559c == uint32(function_selector >> 224)) {
            0xed7f559c();
        }
    }
    ();
}
