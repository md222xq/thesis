// Decompiled by library.dedaub.com
// 2023.11.08 20:53 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) map_1; // STORAGE[0x1]
mapping (uint256 => uint256) _withdrawReward; // STORAGE[0x2]



function () public payable { 
    revert();
}

function 0x7d1c54f8(address varg0) public nonPayable { 
    require(bool(!uint8(map_1[address(address(address(varg0)))])));
    _withdrawReward[varg0] = _withdrawReward[varg0] + 100;
    _withdrawReward[varg0] = 0;
    v0 = varg0.call(MEM[(MEM[64]) len 32], MEM[(MEM[64]) len 0]).value(_withdrawReward[varg0]).gas(msg.gas);
    require(bool(v0));
    map_1[varg0] = 0x1 | bytes31(map_1[address(address(address(varg0)))]);
}

function withdrawReward(address varg0) public nonPayable { 
    _withdrawReward[varg0] = 0;
    v0 = varg0.call(MEM[(MEM[64]) len 32], MEM[(MEM[64]) len 0]).value(_withdrawReward[varg0]).gas(msg.gas);
    require(bool(v0));
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x7d1c54f8 == uint32(function_selector >> 224)) {
            0x7d1c54f8();
        } else if (0xb86e321c == uint32(function_selector >> 224)) {
            withdrawReward(address);
        }
    }
    ();
}
