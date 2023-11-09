// Decompiled by library.dedaub.com
// 2023.11.08 21:33 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _ownerCut; // STORAGE[0x2]
mapping (uint256 => struct_501) _cancelAuction; // STORAGE[0x3]
mapping (uint256 => uint256) _tokenIdToErc20Address; // STORAGE[0x5]
mapping (uint256 => uint256) _erc20ContractsSwitcher; // STORAGE[0x6]
mapping (uint256 => uint256) _balances; // STORAGE[0x7]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _isSaleClockAuctionERC20; // STORAGE[0x4] bytes 0 to 0
uint256 _nonFungibleContract; // STORAGE[0x1] bytes 0 to 19
uint256 _paused; // STORAGE[0x0] bytes 20 to 20

struct struct_501 { uint256 field0; uint256 field1; uint256 field2; };

// Events
Unpause();
Pause();
AuctionCreated(uint256, uint256, uint256, uint256);
AuctionCancelled(uint256);
AuctionERC20Created(uint256, uint256, uint256, uint256, address);
AuctionSuccessful(uint256, uint256, address);

function () public payable { 
    revert();
}

function withdrawERC20Balance(address varg0, address varg1) public nonPayable { 
    require(bool(_balances[address(address(address(varg0)))] > 0));
    require(bool(address(msg.sender) == _nonFungibleContract));
    require(bool((address(address(varg0))).code.size));
    v0, /* uint256 */ v1 = varg0.transfer(varg1, _balances[varg0]).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    return bool(0);
}

function 0x16ae(uint256 varg0, address varg1) private { 
    require(bool(_nonFungibleContract.code.size));
    v0 = _nonFungibleContract.transferFrom(varg1, address(this), varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function 0x1a05(uint256 varg0, uint256 varg1) private { 
    _cancelAuction[varg1].field0 = bytes12(_cancelAuction[varg1].field0);
    _cancelAuction[varg1].field1 = bytes16(_cancelAuction[varg1].field1);
    _cancelAuction[varg1].field1 = uint128(_cancelAuction[varg1].field1);
    _cancelAuction[varg1].field2 = bytes24(_cancelAuction[varg1].field2);
    _cancelAuction[varg1].field2 = ~0xffffffffffffffff0000000000000000 & _cancelAuction[varg1].field2;
    _cancelAuction[varg1].field2 = ~0xffffffffffffffff00000000000000000000000000000000 & _cancelAuction[varg1].field2;
    0x21df(varg1, varg0);
    emit AuctionCancelled(varg1);
    return ;
}

function balances(address varg0) public nonPayable { 
    return _balances[varg0];
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
    0x16ae(varg0, msg.sender);
    require(bool(uint64(uint64(varg3)) >= 60));
    _cancelAuction[varg0].field0 = address(varg4) | bytes12(_cancelAuction[varg0].field0);
    _cancelAuction[varg0].field1 = uint128(varg1) | bytes16(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field1 = uint128(varg2) << 128 | uint128(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field2 = uint64(varg3) | bytes24(_cancelAuction[varg0].field2);
    _cancelAuction[varg0].field2 = uint64(block.timestamp) << 64 | ~0xffffffffffffffff0000000000000000 & _cancelAuction[varg0].field2;
    _cancelAuction[varg0].field2 = uint64(0) << 128 | ~0xffffffffffffffff00000000000000000000000000000000 & _cancelAuction[varg0].field2;
    emit AuctionCreated(varg0, uint128(varg1), uint128(varg2), uint64(varg3));
}

function 0x21df(uint256 varg0, address varg1) private { 
    require(bool(_nonFungibleContract.code.size));
    v0 = _nonFungibleContract.transfer(varg1, varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function erc20ContractsSwitcher(address varg0) public nonPayable { 
    return _erc20ContractsSwitcher[varg0];
}

function unpause() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    require(_paused);
    _paused = 0;
    emit Unpause();
    return bool(1);
}

function bid(uint256 varg0) public payable { 
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

function tokenIdToErc20Address(uint256 varg0) public nonPayable { 
    return address(_tokenIdToErc20Address[varg0]);
}

function getAuction(uint256 varg0) public nonPayable { 
    require(bool(uint64(uint64(_cancelAuction[varg0].field2 >> 64)) > 0));
    return address(_cancelAuction[varg0].field0), uint128(_cancelAuction[varg0].field1), uint128(_cancelAuction[varg0].field1 >> 128), uint64(_cancelAuction[varg0].field2), uint64(_cancelAuction[varg0].field2 >> 64);
}

function isSaleClockAuctionERC20() public nonPayable { 
    return _isSaleClockAuctionERC20;
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
    0x1a05(address(_cancelAuction[varg0].field0), varg0);
}

function owner() public nonPayable { 
    return _owner;
}

function cancelAuction(uint256 varg0) public nonPayable { 
    require(bool(uint64(uint64(_cancelAuction[varg0].field2 >> 64)) > 0));
    require(bool(address(msg.sender) == address(address(_cancelAuction[varg0].field0))));
    0x1a05(address(_cancelAuction[varg0].field0), varg0);
    _tokenIdToErc20Address[varg0] = bytes12(_tokenIdToErc20Address[varg0]);
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

function erc20ContractSwitch(address varg0, uint256 varg1) public nonPayable { 
    require(bool(address(msg.sender) == _nonFungibleContract));
    require(bool(address(address(varg0)) != address(0x0)));
    _erc20ContractsSwitcher[varg0] = varg1;
}

function createAuction(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, address varg5) public nonPayable { 
    MEM[64] = MEM[64] + 192;
    MEM[MEM[64]] = address(0x0);
    MEM[32 + MEM[64]] = uint128(0);
    MEM[64 + MEM[64]] = uint128(0);
    MEM[96 + MEM[64]] = uint64(0);
    MEM[128 + MEM[64]] = uint64(0);
    MEM[160 + MEM[64]] = uint64(0);
    require(bool(varg2 == uint128(varg2)));
    require(bool(varg3 == uint128(varg3)));
    require(bool(varg4 == uint64(varg4)));
    require(bool(address(msg.sender) == _nonFungibleContract));
    require(bool(_erc20ContractsSwitcher[address(address(address(varg1)))] > 0));
    0x16ae(varg0, varg5);
    require(bool(uint64(uint64(varg4)) >= 60));
    _cancelAuction[varg0].field0 = varg5 | bytes12(_cancelAuction[varg0].field0);
    _cancelAuction[varg0].field1 = uint128(varg2) | bytes16(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field1 = uint128(varg3) << 128 | uint128(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field2 = uint64(varg4) | bytes24(_cancelAuction[varg0].field2);
    _cancelAuction[varg0].field2 = uint64(block.timestamp) << 64 | ~0xffffffffffffffff0000000000000000 & _cancelAuction[varg0].field2;
    _cancelAuction[varg0].field2 = uint64(0) << 128 | ~0xffffffffffffffff00000000000000000000000000000000 & _cancelAuction[varg0].field2;
    emit AuctionERC20Created(varg0, uint128(varg2), uint128(varg3), uint64(varg4), varg1);
    _tokenIdToErc20Address[varg0] = varg1 | bytes12(_tokenIdToErc20Address[varg0]);
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

function bidERC20(uint256 varg0, uint256 varg1) public nonPayable { 
    require(bool(address(address(_tokenIdToErc20Address[varg0])) != address(0x0)));
    require(bool(uint64(uint64(_cancelAuction[varg0].field2 >> 64)) > 0));
    v0 = v1 = address(_tokenIdToErc20Address[varg0]) != address(0x0);
    if (!bool(address(address(_tokenIdToErc20Address[varg0])) == address(0x0))) {
        v0 = v2 = address(_tokenIdToErc20Address[varg0]) == address(_tokenIdToErc20Address[varg0]);
    }
    require(bool(v0));
    v3 = v4 = 0;
    if (block.timestamp > uint64(_cancelAuction[varg0].field2 >> 64)) {
        v3 = block.timestamp - uint64(_cancelAuction[varg0].field2 >> 64);
    }
    v5 = v6 = uint128(_cancelAuction[varg0].field1 >> 128);
    if (bool(v3 < uint64(uint64(_cancelAuction[varg0].field2)))) {
        assert(bool(uint64(uint64(_cancelAuction[varg0].field2))));
        v5 = uint128(_cancelAuction[varg0].field1) + (v6 - uint128(_cancelAuction[varg0].field1)) * v3 / uint64(_cancelAuction[varg0].field2);
    }
    require(bool(varg1 >= v5));
    _cancelAuction[varg0].field0 = bytes12(_cancelAuction[varg0].field0);
    _cancelAuction[varg0].field1 = bytes16(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field1 = uint128(_cancelAuction[varg0].field1);
    _cancelAuction[varg0].field2 = bytes24(_cancelAuction[varg0].field2);
    _cancelAuction[varg0].field2 = ~0xffffffffffffffff0000000000000000 & _cancelAuction[varg0].field2;
    _cancelAuction[varg0].field2 = ~0xffffffffffffffff00000000000000000000000000000000 & _cancelAuction[varg0].field2;
    if (v5 > 0) {
        assert(bool(10000));
        require(bool((address(address(_tokenIdToErc20Address[varg0]))).code.size));
        v7, /* bool */ v8 = address(_tokenIdToErc20Address[varg0]).transferFrom(msg.sender, address(_cancelAuction[varg0].field0), v5 - v5 * _ownerCut / 10000).gas(msg.gas);
        require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        require(bool(v8));
        if (v5 * _ownerCut / 10000 > 0) {
            require(bool((address(address(_tokenIdToErc20Address[varg0]))).code.size));
            v9, /* bool */ v10 = address(_tokenIdToErc20Address[varg0]).transferFrom(msg.sender, address(this), v5 * _ownerCut / 10000).gas(msg.gas);
            require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(RETURNDATASIZE() >= 32);
            require(bool(v10));
            _balances[address(_tokenIdToErc20Address[varg0])] = _balances[address(_tokenIdToErc20Address[varg0])] + v5 * _ownerCut / 10000;
        }
    }
    emit AuctionSuccessful(varg0, v5, msg.sender);
    0x21df(varg0, msg.sender);
    _tokenIdToErc20Address[varg0] = bytes12(_tokenIdToErc20Address[varg0]);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = uint32(function_selector >> 224);
        if (0x1c338644 == v0) {
            withdrawERC20Balance(address,address);
        } else if (0x27e235e3 == v0) {
            balances(address);
        } else if (0x27ebe40a == v0) {
            createAuction(uint256,uint256,uint256,uint256,address);
        } else if (0x33074ce6 == v0) {
            erc20ContractsSwitcher(address);
        } else if (0x3f4ba83a == v0) {
            unpause();
        } else if (0x454a2ab3 == v0) {
            bid(uint256);
        } else if (0x5c975abb == v0) {
            paused();
        } else if (0x5fd8c710 == v0) {
            withdrawBalance();
        } else if (0x6a47862e == v0) {
            tokenIdToErc20Address(uint256);
        } else if (0x78bd7935 == v0) {
            getAuction(uint256);
        } else if (0x791fc59d == v0) {
            isSaleClockAuctionERC20();
        } else if (0x83b5ff8b == v0) {
            ownerCut();
        } else if (0x8456cb59 == v0) {
            pause();
        } else if (0x878eb368 == v0) {
            cancelAuctionWhenPaused(uint256);
        } else if (0x8da5cb5b == v0) {
            owner();
        } else if (0x96b5a755 == v0) {
            cancelAuction(uint256);
        } else if (0xc55d0f56 == v0) {
            getCurrentPrice(uint256);
        } else if (0xc69ec779 == v0) {
            erc20ContractSwitch(address,uint256);
        } else if (0xc82531a3 == v0) {
            createAuction(uint256,address,uint256,uint256,uint256,address);
        } else if (0xdd1b7a0f == v0) {
            nonFungibleContract();
        } else if (0xf2fde38b == v0) {
            transferOwnership(address);
        } else if (0xfd3c4cbf == v0) {
            bidERC20(uint256,uint256);
        }
    }
    ();
}
