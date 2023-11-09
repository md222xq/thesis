// Decompiled by library.dedaub.com
// 2023.11.08 19:33 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _owners; // STORAGE[0x1]
uint256 _root; // STORAGE[0x0] bytes 0 to 19



function newOwner(address varg0) public nonPayable { 
    require(bool(address(address(varg0)) != 0));
    _owners[varg0] = msg.sender | bytes12(_owners[address(address(address(varg0)))]);
    return bool(1);
}

function deleteOwner(address varg0) public nonPayable { 
    require(bool(address(address(_owners[address(address(msg.sender))])) != 0));
    v0 = v1 = address(_owners[address(address(address(varg0)))]) == msg.sender;
    if (address(_owners[address(address(address(varg0)))]) != msg.sender) {
        v0 = v2 = address(_owners[address(address(address(varg0)))]) != 0;
        if (!bool(address(address(_owners[address(address(address(varg0)))])) == 0)) {
            v0 = v3 = msg.sender == _root;
        }
    }
    require(bool(v0));
    _owners[varg0] = 0x0 | bytes12(_owners[address(address(address(varg0)))]);
    return bool(1);
}

function root() public nonPayable { 
    return _root;
}

function () public payable { 
}

function owners(address varg0) public nonPayable { 
    return address(_owners[address(varg0)]);
}

function withdrawAll() public nonPayable { 
    require(bool(address(address(_owners[address(address(msg.sender))])) != 0));
    v0 = msg.sender.call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x22914a7 == uint32(function_selector >> 224)) {
            owners(address);
        } else if (0x853828b6 == uint32(function_selector >> 224)) {
            withdrawAll();
        } else if (0x85952454 == uint32(function_selector >> 224)) {
            newOwner(address);
        } else if (0xcd5c4c70 == uint32(function_selector >> 224)) {
            deleteOwner(address);
        } else if (0xebf0c717 == uint32(function_selector >> 224)) {
            root();
        }
    }
    ();
}
