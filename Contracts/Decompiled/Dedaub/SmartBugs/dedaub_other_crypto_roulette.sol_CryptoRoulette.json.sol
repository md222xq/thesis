// Decompiled by library.dedaub.com
// 2023.11.08 20:15 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 stor_0; // STORAGE[0x0]
uint256 _lastPlayed; // STORAGE[0x1]
uint256 _betPrice; // STORAGE[0x2]
struct_156[] _gamesPlayed; // STORAGE[0x4]
uint256 _ownerAddr; // STORAGE[0x3] bytes 0 to 19

struct struct_156 { uint256 field0; uint256 field1; };


function play(uint256 varg0) public payable { 
    v0 = v1 = msg.value >= _betPrice;
    if (!bool(msg.value < _betPrice)) {
        v0 = v2 = varg0 <= 10;
    }
    require(bool(v0));
    stor_0 = msg.sender | bytes12(stor_0);
    _lastPlayed = varg0;
    _gamesPlayed = _gamesPlayed.length + 1;
    _gamesPlayed[_gamesPlayed.length + 1 - 1].field0 = address(stor_0) | bytes12(_gamesPlayed[_gamesPlayed.length + 1 - 1].field0);
    _gamesPlayed[_gamesPlayed.length + 1 - 1].field1 = _lastPlayed;
    if (varg0 == stor_0) {
        v3 = msg.sender.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    assert(bool(20));
    stor_0 = uint8(uint8(keccak256(block.timestamp, uint256(uint256(block.blockhash(block.number - 1))))) % 20 + 1);
    _lastPlayed = block.timestamp;
}

function ownerAddr() public nonPayable { 
    return _ownerAddr;
}

function lastPlayed() public nonPayable { 
    return _lastPlayed;
}

function betPrice() public nonPayable { 
    return _betPrice;
}

function () public payable { 
}

function gamesPlayed(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _gamesPlayed.length));
    return address(_gamesPlayed[varg0].field0), _gamesPlayed[varg0].field1;
}

function kill() public nonPayable { 
    v0 = v1 = msg.sender == _ownerAddr;
    if (v1) {
        v0 = block.timestamp > _lastPlayed + 0x15180;
    }
    if (!v0) {
        // Unknown jump to Block 0x103. Refer to 3-address code (TAC);
    } else {
        selfdestruct(msg.sender);
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x382cf0a6 == uint32(function_selector >> 224)) {
            gamesPlayed(uint256);
        } else if (0x41c0e1b5 == uint32(function_selector >> 224)) {
            kill();
        } else if (0x6898f82b == uint32(function_selector >> 224)) {
            play(uint256);
        } else if (0x9c675eaa == uint32(function_selector >> 224)) {
            ownerAddr();
        } else if (0xc5339132 == uint32(function_selector >> 224)) {
            lastPlayed();
        } else if (0xcfd8a175 == uint32(function_selector >> 224)) {
            betPrice();
        }
    }
    ();
}
