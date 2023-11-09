// Decompiled by library.dedaub.com
// 2023.11.08 19:59 UTC
// Compiled using the solidity compiler version 0.4.7<=v<0.5.9


// Data structures and variables inferred from the use of storage instructions
uint256 _raffleId; // STORAGE[0x1]
uint256 _blockNumber; // STORAGE[0x2]
uint256 stor_3; // STORAGE[0x3]
mapping (uint256 => struct_334) _getRefund; // STORAGE[0x4]
uint256[] array_5; // STORAGE[0x5]
uint256 _kill; // STORAGE[0x0] bytes 0 to 19
uint256 _paused; // STORAGE[0x0] bytes 20 to 20

struct struct_334 { uint256 field0; uint256 field1; };

// Events
TicketPurchase(uint256, address, uint256);
TicketRefund(uint256, address, uint256);
RaffleResult(uint256, uint256, address, address, address, uint256, bytes32);

function paused() public nonPayable { 
    return _paused;
}

function getRefund() public nonPayable { 
    v0 = v1 = 0;
    v2 = v3 = 0;
    while (v2 < 50) {
        v4 = v5 = msg.sender == address(_getRefund[v2].field0);
        if (v5) {
            v4 = _raffleId == _getRefund[v2].field1;
        }
        if (v4) {
            assert(bool(50));
            v0 = v0 + 0xb3c46e91a28000;
            MEM[64] = MEM[64] + 64;
            _getRefund[v2].field0 = address(0x0) | bytes12(_getRefund[v2].field0);
            _getRefund[v2].field1 = 0;
            array_5 = array_5.length + 1;
            array_5[array_5.length + 1 - 1] = v2;
            emit TicketRefund(_raffleId, msg.sender, v2);
        }
        v2 += 1;
    }
    if (v0 > 0) {
        v6 = msg.sender.call().value(v0).gas(!v0 * 2300);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function raffleId() public nonPayable { 
    return _raffleId;
}

function togglePause() public nonPayable { 
    if (msg.sender == _kill) {
        _paused = !_paused;
    }
}

function buyTickets() public payable { 
    0x25b();
}

function totalTickets() public nonPayable { 
    return 50;
}

function fee() public nonPayable { 
    return 0x6a94d74f430000;
}

function prize() public nonPayable { 
    return 0x22b1c8c1227a0000;
}

function pricePerTicket() public nonPayable { 
    assert(bool(50));
    return 0xb3c46e91a28000;
}

function endRaffle() public nonPayable { 
    if (msg.sender == _kill) {
        _paused = 1;
        v0 = v1 = 0;
        while (v0 < 50) {
            if (_raffleId == _getRefund[v0].field1) {
                emit TicketRefund(_raffleId, address(_getRefund[v0].field0), v0);
                assert(bool(50));
                v2 = address(_getRefund[v0].field0).call().value(0xb3c46e91a28000).gas(!0xb3c46e91a28000 * 2300);
                require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
            v0 += 1;
        }
        emit RaffleResult(_raffleId, 50, address(0x0), address(0x0), address(0x0), 0, uint256(0));
        _raffleId += 1;
        stor_3 = 0;
        _blockNumber = block.number;
        array_5 = 0;
        if (array_5.length > 0) {
            v3 = v4 = keccak256(5) + 0;
            while (keccak256(5) + array_5.length > v3) {
                STORAGE[v3] = 0;
                v3 += 1;
            }
        }
    }
}

function 0x25b() private { 
    if (!_paused) {
        v0 = v1 = msg.value;
        while (!bool(50)) {
            v2 = v3 = v0 >= 0xb3c46e91a28000;
            if (!bool(v0 < 0xb3c46e91a28000)) {
                v2 = v4 = stor_3 < 50;
            }
            if (!v2) {
                if (stor_3 == 50) {
                    assert(bool(50));
                    assert(bool(50));
                    assert(bool(50));
                    v5 = keccak256(address(_getRefund[address(block.coinbase) % 50].field0), address(_getRefund[address(msg.sender) % 50].field0), block.difficulty) % 50;
                    emit RaffleResult(_raffleId, v5, address(_getRefund[v5].field0), address(_getRefund[address(block.coinbase) % 50].field0), address(_getRefund[address(msg.sender) % 50].field0), block.difficulty, uint256(keccak256(address(_getRefund[address(block.coinbase) % 50].field0), address(_getRefund[address(msg.sender) % 50].field0), block.difficulty)));
                    _raffleId += 1;
                    stor_3 = 0;
                    _blockNumber = block.number;
                    v6 = address(_getRefund[v5].field0).call().value(0x22b1c8c1227a0000);
                    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    v7 = _kill.call().value(0x6a94d74f430000);
                    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                }
                if (v0 > 0) {
                    v8 = msg.sender.call().value(v0).gas(!v0 * 2300);
                    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                }
            } else {
                if (array_5.length <= 0) {
                    v9 = v10 = stor_3;
                    stor_3 = 1 + v10;
                } else {
                    assert(bool(array_5.length - 1 < array_5.length));
                    v9 = v11 = array_5[array_5.length - 1];
                    array_5 = array_5.length - 1;
                    if (array_5.length > array_5.length - 1) {
                        v12 = v13 = keccak256(5) + (array_5.length - 1);
                        while (keccak256(5) + array_5.length > v12) {
                            STORAGE[v12] = 0;
                            v12 += 1;
                        }
                    }
                }
                MEM[64] = MEM[64] + 64;
                _getRefund[v9].field0 = msg.sender | bytes12(_getRefund[v9].field0);
                _getRefund[v9].field1 = _raffleId;
                emit TicketPurchase(_raffleId, msg.sender, v9);
                assert(bool(50));
                v0 = v0 - 0xb3c46e91a28000;
            }
        }
        throw();
    } else {
        v14 = msg.sender.call().value(msg.value).gas(!msg.value * 2300);
        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    return ;
}

function () public payable { 
    0x25b();
}

function kill() public nonPayable { 
    if (msg.sender != _kill) {
        // Unknown jump to Block 0xd9. Refer to 3-address code (TAC);
    } else {
        selfdestruct(_kill);
    }
}

function blockNumber() public nonPayable { 
    return _blockNumber;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x41c0e1b5 == uint32(function_selector >> 224)) {
            kill();
        } else if (0x57e871e7 == uint32(function_selector >> 224)) {
            blockNumber();
        } else if (0x5c975abb == uint32(function_selector >> 224)) {
            paused();
        } else if (0xb2d5ae44 == uint32(function_selector >> 224)) {
            getRefund();
        } else if (0xb375603c == uint32(function_selector >> 224)) {
            raffleId();
        } else if (0xc4ae3168 == uint32(function_selector >> 224)) {
            togglePause();
        } else if (0xc8199826 == uint32(function_selector >> 224)) {
            buyTickets();
        } else if (0xdd11247e == uint32(function_selector >> 224)) {
            totalTickets();
        } else if (0xddca3f43 == uint32(function_selector >> 224)) {
            fee();
        } else if (0xe3ac5d26 == uint32(function_selector >> 224)) {
            prize();
        } else if (0xe9874106 == uint32(function_selector >> 224)) {
            pricePerTicket();
        } else if (0xee095c0e == uint32(function_selector >> 224)) {
            endRaffle();
        }
    }
    ();
}
