// Decompiled by library.dedaub.com
// 2023.10.28 13:23 UTC
// Compiled using the solidity compiler version 0.8.20
// https://library.dedaub.com/decompile?md5=6296df6dce55580972ec0b2b0d43cf6b




function () public payable { 
    revert();
}

function guess(uint256 varg0) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(varg0 == varg0);
    require(block.number - 1 <= block.number, Panic(17)); // arithmetic overflow or underflow
    if (!(varg0 - keccak256(block.blockhash(block.number - 1), block.timestamp))) {
        v0, /* uint256 */ v1 = msg.sender.call().value(0xde0b6b3a7640000).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v2 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v2.data, 0, RETURNDATASIZE());
        }
        require(v0, Error('Failed to send Ether'));
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x9189fec1 == function_selector >> 224) {
            guess(uint256);
        }
    }
    ();
}
