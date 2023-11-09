// Decompiled by library.dedaub.com
// 2023.11.08 20:14 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 stor_1; // STORAGE[0x1]
uint256 stor_3; // STORAGE[0x3]
uint256 stor_0_0_19; // STORAGE[0x0] bytes 0 to 19
uint256 _play; // STORAGE[0x4] bytes 0 to 0
uint256 stor_2_0_19; // STORAGE[0x2] bytes 0 to 19
uint256 _getProfit; // STORAGE[0x4] bytes 1 to 20



function () public payable { 
    revert();
}

function getProfit() public nonPayable { 
    require(bool(address(msg.sender) == _getProfit));
    v0 = msg.sender.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
}

function play(uint256 varg0) public payable { 
    require(bool(msg.value == 0xde0b6b3a7640000));
    assert(bool(_play < 2));
    STORAGE[0 + ((_play << 1) + 0)] = msg.sender | bytes12(STORAGE[0 + ((_play << 1) + 0)]);
    STORAGE[1 + ((_play << 1) + 0)] = varg0;
    _play += 1;
    if (_play == 2) {
        assert(bool(1 < 2));
        assert(bool(0 < 2));
        assert(bool(2));
        if ((stor_1 + stor_3) % 2 != 0) {
            assert(bool(1 < 2));
            v0 = stor_2_0_19.call().value(0x18fae27693b40000);
        } else {
            assert(bool(0 < 2));
            v1 = stor_0_0_19.call().value(0x18fae27693b40000);
        }
        stor_0_0_19 = 0;
        stor_1 = 0;
        stor_2_0_19 = 0;
        stor_3 = 0;
        _play = 0;
    }
}

function players(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < 2));
    return address(STORAGE[0 + ((varg0 << 1) + 0)]), STORAGE[1 + ((varg0 << 1) + 0)];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x679dffb4 == uint32(function_selector >> 224)) {
            getProfit();
        } else if (0x6898f82b == uint32(function_selector >> 224)) {
            play(uint256);
        } else if (0xf71d96cb == uint32(function_selector >> 224)) {
            players(uint256);
        }
    }
    ();
}
