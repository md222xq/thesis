// Decompiled by library.dedaub.com
// 2023.11.08 20:11 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256[] _refundAll; // STORAGE[0x0]
mapping (uint256 => uint256) _refunds; // STORAGE[0x1]



function () public payable { 
    revert();
}

function refundAll() public nonPayable { 
    v0 = v1 = 0;
    while (v0 < _refundAll.length) {
        assert(bool(v0 < _refundAll.length));
        assert(bool(v0 < _refundAll.length));
        v2 = address(_refundAll[v0]).call().value(_refunds[address(_refundAll[v0])]).gas(!_refunds[address(_refundAll[v0])] * 2300);
        require(bool(v2));
        v0 += 1;
    }
}

function refunds(address varg0) public nonPayable { 
    return _refunds[varg0];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x38e771ab == uint32(function_selector >> 224)) {
            refundAll();
        } else if (0xbc3da535 == uint32(function_selector >> 224)) {
            refunds(address);
        }
    }
    ();
}
