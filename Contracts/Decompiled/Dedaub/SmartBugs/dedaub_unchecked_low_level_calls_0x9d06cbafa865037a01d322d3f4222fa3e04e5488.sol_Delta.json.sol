// Decompiled by library.dedaub.com
// 2023.11.08 21:44 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _active; // STORAGE[0x3]
uint256 _token_price; // STORAGE[0x4]
uint256 _c; // STORAGE[0x0] bytes 0 to 19
uint256 _owner; // STORAGE[0x1] bytes 0 to 19
uint256 _owner2; // STORAGE[0x2] bytes 0 to 19



function withdraw(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    v0 = v1 = (address(this)).balance;
    v2 = _owner.call().value(v0).gas(!v0 * 2300);
    return bool(1);
}

function owner2() public nonPayable { 
    return _owner2;
}

function tokens_buy() public payable { 
    v0 = 0x2f0();
    return bool(v0);
}

function token_price() public nonPayable { 
    return _token_price;
}

function owner() public nonPayable { 
    return _owner;
}

function change_token_price(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    _token_price = varg0;
    return bool(1);
}

function c() public nonPayable { 
    return _c;
}

function 0x2f0() private { 
    require(bool(_active > 0));
    require(bool(msg.value >= _token_price));
    assert(bool(_token_price));
    require(bool(msg.value * 0xde0b6b3a7640000 / _token_price > 0));
    v0 = _c.transferFrom(_owner, msg.sender, msg.value * 0xde0b6b3a7640000 / _token_price).gas(msg.gas);
    if (bool(v0)) {
        assert(bool(10));
        v1 = _owner2.call().value(msg.value * 3 / 10).gas(!(msg.value * 3 / 10) * 2300);
        v2 = v3 = 1;
    } else {
        v2 = v4 = 0;
    }
    return v2;
}

function () public payable { 
    v0 = 0x2f0();
}

function active() public nonPayable { 
    return _active;
}

function change_active(uint256 varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    _active = varg0;
    return bool(1);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x2fb0c5e == uint32(function_selector >> 224)) {
            active();
        } else if (0x243f6e0c == uint32(function_selector >> 224)) {
            change_active(uint256);
        } else if (0x2e1a7d4d == uint32(function_selector >> 224)) {
            withdraw(uint256);
        } else if (0x52709725 == uint32(function_selector >> 224)) {
            owner2();
        } else if (0x6c675ae6 == uint32(function_selector >> 224)) {
            tokens_buy();
        } else if (0x7b4fd96e == uint32(function_selector >> 224)) {
            token_price();
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0xbec60bd2 == uint32(function_selector >> 224)) {
            change_token_price(uint256);
        } else if (0xc3da42b8 == uint32(function_selector >> 224)) {
            c();
        }
    }
    ();
}
