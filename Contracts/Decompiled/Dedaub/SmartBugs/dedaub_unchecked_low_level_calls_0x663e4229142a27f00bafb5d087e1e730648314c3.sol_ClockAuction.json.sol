// Decompiled by library.dedaub.com
// 2023.11.08 21:23 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _ownerCut; // STORAGE[0x2]
mapping (uint256 => struct_358) _cancelAuction; // STORAGE[0x3]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _nonFungibleContract; // STORAGE[0x1] bytes 0 to 19
uint256 _paused; // STORAGE[0x0] bytes 20 to 20

struct struct_358 { uint256 field0; uint256 field1; uint256 field2; };

// Events
Unpause();
Pause();
AuctionCreated(uint256, uint256, uint256, uint256);
AuctionSuccessful(uint256, uint256, address);
AuctionCancelled(uint256);

function 0x1226(uint256 varg0, address varg1) private { 
    require(bool(_nonFungibleContract.code.size));
    v0 = _nonFungibleContract.transfer(varg1, varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function 0x1335(uint256 varg0, uint256 varg1) private { 
    _cancelAuction[varg1].field0 = bytes12(_cancelAuction[varg1].field0);
    _cancelAuction[varg1].field1 = bytes16(_cancelAuction[varg1].field1);
    _cancelAuction[varg1].field1 = uint128(_cancelAuction[varg1].field1);
    _cancelAuction[varg1].field2 = bytes24(_cancelAuction[varg1].field2);
    _cancelAuction[varg1].field2 = ~0xffffffffffffffff0000000000000000 & _cancelAuction[varg1].field2;
    _cancelAuction[varg1].field2 = ~0xffffffffffffffff00000000000000000000000000000000 & _cancelAuction[varg1].field2;
    0x1226(varg1, varg0);
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

function bid(uint256 varg0) public payable { 
    require(bool(!_paused));
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
    0x1226(varg0, msg.sender);
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

function cancelAuctionWhenPaused(uint256 varg0) public nonPayable { 
    require(_paused);
    require(bool(address(msg.sender) == _owner));
    require(bool(uint64(uint64(_cancelAuction[varg0].field2 >> 64)) > 0));
    0x1335(address(_cancelAuction[varg0].field0), varg0);
}

function owner() public nonPayable { 
    return _owner;
}

function cancelAuction(uint256 varg0) public nonPayable { 
    require(bool(uint64(uint64(_cancelAuction[varg0].field2 >> 64)) > 0));
    require(bool(address(msg.sender) == address(address(_cancelAuction[varg0].field0))));
    0x1335(address(_cancelAuction[varg0].field0), varg0);
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

function transferOwnership(address varg0) public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    if (!bool(address(address(varg0)) == address(0x0))) {
        _owner = varg0;
    }
}

function () public payable { 
    revert();
}

function createAuction(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) public nonPayable { 
    MEM[64] = MEM[64] + 192;
    MEM[MEM[64]] = address(0x0);
    MEM[32 + MEM[64]] = uint128(0);
    MEM[64 + MEM[64]] = uint128(0);
    MEM[96 + MEM[64]] = uint64(0);
    MEM[128 + MEM[64]] = uint64(0);
    MEM[160 + MEM[64]] = uint64(0);
    require(bool(!_paused));
    require(bool(varg1 == uint128(varg1)));
    require(bool(varg2 == uint128(varg2)));
    require(bool(varg3 == uint64(varg3)));
    require(bool(_nonFungibleContract.code.size));
    v0, /* address */ v1 = _nonFungibleContract.ownerOf(varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool(address(v1) == address(msg.sender)));
    require(bool(_nonFungibleContract.code.size));
    v2 = _nonFungibleContract.transferFrom(msg.sender, address(this), varg0).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool(uint64(uint64(varg3)) >= 60));
    _cancelAuction[varg0].field0 = varg4 | bytes12(_cancelAuction[varg0].field0);
    _cancelAuction[varg0].field1 = uint128(varg1) | bytes16(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field1 = uint128(varg2) << 128 | uint128(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field2 = uint64(varg3) | bytes24(_cancelAuction[varg0].field2);
    _cancelAuction[varg0].field2 = uint64(block.timestamp) << 64 | ~0xffffffffffffffff0000000000000000 & _cancelAuction[varg0].field2;
    _cancelAuction[varg0].field2 = uint64(0) << 128 | ~0xffffffffffffffff00000000000000000000000000000000 & _cancelAuction[varg0].field2;
    emit AuctionCreated(varg0, uint128(varg1), uint128(varg2), uint64(varg3));
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x27ebe40a == uint32(function_selector >> 224)) {
            createAuction(uint256,uint256,uint256,uint256,address);
        } else if (0x3f4ba83a == uint32(function_selector >> 224)) {
            unpause();
        } else if (0x454a2ab3 == uint32(function_selector >> 224)) {
            bid(uint256);
        } else if (0x5c975abb == uint32(function_selector >> 224)) {
            paused();
        } else if (0x5fd8c710 == uint32(function_selector >> 224)) {
            withdrawBalance();
        } else if (0x78bd7935 == uint32(function_selector >> 224)) {
            getAuction(uint256);
        } else if (0x83b5ff8b == uint32(function_selector >> 224)) {
            ownerCut();
        } else if (0x8456cb59 == uint32(function_selector >> 224)) {
            pause();
        } else if (0x878eb368 == uint32(function_selector >> 224)) {
            cancelAuctionWhenPaused(uint256);
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0x96b5a755 == uint32(function_selector >> 224)) {
            cancelAuction(uint256);
        } else if (0xc55d0f56 == uint32(function_selector >> 224)) {
            getCurrentPrice(uint256);
        } else if (0xdd1b7a0f == uint32(function_selector >> 224)) {
            nonFungibleContract();
        } else if (0xf2fde38b == uint32(function_selector >> 224)) {
            transferOwnership(address);
        }
    }
    ();
}
