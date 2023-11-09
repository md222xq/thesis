// Decompiled by library.dedaub.com
// 2023.11.08 21:02 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 stor_1; // STORAGE[0x1]
uint256 _draw; // STORAGE[0x0] bytes 0 to 19



function () public payable { 
    revert();
}

function draw(uint256 varg0) public nonPayable { 
    v0 = v1 = block.timestamp > 0;
    if (v1) {
        v0 = block.timestamp - block.timestamp > 0x15180;
    }
    if (!v0) {
        if (!bool(msg.value < 0xde0b6b3a7640000)) {
            _draw = msg.sender;
            stor_1 = block.timestamp;
        }
    } else {
        v2 = msg.sender.call().value(msg.value).gas(!msg.value * 2300);
        if ((address(this)).balance > 0) {
            v3 = _draw.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
        }
    }
}

function randomGen() public nonPayable { 
    return block.timestamp;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x3b304147 == uint32(function_selector >> 224)) {
            draw(uint256);
        } else if (0x81cbba82 == uint32(function_selector >> 224)) {
            randomGen();
        }
    }
    ();
}
