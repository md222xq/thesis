// Decompiled by library.dedaub.com
// 2023.11.08 21:47 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _target; // STORAGE[0x0]
mapping (uint256 => uint256) _master; // STORAGE[0x1]



function master(uint256 varg0) public nonPayable { 
    return address(_master[varg0]);
}

function withdraw() public nonPayable { 
    require(bool(address(msg.sender) == address(address(_master[0]))));
    v0 = address(_master[0]).call().value((address(this)).balance).gas(!(address(this)).balance * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function target(uint256 varg0) public nonPayable { 
    return address(_target[varg0]);
}

function () public payable { 
    if (!bool(address(msg.sender) == address(address(_target[0])))) {
        v0 = address(_target[0]).call().value(msg.value).gas(0x927c0);
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x35898c89 == uint32(function_selector >> 224)) {
            master(uint256);
        } else if (0x3ccfd60b == uint32(function_selector >> 224)) {
            withdraw();
        } else if (0x9811c7c1 == uint32(function_selector >> 224)) {
            target(uint256);
        }
    }
    ();
}
