// Decompiled by library.dedaub.com
// 2023.11.08 20:00 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
struct_140[] _makeBet; // STORAGE[0x1]
uint256 _destroy; // STORAGE[0x0] bytes 0 to 19

struct struct_140 { uint256 field0; uint256 field1; uint256 field2; };

// Events
GetBet(uint256, uint256, bool);

function () public nonPayable { 
    revert();
}

function makeBet() public nonPayable { 
    assert(bool(2));
    MEM[64] = MEM[64] + 96;
    _makeBet = _makeBet.length + 1;
    _makeBet[_makeBet.length + 1 - 1].field0 = msg.value;
    _makeBet[_makeBet.length + 1 - 1].field1 = block.number;
    _makeBet[_makeBet.length + 1 - 1].field2 = bool(block.number % 2 == 0) | bytes31(_makeBet[_makeBet.length + 1 - 1].field2);
    if (block.number % 2 == 0) {
        v0 = msg.sender.call().value(msg.value).gas(!msg.value * 2300);
        require(bool(v0));
    }
}

function destroy() public nonPayable { 
    require(bool(address(msg.sender) == _destroy));
    selfdestruct(_destroy);
}

function getBets() public nonPayable { 
    require(bool(address(msg.sender) == _destroy));
    v0 = v1 = 0;
    while (v0 < _makeBet.length) {
        assert(bool(v0 < _makeBet.length));
        assert(bool(v0 < _makeBet.length));
        assert(bool(v0 < _makeBet.length));
        emit GetBet(_makeBet[v0].field0, _makeBet[v0].field1, bool(uint8(_makeBet[v0].field2)));
        v0 += 1;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x561e91a1 == uint32(function_selector >> 224)) {
            makeBet();
        } else if (0x83197ef0 == uint32(function_selector >> 224)) {
            destroy();
        } else if (0xa6afd5fd == uint32(function_selector >> 224)) {
            getBets();
        }
    }
    ();
}
