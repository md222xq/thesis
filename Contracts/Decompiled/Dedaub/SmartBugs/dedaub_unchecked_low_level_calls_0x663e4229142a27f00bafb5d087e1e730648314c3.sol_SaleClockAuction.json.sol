// Decompiled by library.dedaub.com
// 2023.11.08 21:32 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _ownerCut; // STORAGE[0x2]
mapping (uint256 => struct_471) _cancelAuction; // STORAGE[0x3]
uint256 _gen0SaleCount; // STORAGE[0x5]
uint256[] _createPanda; // STORAGE[0xb]
uint256[] array_c; // STORAGE[0xc]
uint256 _packageCount; // STORAGE[0xd]
uint256 _surprisePanda; // STORAGE[0xe]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _isSaleClockAuction; // STORAGE[0x4] bytes 0 to 0
uint256 _nonFungibleContract; // STORAGE[0x1] bytes 0 to 19
uint256 _paused; // STORAGE[0x0] bytes 20 to 20

struct struct_471 { uint256 field0; uint256 field1; uint256 field2; };

// Events
Unpause();
Pause();
AuctionCreated(uint256, uint256, uint256, uint256);
AuctionSuccessful(uint256, uint256, address);
AuctionCancelled(uint256);

function 0x1303(uint256 varg0, address varg1) private { 
    require(bool(_nonFungibleContract.code.size));
    v0 = _nonFungibleContract.transfer(varg1, varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function () public payable { 
    revert();
}

function surprisePanda() public payable { 
    assert(bool(25 < 32));
    if (bytes1((byte(keccak256(uint256(uint256(block.blockhash(block.number))), uint256(uint256(block.blockhash(block.number - 1)))), 0x19)) << 248) <= 0xc800000000000000000000000000000000000000000000000000000000000000) {
        require(bool(_createPanda.length >= _packageCount));
        v0 = _packageCount;
        _packageCount += 1;
    } else {
        require(bool(array_c.length >= _surprisePanda));
        v0 = v1 = _surprisePanda;
        _surprisePanda += 1;
    }
    0x1303(v0, msg.sender);
}

function 0x13e4(uint256 varg0, address varg1) private { 
    require(bool(_nonFungibleContract.code.size));
    v0 = _nonFungibleContract.transferFrom(varg1, address(this), varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function createAuction(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) public nonPayable { 
    MEM[64] = MEM[64] + 192;
    MEM[MEM[64]] = address(0x0);
    MEM[32 + MEM[64]] = uint128(0);
    MEM[64 + MEM[64]] = uint128(0);
    MEM[96 + MEM[64]] = uint64(0);
    MEM[128 + MEM[64]] = uint64(0);
    MEM[160 + MEM[64]] = uint64(0);
    require(bool(varg1 == uint128(varg1)));
    require(bool(varg2 == uint128(varg2)));
    require(bool(varg3 == uint64(varg3)));
    require(bool(address(msg.sender) == _nonFungibleContract));
    0x13e4(varg0, varg4);
    require(bool(uint64(uint64(varg3)) >= 60));
    _cancelAuction[varg0].field0 = varg4 | bytes12(_cancelAuction[varg0].field0);
    _cancelAuction[varg0].field1 = uint128(varg1) | bytes16(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field1 = uint128(varg2) << 128 | uint128(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field2 = uint64(varg3) | bytes24(_cancelAuction[varg0].field2);
    _cancelAuction[varg0].field2 = uint64(block.timestamp) << 64 | ~0xffffffffffffffff0000000000000000 & _cancelAuction[varg0].field2;
    _cancelAuction[varg0].field2 = uint64(0) << 128 | ~0xffffffffffffffff00000000000000000000000000000000 & _cancelAuction[varg0].field2;
    emit AuctionCreated(varg0, uint128(varg1), uint128(varg2), uint64(varg3));
}

function 0x18e8(uint256 varg0, uint256 varg1) private { 
    _cancelAuction[varg1].field0 = bytes12(_cancelAuction[varg1].field0);
    _cancelAuction[varg1].field1 = bytes16(_cancelAuction[varg1].field1);
    _cancelAuction[varg1].field1 = uint128(_cancelAuction[varg1].field1);
    _cancelAuction[varg1].field2 = bytes24(_cancelAuction[varg1].field2);
    _cancelAuction[varg1].field2 = ~0xffffffffffffffff0000000000000000 & _cancelAuction[varg1].field2;
    _cancelAuction[varg1].field2 = ~0xffffffffffffffff00000000000000000000000000000000 & _cancelAuction[varg1].field2;
    0x1303(varg1, varg0);
    emit AuctionCancelled(varg1);
    return ;
}

function unpause() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(_paused);
    _paused = 0;
    emit Unpause();
    return bool(1);
}

function createPanda(uint256 varg0, uint256 varg1) public nonPayable { 
    require(bool(address(msg.sender) == _nonFungibleContract));
    if (varg1 != 0) {
        array_c = array_c.length + 1;
        array_c[array_c.length + 1 - 1] = varg0;
    } else {
        _createPanda = _createPanda.length + 1;
        _createPanda[_createPanda.length + 1 - 1] = varg0;
    }
}

function bid(uint256 varg0) public payable { 
    require(bool(uint64(uint64(_cancelAuction[varg0].field2 >> 64)) > 0));
    v0 = v1 = 0;
    if (block.timestamp > uint64(_cancelAuction[varg0].field2 >> 64)) {
        v0 = block.timestamp - uint64(_cancelAuction[varg0].field2 >> 64);
    }
    v2 = v3 = uint128(_cancelAuction[varg0].field1 >> 128);
    if (bool(v0 < uint64(uint64(_cancelAuction[varg0].field2)))) {
        assert(bool(uint64(uint64(_cancelAuction[varg0].field2))));
        v2 = uint128(_cancelAuction[varg0].field1) + (v3 - uint128(_cancelAuction[varg0].field1)) * v0 / uint64(_cancelAuction[varg0].field2);
    }
    require(bool(msg.value >= v2));
    _cancelAuction[varg0].field0 = bytes12(_cancelAuction[varg0].field0);
    _cancelAuction[varg0].field1 = bytes16(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field1 = uint128(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field2 = bytes24(_cancelAuction[varg0].field2);
    _cancelAuction[varg0].field2 = ~0xffffffffffffffff0000000000000000 & _cancelAuction[varg0].field2;
    _cancelAuction[varg0].field2 = ~0xffffffffffffffff00000000000000000000000000000000 & _cancelAuction[varg0].field2;
    if (v2 > 0) {
        assert(bool(10000));
        v4 = address(_cancelAuction[varg0].field0).call().value(v2 - v2 * _ownerCut / 10000).gas(!(v2 - v2 * _ownerCut / 10000) * 2300);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v5 = msg.sender.call().value(msg.value - v2).gas(!(msg.value - v2) * 2300);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    emit AuctionSuccessful(varg0, v2, msg.sender);
    0x1303(varg0, msg.sender);
    if (uint64(_cancelAuction[varg0].field2 >> 128) == 1) {
        assert(bool(5));
        assert(bool(_gen0SaleCount % 5 < 5));
        STORAGE[_gen0SaleCount % 5 + 6] = v2;
        _gen0SaleCount += 1;
    }
}

function lastGen0SalePrices(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < 5));
    return STORAGE[varg0 + 6];
}

function paused() public nonPayable { 
    return _paused;
}

function withdrawBalance() public nonPayable { 
    v0 = v1 = msg.sender == _owner;
    if (msg.sender != _owner) {
        v0 = v2 = msg.sender == _nonFungibleContract;
    }
    require(bool(v0));
    v3 = _nonFungibleContract.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
}

function SurpriseValue() public nonPayable { 
    return 0x2386f26fc10000;
}

function getAuction(uint256 varg0) public nonPayable { 
    require(bool(uint64(uint64(_cancelAuction[varg0].field2 >> 64)) > 0));
    return address(_cancelAuction[varg0].field0), uint128(_cancelAuction[varg0].field1), uint128(_cancelAuction[varg0].field1 >> 128), uint64(_cancelAuction[varg0].field2), uint64(_cancelAuction[varg0].field2 >> 64);
}

function ownerCut() public nonPayable { 
    return _ownerCut;
}

function pause() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(bool(!_paused));
    _paused = 1;
    emit Pause();
    return bool(1);
}

function isSaleClockAuction() public nonPayable { 
    return _isSaleClockAuction;
}

function cancelAuctionWhenPaused(uint256 varg0) public nonPayable { 
    require(_paused);
    require(bool(address(msg.sender) == _owner));
    require(bool(uint64(uint64(_cancelAuction[varg0].field2 >> 64)) > 0));
    0x18e8(address(_cancelAuction[varg0].field0), varg0);
}

function gen0SaleCount() public nonPayable { 
    return _gen0SaleCount;
}

function owner() public nonPayable { 
    return _owner;
}

function cancelAuction(uint256 varg0) public nonPayable { 
    require(bool(uint64(uint64(_cancelAuction[varg0].field2 >> 64)) > 0));
    require(bool(address(msg.sender) == address(address(_cancelAuction[varg0].field0))));
    0x18e8(address(_cancelAuction[varg0].field0), varg0);
}

function getCurrentPrice(uint256 varg0) public nonPayable { 
    require(bool(uint64(uint64(_cancelAuction[varg0].field2 >> 64)) > 0));
    v0 = v1 = 0;
    if (block.timestamp > uint64(_cancelAuction[varg0].field2 >> 64)) {
        v0 = block.timestamp - uint64(_cancelAuction[varg0].field2 >> 64);
    }
    v2 = v3 = uint128(_cancelAuction[varg0].field1 >> 128);
    if (bool(v0 < uint64(uint64(_cancelAuction[varg0].field2)))) {
        assert(bool(uint64(uint64(_cancelAuction[varg0].field2))));
        v2 = uint128(_cancelAuction[varg0].field1) + (v3 - uint128(_cancelAuction[varg0].field1)) * v0 / uint64(_cancelAuction[varg0].field2);
    }
    return v2;
}

function nonFungibleContract() public nonPayable { 
    return _nonFungibleContract;
}

function averageGen0SalePrice() public nonPayable { 
    v0 = v1 = 0;
    v2 = v3 = 0;
    while (v2 < 5) {
        assert(bool(v2 < 5));
        v0 = v0 + STORAGE[v2 + 6];
        v2 += 1;
    }
    assert(bool(5));
    return v0 / 5;
}

function packageCount() public nonPayable { 
    return _createPanda.length + 1 - _packageCount, array_c.length + 1 - _surprisePanda;
}

function transferOwnership(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    if (!bool(address(address(varg0)) == address(0x0))) {
        _owner = varg0;
    }
}

function createGen0Auction(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) public nonPayable { 
    MEM[64] = MEM[64] + 192;
    MEM[MEM[64]] = address(0x0);
    MEM[32 + MEM[64]] = uint128(0);
    MEM[64 + MEM[64]] = uint128(0);
    MEM[96 + MEM[64]] = uint64(0);
    MEM[128 + MEM[64]] = uint64(0);
    MEM[160 + MEM[64]] = uint64(0);
    require(bool(varg1 == uint128(varg1)));
    require(bool(varg2 == uint128(varg2)));
    require(bool(varg3 == uint64(varg3)));
    require(bool(address(msg.sender) == _nonFungibleContract));
    0x13e4(varg0, varg4);
    require(bool(uint64(uint64(varg3)) >= 60));
    _cancelAuction[varg0].field0 = varg4 | bytes12(_cancelAuction[varg0].field0);
    _cancelAuction[varg0].field1 = uint128(varg1) | bytes16(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field1 = uint128(varg2) << 128 | uint128(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field2 = uint64(varg3) | bytes24(_cancelAuction[varg0].field2);
    _cancelAuction[varg0].field2 = uint64(block.timestamp) << 64 | ~0xffffffffffffffff0000000000000000 & _cancelAuction[varg0].field2;
    _cancelAuction[varg0].field2 = uint64(1) << 128 | ~0xffffffffffffffff00000000000000000000000000000000 & _cancelAuction[varg0].field2;
    emit AuctionCreated(varg0, uint128(varg1), uint128(varg2), uint64(varg3));
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = uint32(function_selector >> 224);
        if (0x20caea39 == v0) {
            surprisePanda();
        } else if (0x27ebe40a == v0) {
            createAuction(uint256,uint256,uint256,uint256,address);
        } else if (0x3f4ba83a == v0) {
            unpause();
        } else if (0x42577935 == v0) {
            createPanda(uint256,uint256);
        } else if (0x454a2ab3 == v0) {
            bid(uint256);
        } else if (0x484eccb4 == v0) {
            lastGen0SalePrices(uint256);
        } else if (0x5c975abb == v0) {
            paused();
        } else if (0x5fd8c710 == v0) {
            withdrawBalance();
        } else if (0x6108ceb6 == v0) {
            SurpriseValue();
        } else if (0x78bd7935 == v0) {
            getAuction(uint256);
        } else if (0x83b5ff8b == v0) {
            ownerCut();
        } else if (0x8456cb59 == v0) {
            pause();
        } else if (0x85b86188 == v0) {
            isSaleClockAuction();
        } else if (0x878eb368 == v0) {
            cancelAuctionWhenPaused(uint256);
        } else if (0x8a98a9cc == v0) {
            gen0SaleCount();
        } else if (0x8da5cb5b == v0) {
            owner();
        } else if (0x96b5a755 == v0) {
            cancelAuction(uint256);
        } else if (0xc55d0f56 == v0) {
            getCurrentPrice(uint256);
        } else if (0xdd1b7a0f == v0) {
            nonFungibleContract();
        } else if (0xeac9d94c == v0) {
            averageGen0SalePrice();
        } else if (0xee0ebe0c == v0) {
            packageCount();
        } else if (0xf2fde38b == v0) {
            transferOwnership(address);
        } else if (0xf40e28f2 == v0) {
            createGen0Auction(uint256,uint256,uint256,uint256,address);
        }
    }
    ();
}
