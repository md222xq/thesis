// Decompiled by library.dedaub.com
// 2023.11.08 21:48 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256[] _getPuppetCount; // STORAGE[0x1]
mapping (uint256 => uint256) _extra; // STORAGE[0x2]
uint256 stor_4; // STORAGE[0x4]
uint256 _owner; // STORAGE[0x0] bytes 0 to 19



function withdraw() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    v0 = _owner.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function getPuppetCount() public nonPayable { 
    return _getPuppetCount.length;
}

function setExtra(uint256 varg0, address varg1) public nonPayable { 
    require(bool(address(address(varg1)) != address(0x0)));
    _extra[varg0] = varg1 | bytes12(_extra[varg0]);
}

function extra(uint256 varg0) public nonPayable { 
    return address(_extra[varg0]);
}

function owner() public nonPayable { 
    return _owner;
}

function newPuppet() public nonPayable { 
    require(bool(address(msg.sender) == _owner));
    MEM[(v0.data) len 1159] = 0x608060405273509cb8cb2f8ba04ae81eec394175707edd37e10960008080815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550735c035bb4cb7dacbfee076a5e61aa39a10da2e9566001600080815260200190815260200160002060006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055506103a9806100de6000396000f300608060405260043610610057576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff16806335898c89146101265780633ccfd60b146101935780639811c7c1146101aa575b60008080815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161415156101245760008080815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1634620927c090604051600060405180830381858888f19350505050505b005b34801561013257600080fd5b5061015160048036038101908080359060200190929190505050610217565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b34801561019f57600080fd5b506101a861024a565b005b3480156101b657600080fd5b506101d56004803603810190808035906020019092919050505061034a565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b60016020528060005260406000206000915054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b6001600080815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff161415156102b757600080fd5b6001600080815260200190815260200160002060009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff166108fc3073ffffffffffffffffffffffffffffffffffffffff16319081150290604051600060405180830381858888f19350505050158015610347573d6000803e3d6000fd5b50565b60006020528060005260406000206000915054906101000a900473ffffffffffffffffffffffffffffffffffffffff16815600a165627a7a72305820522be9ba5853dc0ef2a2616943f4c86fca44a96e1b8b4e53dc98442efa5ca7720029;
    v1 = create.code(v0.data, 1159).value(0);
    if (bool(v1)) {
        _getPuppetCount = _getPuppetCount.length + 1;
        _getPuppetCount[_getPuppetCount.length + 1 - 1] = address(v1) | bytes12(_getPuppetCount[_getPuppetCount.length + 1 - 1]);
        return address(v1);
    } else {
        RETURNDATACOPY(0, 0, RETURNDATASIZE());
        revert(0, RETURNDATASIZE());
    }
}

function () public payable { 
}

function puppets(uint256 varg0) public nonPayable { 
    assert(bool(varg0 < _getPuppetCount.length));
    return address(_getPuppetCount[varg0]);
}

function fundPuppets() public payable { 
    require(bool(address(msg.sender) == _owner));
    assert(bool(4));
    stor_4 = msg.value >> 2;
    v0 = address(_extra[0]).call().value(stor_4).gas(0xc3500);
    v1 = address(_extra[1]).call().value(stor_4).gas(0xc3500);
    v2 = address(_extra[2]).call().value(stor_4).gas(0xc3500);
    v3 = address(_extra[3]).call().value(stor_4).gas(0xc3500);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xa46e3e9 == uint32(function_selector >> 224)) {
            puppets(uint256);
        } else if (0x2daeb49a == uint32(function_selector >> 224)) {
            fundPuppets();
        } else if (0x3ccfd60b == uint32(function_selector >> 224)) {
            withdraw();
        } else if (0x4962b964 == uint32(function_selector >> 224)) {
            getPuppetCount();
        } else if (0x54dfbca8 == uint32(function_selector >> 224)) {
            setExtra(uint256,address);
        } else if (0x6f2641e1 == uint32(function_selector >> 224)) {
            extra(uint256);
        } else if (0x8da5cb5b == uint32(function_selector >> 224)) {
            owner();
        } else if (0x8dd7d6d1 == uint32(function_selector >> 224)) {
            newPuppet();
        }
    }
    ();
}
