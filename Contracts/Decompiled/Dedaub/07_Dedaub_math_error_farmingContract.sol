// Decompiled by library.dedaub.com
// 2023.10.28 13:25 UTC
// Compiled using the solidity compiler version 0.8.20
// https://library.dedaub.com/decompile?md5=846964b1c461e350e53f7796b1c029df


// Data structures and variables inferred from the use of storage instructions
uint256 _midasPerSecond; // STORAGE[0x4]
uint256 _midasForFarm; // STORAGE[0x5]
uint256 _midasForXMidas; // STORAGE[0x6]
uint256 _lastMint; // STORAGE[0x7]
uint256 _currentFarmRewards; // STORAGE[0x8]
uint256 _accFarmRewards; // STORAGE[0x9]
struct_1349[] _poolLength; // STORAGE[0xa]
mapping (uint256 => mapping (uint256 => struct_1351)) _userInfo; // STORAGE[0xb]
uint256 _totalAllocPoint; // STORAGE[0xc]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _bombingRange; // STORAGE[0x1] bytes 0 to 19
uint256 _midasEmissionsReceiver; // STORAGE[0x2] bytes 0 to 19
uint256 _xMidasAddress; // STORAGE[0x3] bytes 0 to 19

struct struct_1351 { uint256 field0; uint256 field1; uint256 field2; };
struct struct_1349 { uint256 field0; uint256 field1; uint256 field2; uint256 field3; uint256 field4; uint256 field5; uint256 field6; uint256 field7; };

// Events
Withdraw(address, uint256, uint256);
EmergencyWithdraw(address, uint256, uint256);
Deposit(address, uint256, uint256);
OwnershipTransferred(address, address);

function 0x10f9(uint256 varg0) private { 
    0x13be();
    require(varg0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = v1 = 0;
    if (uint8(_poolLength[varg0].field5)) {
        v2, /* uint256 */ v3 = address(0x0).balanceOf(address(this)).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3746(v3);
        require(bool(_bombingRange.code.size));
        v4 = _bombingRange.deposit(_poolLength[varg0].field4, 0).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v5, /* uint256 */ v6 = address(0x0).balanceOf(address(this)).gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3746(v6);
        v0 = _SafeSub(v6, v3);
    }
    v7 = 0x31f2(address(_poolLength[varg0].field0));
    if (v7 - 0) {
        v8 = _SafeMul(_poolLength[varg0].field1, _accFarmRewards);
        v9 = _SafeDiv(_totalAllocPoint, v8);
        v10 = _SafeSub(v9, _poolLength[varg0].field3);
        v11 = _SafeMul(0xe8d4a51000, v10);
        v12 = _SafeDiv(v7, v11);
        v13 = _SafeAdd(_poolLength[varg0].field2, v12);
        _poolLength[varg0].field2 = v13;
        v14 = _SafeMul(0xe8d4a51000, v0);
        v15 = _SafeDiv(v7, v14);
        v16 = _SafeAdd(_poolLength[varg0].field6, v15);
        _poolLength[varg0].field6 = v16;
        if (0) {
            v17 = v18 = 0;
        } else {
            v17 = _SafeAdd(_poolLength[varg0].field3, v10);
            // Unknown jump to Block 0x2fd8B0x1103. Refer to 3-address code (TAC);
        }
        _poolLength[varg0].field3 = v17;
    } else {
        v19, /* bool */ v20 = address(0x0).transfer(address(0xdead), v0).gas(msg.gas);
        require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v20 == bool(v20));
        if (0) {
            v21 = v22 = 0;
        } else {
            v23 = _SafeMul(_poolLength[varg0].field1, _accFarmRewards);
            v21 = v24 = _SafeDiv(_totalAllocPoint, v23);
            // Unknown jump to Block 0x2eb6B0x1103. Refer to 3-address code (TAC);
        }
        _poolLength[varg0].field3 = v21;
    }
    return ;
}

function 0x13be() private { 
    if (block.timestamp <= _lastMint) {
        return ;
    } else {
        v0, /* uint256 */ v1 = address(0x0).totalSupply().gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3746(v1);
        v2, /* uint256 */ v3 = address(0x0).getMaxTotalSupply().gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3746(v3);
        v4 = 0x30ad(block.timestamp, _lastMint);
        v5 = v6 = _SafeMul(_midasPerSecond, v4);
        v7 = _SafeAdd(v6, v1);
        if (v7 > v3) {
            v5 = _SafeSub(v3, v1);
        }
        if (v5 - 0) {
            v8 = _SafeMul(_midasForFarm, v5);
            v9 = _SafeDiv('Invalid MIDAS for Farm', 10000, v8);
            v10 = v11 = 0;
            require(bool((address(0x0)).code.size));
            v12 = address(0x0).mint(address(this), v9).gas(msg.gas);
            require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v13 = _SafeAdd(_currentFarmRewards, v9);
            _currentFarmRewards = v13;
            v14 = _SafeAdd(_accFarmRewards, v9);
            _accFarmRewards = v14;
            if (_xMidasAddress != address(0x0)) {
                v15 = _SafeMul(_midasForXMidas, v5);
                v10 = v16 = _SafeDiv(0x496e76616c6964204d4944415320666f7220584d49444153000000000000000040c10f1900000000000000000000000000000000000000000000000000000000, 10000, v15);
                MEM[4 + MEM[64] + 0] = _xMidasAddress;
                require(bool((address(0x0)).code.size));
                v17 = address(0x0).mint(_xMidasAddress, v16).gas(msg.gas);
                require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
            v18 = _SafeSub(v5, v9);
            v19 = _SafeSub(v18, v10);
            require(bool((address(0x0)).code.size));
            v20 = address(0x0).mint(_midasEmissionsReceiver, v19).gas(msg.gas);
            require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            _lastMint = block.timestamp;
            return ;
        } else {
            _lastMint = block.timestamp;
            return ;
        }
    }
}

function currentFarmRewards() public payable { 
    return _currentFarmRewards;
}

function poolLength() public payable { 
    return _poolLength.length;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!varg1 | (varg0 == varg1 * varg0 / varg1), Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg0, Panic(18)); // division by zero
    return varg1 / varg0;
}

function 0x2896(uint256 varg0, uint256 varg1) private { 
    varg0 = v0 = _currentFarmRewards;
    if (varg0 <= v0) {
    }
    v1, /* bool */ v2 = address(0x0).transfer(address(varg1), varg0).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v2 == bool(v2));
    v3 = _SafeSub(_currentFarmRewards, varg0);
    _currentFarmRewards = v3;
    return ;
}

function 0x2976(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ varg0 = address(0x0).balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x3746(varg0);
    if (varg0 <= varg0) {
    }
    v1, /* bool */ v2 = address(0x0).transfer(address(varg1), varg0).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v2 == bool(v2));
    return ;
}

function poolInfo(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x3746(varg0);
    require(varg0 < _poolLength.length);
    v0 = 0x37fb(address(_poolLength[varg0].field0));
    v1 = 0x37fb(address(_poolLength[varg0].field7));
    return v0, _poolLength[varg0].field1, _poolLength[varg0].field2, _poolLength[varg0].field3, _poolLength[varg0].field4, bool(uint8(_poolLength[varg0].field5)), _poolLength[varg0].field6, v1;
}

function 0x2ad5(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (this.balance >= 0) {
        if ((address(varg2)).code.size > 0) {
            v0 = v1 = 0;
            while (v0 < 68) {
                MEM[MEM[64] + v0] = MEM[MEM[64] + 32 + v0];
                v0 = v0 + 32;
            }
            MEM[MEM[64] + 68] = 0;
            v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5 = address(varg2).transfer(address(varg1), varg0).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v6 = v7 = 96;
            } else {
                v6 = v8 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
            }
            if (!v2) {
                require(MEM[v6] <= 0, v5, MEM[v6]);
                v9 = new bytes[](v10.length);
                v11 = v12 = 0;
                while (v11 < v10.length) {
                    v9[v11] = v10[v11];
                    v11 = v11 + 32;
                }
                v9[v10.length][32] = 0;
                revert(Error(v9, v13, 'SafeERC20: low-level call failed'));
            } else {
                if (MEM[v6] > 0) {
                    require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
                    require(MEM[32 + v6 + 0] == bool(MEM[32 + v6 + 0]));
                    require(MEM[32 + v6 + 0], Error('SafeERC20: ERC20 operation did not succeed'));
                }
                return ;
            }
        } else {
            MEM[4 + MEM[64] + 0] = 32;
            revert(Error('Address: call to non-contract'));
        }
    } else {
        MEM[4 + MEM[64] + 0] = 32;
        revert(Error('Address: insufficient balance for call'));
    }
}

function totalAllocPoint() public payable { 
    return _totalAllocPoint;
}

function addPool(uint256 varg0, address varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x3746(varg0);
    require(varg1 == varg1);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    require(varg0 <= 0x186a0, Error('Too many alloc points'));
    v0 = v1 = 0;
    while (v0 < _poolLength.length) {
        require(v0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(address(_poolLength[v0].field0) - varg1, Error('Pool already exists'));
        v0 = _SafeAdd(v0, 1);
    }
    0x13be();
    v2 = v3 = 0;
    while (v2 < _poolLength.length) {
        require(v2 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v4 = v5 = 0;
        if (uint8(_poolLength[v2].field5)) {
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64] + 0] = address(this);
            v6 = address(0x0).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
            if (bool(v6)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                0x3746(MEM[MEM[64] + 0]);
                MEM[MEM[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64] + 0] = _poolLength[v2].field4;
                MEM[4 + MEM[64] + 32] = 0;
                require(bool(_bombingRange.code.size));
                v7 = _bombingRange.call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);
                if (bool(v7)) {
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64] + 0] = address(this);
                    v8 = address(0x0).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
                    if (bool(v8)) {
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        0x3746(MEM[MEM[64] + 0]);
                        v4 = _SafeSub(MEM[MEM[64] + 0], MEM[MEM[64] + 0]);
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v9 = 0x31f2(address(_poolLength[v2].field0));
        if (v9 - 0) {
            v10 = _SafeMul(_poolLength[v2].field1, _accFarmRewards);
            v11 = _SafeDiv(_totalAllocPoint, v10);
            v12 = _SafeSub(v11, _poolLength[v2].field3);
            v13 = _SafeMul(0xe8d4a51000, v12);
            v14 = _SafeDiv(v9, v13);
            v15 = _SafeAdd(_poolLength[v2].field2, v14);
            _poolLength[v2].field2 = v15;
            v16 = _SafeMul(0xe8d4a51000, v4);
            v17 = _SafeDiv(v9, v16);
            v18 = _SafeAdd(_poolLength[v2].field6, v17);
            _poolLength[v2].field6 = v18;
            if (1) {
                v19 = v20 = 0;
            } else {
                v19 = _SafeAdd(_poolLength[v2].field3, v12);
                // Unknown jump to Block 0x2fd8B0x12a2B0x8cb. Refer to 3-address code (TAC);
            }
            _poolLength[v2].field3 = v19;
        } else {
            MEM[MEM[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64] + 0] = address(0xdead);
            MEM[4 + MEM[64] + 32] = v4;
            v21 = address(0x0).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 32]).gas(msg.gas);
            if (bool(v21)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(MEM[MEM[64] + 0] == bool(MEM[MEM[64] + 0]));
                if (1) {
                    v22 = v23 = 0;
                } else {
                    v24 = _SafeMul(_poolLength[v2].field1, _accFarmRewards);
                    v22 = v25 = _SafeDiv(_totalAllocPoint, v24);
                    // Unknown jump to Block 0x2eb6B0x12a2B0x8cb. Refer to 3-address code (TAC);
                }
                _poolLength[v2].field3 = v22;
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v2 = _SafeAdd(v2, 1);
    }
    _accFarmRewards = 0;
    v26 = _SafeAdd(_totalAllocPoint, varg0);
    _totalAllocPoint = v26;
    MEM[(v27.data) len 7951] = 0x60806040523480156200001157600080fd5b506040518060400160405280601481526020017f4d69646173536872617044756d6d79546f6b656e0000000000000000000000008152506040518060400160405280601481526020017f4d69646173536872617044756d6d79546f6b656e00000000000000000000000081525081600390816200008f919062000412565b508060049081620000a1919062000412565b505050620000c4620000b8620000ca60201b60201c565b620000d260201b60201c565b620004f9565b600033905090565b6000600560009054906101000a900473ffffffffffffffffffffffffffffffffffffffff16905081600560006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055508173ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff167f8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e060405160405180910390a35050565b600081519050919050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052604160045260246000fd5b7f4e487b7100000000000000000000000000000000000000000000000000000000600052602260045260246000fd5b600060028204905060018216806200021a57607f821691505b60208210810362000230576200022f620001d2565b5b50919050565b60008190508160005260206000209050919050565b60006020601f8301049050919050565b600082821b905092915050565b6000600883026200029a7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff826200025b565b620002a686836200025b565b95508019841693508086168417925050509392505050565b6000819050919050565b6000819050919050565b6000620002f3620002ed620002e784620002be565b620002c8565b620002be565b9050919050565b6000819050919050565b6200030f83620002d2565b620003276200031e82620002fa565b84845462000268565b825550505050565b600090565b6200033e6200032f565b6200034b81848462000304565b505050565b5b8181101562000373576200036760008262000334565b60018101905062000351565b5050565b601f821115620003c2576200038c8162000236565b62000397846200024b565b81016020851015620003a7578190505b620003bf620003b6856200024b565b83018262000350565b50505b505050565b600082821c905092915050565b6000620003e760001984600802620003c7565b1980831691505092915050565b6000620004028383620003d4565b9150826002028217905092915050565b6200041d8262000198565b67ffffffffffffffff811115620004395762000438620001a3565b5b62000445825462000201565b6200045282828562000377565b600060209050601f8311600181146200048a576000841562000475578287015190505b620004818582620003f4565b865550620004f1565b601f1984166200049a8662000236565b60005b82811015620004c4578489015182556001820191506020850194506020810190506200049d565b86831015620004e45784890151620004e0601f891682620003d4565b8355505b6001600288020188555050505b505050505050565b611a0680620005096000396000f3fe608060405234801561001057600080fd5b50600436106100f55760003560e01c806370a0823111610097578063a457c2d711610066578063a457c2d714610264578063a9059cbb14610294578063dd62ed3e146102c4578063f2fde38b146102f4576100f5565b806370a08231146101ee578063715018a61461021e5780638da5cb5b1461022857806395d89b4114610246576100f5565b806318160ddd116100d357806318160ddd1461015257806323b872dd14610170578063313ce567146101a057806339509351146101be576100f5565b806306fdde03146100fa578063095ea7b3146101185780631249c58b14610148575b600080fd5b610102610310565b60405161010f9190611129565b60405180910390f35b610132600480360381019061012d91906111e4565b6103a2565b60405161013f919061123f565b60405180910390f35b6101506103c0565b005b61015a610450565b6040516101679190611269565b60405180910390f35b61018a60048036038101906101859190611284565b61045a565b604051610197919061123f565b60405180910390f35b6101a8610552565b6040516101b591906112f3565b60405180910390f35b6101d860048036038101906101d391906111e4565b61055b565b6040516101e5919061123f565b60405180910390f35b6102086004803603810190610203919061130e565b610607565b6040516102159190611269565b60405180910390f35b61022661064f565b005b6102306106d7565b60405161023d919061134a565b60405180910390f35b61024e610701565b60405161025b9190611129565b60405180910390f35b61027e600480360381019061027991906111e4565b610793565b60405161028b919061123f565b60405180910390f35b6102ae60048036038101906102a991906111e4565b61087e565b6040516102bb919061123f565b60405180910390f35b6102de60048036038101906102d99190611365565b61089c565b6040516102eb9190611269565b60405180910390f35b61030e6004803603810190610309919061130e565b610923565b005b60606003805461031f906113d4565b80601f016020809104026020016040519081016040528092919081815260200182805461034b906113d4565b80156103985780601f1061036d57610100808354040283529160200191610398565b820191906000526020600020905b81548152906001019060200180831161037b57829003601f168201915b5050505050905090565b60006103b66103af610a1a565b8484610a22565b6001905092915050565b6103c8610a1a565b73ffffffffffffffffffffffffffffffffffffffff166103e66106d7565b73ffffffffffffffffffffffffffffffffffffffff161461043c576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161043390611451565b60405180910390fd5b61044e33670de0b6b3a7640000610beb565b565b6000600254905090565b6000610467848484610d4a565b6000600160008673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060006104b2610a1a565b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054905082811015610532576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610529906114e3565b60405180910390fd5b6105468561053e610a1a565b858403610a22565b60019150509392505050565b60006012905090565b60006105fd610568610a1a565b848460016000610576610a1a565b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008873ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020546105f89190611532565b610a22565b6001905092915050565b60008060008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020549050919050565b610657610a1a565b73ffffffffffffffffffffffffffffffffffffffff166106756106d7565b73ffffffffffffffffffffffffffffffffffffffff16146106cb576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016106c290611451565b60405180910390fd5b6106d56000610fc9565b565b6000600560009054906101000a900473ffffffffffffffffffffffffffffffffffffffff16905090565b606060048054610710906113d4565b80601f016020809104026020016040519081016040528092919081815260200182805461073c906113d4565b80156107895780601f1061075e57610100808354040283529160200191610789565b820191906000526020600020905b81548152906001019060200180831161076c57829003601f168201915b5050505050905090565b600080600160006107a2610a1a565b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000205490508281101561085f576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610856906115d8565b60405180910390fd5b61087361086a610a1a565b85858403610a22565b600191505092915050565b600061089261088b610a1a565b8484610d4a565b6001905092915050565b6000600160008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054905092915050565b61092b610a1a565b73ffffffffffffffffffffffffffffffffffffffff166109496106d7565b73ffffffffffffffffffffffffffffffffffffffff161461099f576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161099690611451565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff1603610a0e576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610a059061166a565b60405180910390fd5b610a1781610fc9565b50565b600033905090565b600073ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff1603610a91576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610a88906116fc565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff1603610b00576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610af79061178e565b60405180910390fd5b80600160008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508173ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff167f8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b92583604051610bde9190611269565b60405180910390a3505050565b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff1603610c5a576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610c51906117fa565b60405180910390fd5b610c666000838361108f565b8060026000828254610c789190611532565b92505081905550806000808473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000206000828254610ccd9190611532565b925050819055508173ffffffffffffffffffffffffffffffffffffffff16600073ffffffffffffffffffffffffffffffffffffffff167fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef83604051610d329190611269565b60405180910390a3610d4660008383611094565b5050565b600073ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff1603610db9576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610db09061188c565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff1603610e28576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610e1f9061191e565b60405180910390fd5b610e3383838361108f565b60008060008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054905081811015610eb9576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610eb0906119b0565b60405180910390fd5b8181036000808673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002081905550816000808573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000206000828254610f4c9190611532565b925050819055508273ffffffffffffffffffffffffffffffffffffffff168473ffffffffffffffffffffffffffffffffffffffff167fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef84604051610fb09190611269565b60405180910390a3610fc3848484611094565b50505050565b6000600560009054906101000a900473ffffffffffffffffffffffffffffffffffffffff16905081600560006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055508173ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff167f8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e060405160405180910390a35050565b505050565b505050565b600081519050919050565b600082825260208201905092915050565b60005b838110156110d35780820151818401526020810190506110b8565b60008484015250505050565b6000601f19601f8301169050919050565b60006110fb82611099565b61110581856110a4565b93506111158185602086016110b5565b61111e816110df565b840191505092915050565b6000602082019050818103600083015261114381846110f0565b905092915050565b600080fd5b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b600061117b82611150565b9050919050565b61118b81611170565b811461119657600080fd5b50565b6000813590506111a881611182565b92915050565b6000819050919050565b6111c1816111ae565b81146111cc57600080fd5b50565b6000813590506111de816111b8565b92915050565b600080604083850312156111fb576111fa61114b565b5b600061120985828601611199565b925050602061121a858286016111cf565b9150509250929050565b60008115159050919050565b61123981611224565b82525050565b60006020820190506112546000830184611230565b92915050565b611263816111ae565b82525050565b600060208201905061127e600083018461125a565b92915050565b60008060006060848603121561129d5761129c61114b565b5b60006112ab86828701611199565b93505060206112bc86828701611199565b92505060406112cd868287016111cf565b9150509250925092565b600060ff82169050919050565b6112ed816112d7565b82525050565b600060208201905061130860008301846112e4565b92915050565b6000602082840312156113245761132361114b565b5b600061133284828501611199565b91505092915050565b61134481611170565b82525050565b600060208201905061135f600083018461133b565b92915050565b6000806040838503121561137c5761137b61114b565b5b600061138a85828601611199565b925050602061139b85828601611199565b9150509250929050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052602260045260246000fd5b600060028204905060018216806113ec57607f821691505b6020821081036113ff576113fe6113a5565b5b50919050565b7f4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572600082015250565b600061143b6020836110a4565b915061144682611405565b602082019050919050565b6000602082019050818103600083015261146a8161142e565b9050919050565b7f45524332303a207472616e7366657220616d6f756e742065786365656473206160008201527f6c6c6f77616e6365000000000000000000000000000000000000000000000000602082015250565b60006114cd6028836110a4565b91506114d882611471565b604082019050919050565b600060208201905081810360008301526114fc816114c0565b9050919050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b600061153d826111ae565b9150611548836111ae565b92508282019050808211156115605761155f611503565b5b92915050565b7f45524332303a2064656372656173656420616c6c6f77616e63652062656c6f7760008201527f207a65726f000000000000000000000000000000000000000000000000000000602082015250565b60006115c26025836110a4565b91506115cd82611566565b604082019050919050565b600060208201905081810360008301526115f1816115b5565b9050919050565b7f4f776e61626c653a206e6577206f776e657220697320746865207a65726f206160008201527f6464726573730000000000000000000000000000000000000000000000000000602082015250565b60006116546026836110a4565b915061165f826115f8565b604082019050919050565b6000602082019050818103600083015261168381611647565b9050919050565b7f45524332303a20617070726f76652066726f6d20746865207a65726f2061646460008201527f7265737300000000000000000000000000000000000000000000000000000000602082015250565b60006116e66024836110a4565b91506116f18261168a565b604082019050919050565b60006020820190508181036000830152611715816116d9565b9050919050565b7f45524332303a20617070726f766520746f20746865207a65726f20616464726560008201527f7373000000000000000000000000000000000000000000000000000000000000602082015250565b60006117786022836110a4565b91506117838261171c565b604082019050919050565b600060208201905081810360008301526117a78161176b565b9050919050565b7f45524332303a206d696e7420746f20746865207a65726f206164647265737300600082015250565b60006117e4601f836110a4565b91506117ef826117ae565b602082019050919050565b60006020820190508181036000830152611813816117d7565b9050919050565b7f45524332303a207472616e736665722066726f6d20746865207a65726f20616460008201527f6472657373000000000000000000000000000000000000000000000000000000602082015250565b60006118766025836110a4565b91506118818261181a565b604082019050919050565b600060208201905081810360008301526118a581611869565b9050919050565b7f45524332303a207472616e7366657220746f20746865207a65726f206164647260008201527f6573730000000000000000000000000000000000000000000000000000000000602082015250565b60006119086023836110a4565b9150611913826118ac565b604082019050919050565b60006020820190508181036000830152611937816118fb565b9050919050565b7f45524332303a207472616e7366657220616d6f756e742065786365656473206260008201527f616c616e63650000000000000000000000000000000000000000000000000000602082015250565b600061199a6026836110a4565b91506119a58261193e565b604082019050919050565b600060208201905081810360008301526119c98161198d565b905091905056fea2646970667358221220114a136d854425b597971c3d2905b23bb7ff29b833cd89fe879de2aac41c6f1864736f6c63430008140033;
    v28 = create.code(v27.data, 7951).value(0);
    if (bool(v28)) {
        _poolLength = _poolLength.length + 1;
        _poolLength[_poolLength.length + 1 - 1].field0 = varg1 | bytes12(_poolLength[_poolLength.length + 1 - 1].field0);
        _poolLength[_poolLength.length + 1 - 1].field1 = varg0;
        _poolLength[_poolLength.length + 1 - 1].field2 = 0;
        _poolLength[_poolLength.length + 1 - 1].field3 = 0;
        _poolLength[_poolLength.length + 1 - 1].field4 = 0;
        _poolLength[_poolLength.length + 1 - 1].field5 = 0x0 | bytes31(_poolLength[_poolLength.length + 1 - 1].field5);
        _poolLength[_poolLength.length + 1 - 1].field6 = 0;
        _poolLength[_poolLength.length + 1 - 1].field7 = address(v28) | bytes12(_poolLength[_poolLength.length + 1 - 1].field7);
        exit;
    } else {
        RETURNDATACOPY(0, 0, RETURNDATASIZE());
        revert(0, RETURNDATASIZE());
    }
}

function 0x30ad(uint256 varg0, uint256 varg1) private { 
    if (varg1 <= 0) {
        varg1 = v0 = 0;
    }
    if (varg0 >= 0) {
        if (varg1 <= varg0) {
            v1 = v2 = varg0 - varg1;
        } else {
            v3 = new bytes[](v4.length);
            v5 = v6 = 0;
            while (v5 < v4.length) {
                v3[v5] = v4[v5];
                v5 = v5 + 32;
            }
            v3[v4.length] = 0;
            revert(Error(v3, v7, 'Time error'));
        }
    } else {
        v1 = v8 = 0;
    }
    return v1;
}

function _SafeDiv(bytes varg0, uint256 varg1, uint256 varg2) private { 
    if (varg1 > 0) {
        require(varg1, Panic(18)); // division by zero
        return varg2 / varg1;
    } else {
        v0 = new bytes[](varg0.length);
        v1 = v2 = 0;
        while (v1 < varg0.length) {
            v0[v1] = varg0[v1];
            v1 = v1 + 32;
        }
        v0[varg0.length] = 0;
        revert(Error(v0));
    }
}

function 0x31f2(address varg0) private { 
    if (varg0 - address(0x0)) {
        v0, /* uint256 */ v1 = varg0.balanceOf(address(this)).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3746(v1);
    } else {
        v2, /* uint256 */ v3 = address(0x0).balanceOf(address(this)).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3746(v3);
        v1 = v4 = _SafeSub(v3, _currentFarmRewards);
    }
    return v1;
}

function setMidasEmissionsReceiver(address varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(varg0 == varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    _midasEmissionsReceiver = varg0;
}

function withdraw(uint256 varg0, uint256 varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x3746(varg0);
    0x3746(varg1);
    require(varg0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(_userInfo[varg0][msg.sender].field0 >= varg1, Error('Withdrawing too much'));
    0x10f9(varg0);
    v0 = _SafeMul(_poolLength[varg0].field2, _userInfo[varg0][msg.sender].field0);
    v1 = _SafeDiv(0xe8d4a51000, v0);
    v2 = _SafeSub(v1, _userInfo[varg0][msg.sender].field1);
    v3 = _SafeMul(_poolLength[varg0].field6, _userInfo[varg0][msg.sender].field0);
    v4 = _SafeDiv(0xe8d4a51000, v3);
    v5 = _SafeSub(v4, _userInfo[varg0][msg.sender].field2);
    v6 = _SafeSub(_userInfo[varg0][msg.sender].field0, varg1);
    _userInfo[varg0][msg.sender].field0 = v6;
    v7 = _SafeMul(_poolLength[varg0].field2, _userInfo[varg0][msg.sender].field0);
    v8 = _SafeDiv(0xe8d4a51000, v7);
    _userInfo[varg0][msg.sender].field1 = v8;
    v9 = _SafeMul(_poolLength[varg0].field6, _userInfo[varg0][msg.sender].field2);
    v10 = _SafeDiv(0xe8d4a51000, v9);
    _userInfo[varg0][msg.sender].field2 = v10;
    if (v2 > 0) {
        0x2896(v2, msg.sender);
    }
    if (v5 > 0) {
        0x2976(v5, msg.sender);
    }
    0x2ad5(varg1, msg.sender, address(_poolLength[varg0].field0));
    emit Withdraw(msg.sender, varg0, varg1);
}

function setShrapPoolIdMap(uint256 varg0, uint256 varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x3746(varg0);
    0x3746(varg1);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    require(varg0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    _poolLength[varg0].field4 = varg1;
    _poolLength[varg0].field5 = 0x1 | bytes31(_poolLength[varg0].field5);
    require(bool((address(address(_poolLength[varg0].field7))).code.size));
    v0 = address(_poolLength[varg0].field7).mint().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1, /* bool */ v2 = address(_poolLength[varg0].field7).approve(_bombingRange, 0xde0b6b3a7640000).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v2 == bool(v2));
    require(bool(_bombingRange.code.size));
    v3 = _bombingRange.deposit(varg1, 0xde0b6b3a7640000).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x3746(uint256 varg0) private { 
    require(varg0 == varg0);
    return ;
}

function 0x37fb(address varg0) private { 
    return varg0;
}

function updatePool(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x3746(varg0);
    0x10f9(varg0);
}

function emergencyWithdraw(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x3746(varg0);
    require(varg0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    _userInfo[varg0][msg.sender].field0 = 0;
    _userInfo[varg0][msg.sender].field1 = 0;
    0x2ad5(_userInfo[varg0][msg.sender].field0, msg.sender, address(_poolLength[varg0].field0));
    emit EmergencyWithdraw(msg.sender, varg0, _userInfo[varg0][msg.sender].field0);
}

function bombingRange() public payable { 
    v0 = 0x37fb(_bombingRange);
    return v0;
}

function lastMint() public payable { 
    return _lastMint;
}

function massUpdatePools() public payable { 
    0x13be();
    v0 = v1 = 0;
    while (v0 < _poolLength.length) {
        require(v0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v2 = v3 = 0;
        if (uint8(_poolLength[v0].field5)) {
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64] + 0] = address(this);
            v4 = address(0x0).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
            if (bool(v4)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                0x3746(MEM[MEM[64] + 0]);
                MEM[MEM[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64] + 0] = _poolLength[v0].field4;
                MEM[4 + MEM[64] + 32] = 0;
                require(bool(_bombingRange.code.size));
                v5 = _bombingRange.call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);
                if (bool(v5)) {
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64] + 0] = address(this);
                    v6 = address(0x0).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
                    if (bool(v6)) {
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        0x3746(MEM[MEM[64] + 0]);
                        v2 = _SafeSub(MEM[MEM[64] + 0], MEM[MEM[64] + 0]);
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v7 = 0x31f2(address(_poolLength[v0].field0));
        if (v7 - 0) {
            v8 = _SafeMul(_poolLength[v0].field1, _accFarmRewards);
            v9 = _SafeDiv(_totalAllocPoint, v8);
            v10 = _SafeSub(v9, _poolLength[v0].field3);
            v11 = _SafeMul(0xe8d4a51000, v10);
            v12 = _SafeDiv(v7, v11);
            v13 = _SafeAdd(_poolLength[v0].field2, v12);
            _poolLength[v0].field2 = v13;
            v14 = _SafeMul(0xe8d4a51000, v2);
            v15 = _SafeDiv(v7, v14);
            v16 = _SafeAdd(_poolLength[v0].field6, v15);
            _poolLength[v0].field6 = v16;
            if (1) {
                v17 = v18 = 0;
            } else {
                v17 = _SafeAdd(_poolLength[v0].field3, v10);
                // Unknown jump to Block 0x2fd8B0x12a2B0x408. Refer to 3-address code (TAC);
            }
            _poolLength[v0].field3 = v17;
        } else {
            MEM[MEM[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64] + 0] = address(0xdead);
            MEM[4 + MEM[64] + 32] = v2;
            v19 = address(0x0).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 32]).gas(msg.gas);
            if (bool(v19)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(MEM[MEM[64] + 0] == bool(MEM[MEM[64] + 0]));
                if (1) {
                    v20 = v21 = 0;
                } else {
                    v22 = _SafeMul(_poolLength[v0].field1, _accFarmRewards);
                    v20 = v23 = _SafeDiv(_totalAllocPoint, v22);
                    // Unknown jump to Block 0x2eb6B0x12a2B0x408. Refer to 3-address code (TAC);
                }
                _poolLength[v0].field3 = v20;
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v0 = _SafeAdd(v0, 1);
    }
    _accFarmRewards = 0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function burnAddress() public payable { 
    return address(0xdead);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function renounceOwnership() public payable { 
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    _owner = 0;
    emit OwnershipTransferred(_owner, address(0x0));
}

function MIDAS() public payable { 
    v0 = 0x37fb(0);
    return v0;
}

function maxAllocPoint() public payable { 
    return 0x186a0;
}

function startTime() public payable { 
    return 0;
}

function updateMint() public payable { 
    0x13be();
}

function owner() public payable { 
    return _owner;
}

function maxMidasPerSecond() public payable { 
    return 0xde0b6b3a7640000;
}

function userInfo(uint256 varg0, address varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x3746(varg0);
    require(varg1 == varg1);
    return _userInfo[varg0][varg1].field0, _userInfo[varg0][varg1].field1, _userInfo[varg0][varg1].field2;
}

function midasForFarm() public payable { 
    return _midasForFarm;
}

function midasForXMidas() public payable { 
    return _midasForXMidas;
}

function midasPerSecond() public payable { 
    return _midasPerSecond;
}

function disableShrapPool(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x3746(varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    require(varg0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    _poolLength[varg0].field5 = 0x0 | bytes31(_poolLength[varg0].field5);
}

function SHRAP() public payable { 
    v0 = 0x37fb(0);
    return v0;
}

function accFarmRewards() public payable { 
    return _accFarmRewards;
}

function pendingRewards(uint256 varg0, address varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x3746(varg0);
    require(varg1 == varg1);
    require(varg0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = v1 = _poolLength[varg0].field2;
    v2 = 0x31f2(address(_poolLength[varg0].field0));
    v3 = v4 = block.timestamp > _lastMint;
    if (v4) {
        v3 = v2 != 0;
    }
    if (v3) {
        v5, /* uint256 */ v6 = address(0x0).totalSupply().gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3746(v6);
        v7, /* uint256 */ v8 = address(0x0).getMaxTotalSupply().gas(msg.gas);
        require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3746(v8);
        v9 = 0x30ad(block.timestamp, _lastMint);
        v10 = v11 = _SafeMul(_midasPerSecond, v9);
        v12 = _SafeAdd(v11, v6);
        if (v12 > v8) {
            v10 = _SafeSub(v8, v6);
        }
        v13 = _SafeMul(_midasForFarm, v10);
        v14 = _SafeDiv('Invalid MIDAS for Farm', 10000, v13);
        v15 = _SafeAdd(_accFarmRewards, v14);
        v16 = _SafeMul(_poolLength[varg0].field1, v15);
        v17 = _SafeDiv(_totalAllocPoint, v16);
        v18 = _SafeSub(v17, _poolLength[varg0].field3);
        v19 = _SafeMul(0xe8d4a51000, v18);
        v20 = _SafeDiv(v2, v19);
        v0 = _SafeAdd(v1, v20);
    }
    v21 = v22 = 0;
    if (uint8(_poolLength[varg0].field5)) {
        v23, /* uint256 */ v24 = _bombingRange.pendingSHRAP(_poolLength[varg0].field4, address(this)).gas(msg.gas);
        require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x3746(v24);
        v25 = _SafeDiv(10, v24);
        v21 = _SafeSub(v24, v25);
    }
    v26 = _SafeMul(0xe8d4a51000, v21);
    v27 = _SafeDiv(v2, v26);
    v28 = _SafeAdd(_poolLength[varg0].field6, v27);
    v29 = _SafeMul(v0, _userInfo[varg0][varg1].field0);
    v30 = _SafeDiv(0xe8d4a51000, v29);
    v31 = _SafeSub(v30, _userInfo[varg0][varg1].field1);
    v32 = _SafeMul(v28, _userInfo[varg0][varg1].field0);
    v33 = _SafeDiv(0xe8d4a51000, v32);
    v34 = _SafeSub(v33, _userInfo[varg0][varg1].field2);
    return v31, v34;
}

function setMidasPerSecond(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x3746(varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    require(varg0 < 0xde0b6b3a7640000, Error('Too many MIDAS per second'));
    0x13be();
    v0 = v1 = 0;
    while (v0 < _poolLength.length) {
        require(v0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v2 = v3 = 0;
        if (uint8(_poolLength[v0].field5)) {
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64] + 0] = address(this);
            v4 = address(0x0).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
            if (bool(v4)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                0x3746(MEM[MEM[64] + 0]);
                MEM[MEM[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64] + 0] = _poolLength[v0].field4;
                MEM[4 + MEM[64] + 32] = 0;
                require(bool(_bombingRange.code.size));
                v5 = _bombingRange.call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);
                if (bool(v5)) {
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64] + 0] = address(this);
                    v6 = address(0x0).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
                    if (bool(v6)) {
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        0x3746(MEM[MEM[64] + 0]);
                        v2 = _SafeSub(MEM[MEM[64] + 0], MEM[MEM[64] + 0]);
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v7 = 0x31f2(address(_poolLength[v0].field0));
        if (v7 - 0) {
            v8 = _SafeMul(_poolLength[v0].field1, _accFarmRewards);
            v9 = _SafeDiv(_totalAllocPoint, v8);
            v10 = _SafeSub(v9, _poolLength[v0].field3);
            v11 = _SafeMul(0xe8d4a51000, v10);
            v12 = _SafeDiv(v7, v11);
            v13 = _SafeAdd(_poolLength[v0].field2, v12);
            _poolLength[v0].field2 = v13;
            v14 = _SafeMul(0xe8d4a51000, v2);
            v15 = _SafeDiv(v7, v14);
            v16 = _SafeAdd(_poolLength[v0].field6, v15);
            _poolLength[v0].field6 = v16;
            if (1) {
                v17 = v18 = 0;
            } else {
                v17 = _SafeAdd(_poolLength[v0].field3, v10);
                // Unknown jump to Block 0x2fd8B0x12a2B0x20a8. Refer to 3-address code (TAC);
            }
            _poolLength[v0].field3 = v17;
        } else {
            MEM[MEM[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64] + 0] = address(0xdead);
            MEM[4 + MEM[64] + 32] = v2;
            v19 = address(0x0).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 32]).gas(msg.gas);
            if (bool(v19)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(MEM[MEM[64] + 0] == bool(MEM[MEM[64] + 0]));
                if (1) {
                    v20 = v21 = 0;
                } else {
                    v22 = _SafeMul(_poolLength[v0].field1, _accFarmRewards);
                    v20 = v23 = _SafeDiv(_totalAllocPoint, v22);
                    // Unknown jump to Block 0x2eb6B0x12a2B0x20a8. Refer to 3-address code (TAC);
                }
                _poolLength[v0].field3 = v20;
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v0 = _SafeAdd(v0, 1);
    }
    _accFarmRewards = 0;
    _midasPerSecond = varg0;
}

function () public payable { 
    revert();
}

function setMidasForXMidas(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x3746(varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    0x13be();
    _midasForXMidas = varg0;
}

function setPoolAllocPoint(uint256 varg0, uint256 varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x3746(varg0);
    0x3746(varg1);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    require(varg1 <= 0x186a0, Error('Too many alloc points'));
    0x13be();
    v0 = v1 = 0;
    while (v0 < _poolLength.length) {
        require(v0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v2 = v3 = 0;
        if (uint8(_poolLength[v0].field5)) {
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64] + 0] = address(this);
            v4 = address(0x0).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
            if (bool(v4)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                0x3746(MEM[MEM[64] + 0]);
                MEM[MEM[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64] + 0] = _poolLength[v0].field4;
                MEM[4 + MEM[64] + 32] = 0;
                require(bool(_bombingRange.code.size));
                v5 = _bombingRange.call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);
                if (bool(v5)) {
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64] + 0] = address(this);
                    v6 = address(0x0).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
                    if (bool(v6)) {
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        0x3746(MEM[MEM[64] + 0]);
                        v2 = _SafeSub(MEM[MEM[64] + 0], MEM[MEM[64] + 0]);
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v7 = 0x31f2(address(_poolLength[v0].field0));
        if (v7 - 0) {
            v8 = _SafeMul(_poolLength[v0].field1, _accFarmRewards);
            v9 = _SafeDiv(_totalAllocPoint, v8);
            v10 = _SafeSub(v9, _poolLength[v0].field3);
            v11 = _SafeMul(0xe8d4a51000, v10);
            v12 = _SafeDiv(v7, v11);
            v13 = _SafeAdd(_poolLength[v0].field2, v12);
            _poolLength[v0].field2 = v13;
            v14 = _SafeMul(0xe8d4a51000, v2);
            v15 = _SafeDiv(v7, v14);
            v16 = _SafeAdd(_poolLength[v0].field6, v15);
            _poolLength[v0].field6 = v16;
            if (1) {
                v17 = v18 = 0;
            } else {
                v17 = _SafeAdd(_poolLength[v0].field3, v10);
                // Unknown jump to Block 0x2fd8B0x12a2B0x221f. Refer to 3-address code (TAC);
            }
            _poolLength[v0].field3 = v17;
        } else {
            MEM[MEM[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64] + 0] = address(0xdead);
            MEM[4 + MEM[64] + 32] = v2;
            v19 = address(0x0).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 32]).gas(msg.gas);
            if (bool(v19)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(MEM[MEM[64] + 0] == bool(MEM[MEM[64] + 0]));
                if (1) {
                    v20 = v21 = 0;
                } else {
                    v22 = _SafeMul(_poolLength[v0].field1, _accFarmRewards);
                    v20 = v23 = _SafeDiv(_totalAllocPoint, v22);
                    // Unknown jump to Block 0x2eb6B0x12a2B0x221f. Refer to 3-address code (TAC);
                }
                _poolLength[v0].field3 = v20;
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v0 = _SafeAdd(v0, 1);
    }
    _accFarmRewards = 0;
    require(varg0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v24 = _SafeSub(_totalAllocPoint, _poolLength[varg0].field1);
    v25 = _SafeAdd(v24, varg1);
    _totalAllocPoint = v25;
    require(varg0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    _poolLength[varg0].field1 = varg1;
}

function deposit(uint256 varg0, uint256 varg1) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    0x3746(varg0);
    0x3746(varg1);
    require(varg0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    0x10f9(varg0);
    v0 = _SafeMul(_poolLength[varg0].field2, _userInfo[varg0][msg.sender].field0);
    v1 = _SafeDiv(0xe8d4a51000, v0);
    v2 = _SafeSub(v1, _userInfo[varg0][msg.sender].field1);
    v3 = _SafeMul(_poolLength[varg0].field6, _userInfo[varg0][msg.sender].field0);
    v4 = _SafeDiv(0xe8d4a51000, v3);
    v5 = _SafeSub(v4, _userInfo[varg0][msg.sender].field2);
    v6 = _SafeAdd(_userInfo[varg0][msg.sender].field0, varg1);
    _userInfo[varg0][msg.sender].field0 = v6;
    v7 = _SafeMul(_poolLength[varg0].field2, _userInfo[varg0][msg.sender].field0);
    v8 = _SafeDiv(0xe8d4a51000, v7);
    _userInfo[varg0][msg.sender].field1 = v8;
    v9 = _SafeMul(_poolLength[varg0].field6, _userInfo[varg0][msg.sender].field0);
    v10 = _SafeDiv(0xe8d4a51000, v9);
    _userInfo[varg0][msg.sender].field2 = v10;
    if (v2 > 0) {
        0x2896(v2, msg.sender);
    }
    if (v5 > 0) {
        0x2976(v5, msg.sender);
    }
    if (this.balance >= 0) {
        if ((address(_poolLength[varg0].field0)).code.size > 0) {
            v11 = v12 = 0;
            while (v11 < 100) {
                MEM[MEM[64] + v11] = MEM[MEM[64] + 32 + v11];
                v11 = v11 + 32;
            }
            MEM[MEM[64] + 100] = 0;
            v13, /* uint256 */ v14, /* uint256 */ v15, /* uint256 */ v16 = address(_poolLength[varg0].field0).transferFrom(msg.sender, address(this), varg1).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v17 = v18 = 96;
            } else {
                v17 = v19 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v19.data, 0, RETURNDATASIZE());
            }
            if (!v13) {
                require(MEM[v17] <= 0, v16, MEM[v17]);
                v20 = new bytes[](v21.length);
                v22 = v23 = 0;
                while (v22 < v21.length) {
                    v20[v22] = v21[v22];
                    v22 = v22 + 32;
                }
                v20[v21.length][32] = 0;
                revert(Error(v20, v24, 'SafeERC20: low-level call failed'));
            } else {
                if (MEM[v17] > 0) {
                    require(32 + v17 + MEM[v17] - (32 + v17) >= 32);
                    require(MEM[32 + v17 + 0] == bool(MEM[32 + v17 + 0]));
                    require(MEM[32 + v17 + 0], Error('SafeERC20: ERC20 operation did not succeed'));
                }
                emit Deposit(msg.sender, varg0, varg1);
                exit;
            }
        } else {
            MEM[4 + MEM[64] + 0] = 32;
            revert(Error('Address: call to non-contract'));
        }
    } else {
        MEM[4 + MEM[64] + 0] = 32;
        revert(Error('Address: insufficient balance for call'));
    }
}

function xMidasAddress() public payable { 
    return _xMidasAddress;
}

function setMidasForFarm(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    0x3746(varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    0x13be();
    v0 = v1 = 0;
    while (v0 < _poolLength.length) {
        require(v0 < _poolLength.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v2 = v3 = 0;
        if (uint8(_poolLength[v0].field5)) {
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64] + 0] = address(this);
            v4 = address(0x0).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
            if (bool(v4)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                0x3746(MEM[MEM[64] + 0]);
                MEM[MEM[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64] + 0] = _poolLength[v0].field4;
                MEM[4 + MEM[64] + 32] = 0;
                require(bool(_bombingRange.code.size));
                v5 = _bombingRange.call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);
                if (bool(v5)) {
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64] + 0] = address(this);
                    v6 = address(0x0).staticcall(MEM[(MEM[64]) len 36], MEM[(MEM[64]) len 32]).gas(msg.gas);
                    if (bool(v6)) {
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        0x3746(MEM[MEM[64] + 0]);
                        v2 = _SafeSub(MEM[MEM[64] + 0], MEM[MEM[64] + 0]);
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v7 = 0x31f2(address(_poolLength[v0].field0));
        if (v7 - 0) {
            v8 = _SafeMul(_poolLength[v0].field1, _accFarmRewards);
            v9 = _SafeDiv(_totalAllocPoint, v8);
            v10 = _SafeSub(v9, _poolLength[v0].field3);
            v11 = _SafeMul(0xe8d4a51000, v10);
            v12 = _SafeDiv(v7, v11);
            v13 = _SafeAdd(_poolLength[v0].field2, v12);
            _poolLength[v0].field2 = v13;
            v14 = _SafeMul(0xe8d4a51000, v2);
            v15 = _SafeDiv(v7, v14);
            v16 = _SafeAdd(_poolLength[v0].field6, v15);
            _poolLength[v0].field6 = v16;
            if (1) {
                v17 = v18 = 0;
            } else {
                v17 = _SafeAdd(_poolLength[v0].field3, v10);
                // Unknown jump to Block 0x2fd8B0x12a2B0x25ff. Refer to 3-address code (TAC);
            }
            _poolLength[v0].field3 = v17;
        } else {
            MEM[MEM[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64] + 0] = address(0xdead);
            MEM[4 + MEM[64] + 32] = v2;
            v19 = address(0x0).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 32]).gas(msg.gas);
            if (bool(v19)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(MEM[MEM[64] + 0] == bool(MEM[MEM[64] + 0]));
                if (1) {
                    v20 = v21 = 0;
                } else {
                    v22 = _SafeMul(_poolLength[v0].field1, _accFarmRewards);
                    v20 = v23 = _SafeDiv(_totalAllocPoint, v22);
                    // Unknown jump to Block 0x2eb6B0x12a2B0x25ff. Refer to 3-address code (TAC);
                }
                _poolLength[v0].field3 = v20;
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v0 = _SafeAdd(v0, 1);
    }
    _accFarmRewards = 0;
    _midasForFarm = varg0;
}

function midasEmissionsReceiver() public payable { 
    return _midasEmissionsReceiver;
}

function transferOwnership(address varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(varg0 == varg0);
    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));
    require(varg0 - address(0x0), Error('Ownable: new owner is the zero address'));
    _owner = varg0;
    emit OwnershipTransferred(_owner, varg0);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length < 4) {
        ();
    } else {
        v0 = function_selector >> 224;
        if (0x7b84a9ee > v0) {
            if (0x5312ea8e > v0) {
                if (0x33ba8882 > v0) {
                    if (0x55c5ae7 == v0) {
                        currentFarmRewards();
                    } else if (0x81e3eda == v0) {
                        poolLength();
                    } else if (0x1526fe27 == v0) {
                        poolInfo(uint256);
                    } else {
                        require(0x17caf6f1 == v0);
                        totalAllocPoint();
                    }
                } else if (0x33ba8882 == v0) {
                    addPool(uint256,address);
                } else if (0x3e1c3819 == v0) {
                    setMidasEmissionsReceiver(address);
                } else if (0x441a3e70 == v0) {
                    withdraw(uint256,uint256);
                } else if (0x4c034ee2 == v0) {
                    setShrapPoolIdMap(uint256,uint256);
                } else {
                    require(0x51eb05a6 == v0);
                    updatePool(uint256);
                }
            } else if (0x70d5ae05 > v0) {
                if (0x5312ea8e == v0) {
                    emergencyWithdraw(uint256);
                } else if (0x56272315 == v0) {
                    bombingRange();
                } else if (0x586fc5b5 == v0) {
                    lastMint();
                } else {
                    require(0x630b5ba1 == v0);
                    massUpdatePools();
                }
            } else if (0x70d5ae05 == v0) {
                burnAddress();
            } else if (0x715018a6 == v0) {
                renounceOwnership();
            } else if (0x718eb635 == v0) {
                MIDAS();
            } else if (0x76816091 == v0) {
                maxAllocPoint();
            } else {
                require(0x78e97925 == v0);
                startTime();
            }
        } else if (0xc87a4925 > v0) {
            if (0xa1252d3f > v0) {
                if (0x7b84a9ee == v0) {
                    updateMint();
                } else if (0x8da5cb5b == v0) {
                    owner();
                } else if (0x91318226 == v0) {
                    maxMidasPerSecond();
                } else {
                    require(0x93f1a40b == v0);
                    userInfo(uint256,address);
                }
            } else if (0xa1252d3f == v0) {
                midasForFarm();
            } else if (0xaeb35bec == v0) {
                midasForXMidas();
            } else if (0xb9ca7670 == v0) {
                midasPerSecond();
            } else if (0xc268be0b == v0) {
                disableShrapPool(uint256);
            } else {
                require(0xc7c17219 == v0);
                SHRAP();
            }
        } else if (0xe2bbb158 > v0) {
            if (0xc87a4925 == v0) {
                accFarmRewards();
            } else if (0xd18df53c == v0) {
                pendingRewards(uint256,address);
            } else if (0xd23d9892 == v0) {
                setMidasPerSecond(uint256);
            } else if (0xd94006e0 == v0) {
                setMidasForXMidas(uint256);
            } else {
                require(0xdc628aa4 == v0);
                setPoolAllocPoint(uint256,uint256);
            }
        } else if (0xe2bbb158 == v0) {
            deposit(uint256,uint256);
        } else if (0xe53f7353 == v0) {
            xMidasAddress();
        } else if (0xed4fd886 == v0) {
            setMidasForFarm(uint256);
        } else if (0xf2d9b8f8 == v0) {
            midasEmissionsReceiver();
        } else {
            require(0xf2fde38b == v0);
            transferOwnership(address);
        }
    }
}
