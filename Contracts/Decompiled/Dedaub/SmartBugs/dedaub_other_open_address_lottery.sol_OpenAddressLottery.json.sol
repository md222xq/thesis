// Decompiled by library.dedaub.com
// 2023.11.08 20:17 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _fallback; // STORAGE[0x0]
uint256 stor_1; // STORAGE[0x1]
uint256 stor_2; // STORAGE[0x2]
uint256 stor_3; // STORAGE[0x3]
mapping (uint256 => uint256) owner_4; // STORAGE[0x4]



function kill() public nonPayable { 
    require(bool(address(msg.sender) == address(address(_fallback))));
    selfdestruct(msg.sender);
}

function forceReseed() public nonPayable { 
    require(bool(address(msg.sender) == address(address(_fallback))));
    _fallback = msg.sender;
    stor_1 = block.blockhash(block.number - 1);
    stor_2 = block.difficulty * address(block.coinbase);
    stor_3 = msg.gas * 7;
    stor_1 = keccak256(_fallback, stor_1, stor_2, stor_3);
    stor_2 = block.number;
}

function participate() public payable { 
    0x166();
}

function 0x166() private { 
    if (msg.value >= 0x16345785d8a0000) {
        require(bool(bool(uint8(owner_4[address(address(msg.sender))])) == bool(0)));
        v0 = 0x321(msg.sender);
        if (v0 == stor_3) {
            owner_4[msg.sender] = 0x1 | bytes31(owner_4[address(address(msg.sender))]);
            v1 = v2 = msg.value * 7;
            if (v2 > (address(this)).balance) {
                v1 = v3 = (address(this)).balance;
            }
            v4 = msg.sender.call().value(v1).gas(!v1 * 2300);
            require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        if (block.number - stor_2 > 1000) {
            stor_1 = keccak256(address(block.coinbase), block.difficulty, block.gaslimit, block.timestamp);
            stor_2 = block.number;
        }
    }
    return ;
}

function 0x321(address varg0) private { 
    assert(bool(0 < 32));
    assert(bool(8));
    return ((byte(keccak256(varg0, stor_1), 0x0)) << 248 >> 248) % 8;
}

function () public payable { 
    v0 = v1 = msg.value >= 0x16345785d8a0000;
    if (!bool(msg.value < 0x16345785d8a0000)) {
        v0 = v2 = msg.sender != address(_fallback);
    }
    if (v0) {
        0x166();
    }
}

function luckyNumberOfAddress(address varg0) public nonPayable { 
    v0 = 0x321(varg0);
    return v0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x37354a68 == uint32(function_selector >> 224)) {
            luckyNumberOfAddress(address);
        } else if (0x41c0e1b5 == uint32(function_selector >> 224)) {
            kill();
        } else if (0x80ca7aec == uint32(function_selector >> 224)) {
            forceReseed();
        } else if (0xd11711a2 == uint32(function_selector >> 224)) {
            participate();
        }
    }
    ();
}
