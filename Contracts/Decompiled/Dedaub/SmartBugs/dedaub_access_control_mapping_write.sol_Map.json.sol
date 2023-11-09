// Decompiled by library.dedaub.com
// 2023.11.08 19:32 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256[] _get; // STORAGE[0x1]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19



function get(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _get.length));
    return _get[varg0];
}

function () public payable { 
    revert();
}

function set(uint256 varg0, uint256 varg1) public nonPayable { 
    if (!bool(_get.length > varg0)) {
        _get = varg0 + 1;
        if (_get.length > varg0 + 1) {
            v0 = v1 = keccak256(1) + (varg0 + 1);
            while (keccak256(1) + _get.length > v0) {
                STORAGE[v0] = 0;
                v0 += 1;
            }
        }
    }
    assert(bool(varg0 < _get.length));
    _get[varg0] = varg1;
}

function withdraw() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    v0 = msg.sender.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function owner() public nonPayable { 
    return _owner;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1ab06ee5 == uint32(function_selector >> 224)) {
            set(uint256,uint256);
        } else if (0x3ccfd60b == uint32(function_selector >> 224)) {
            withdraw();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0x9507d39a == uint32(function_selector >> 224)) {
            get(uint256);
        }
    }
    ();
}
