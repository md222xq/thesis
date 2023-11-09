// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @title            Decompiled Contract
/// @author           Jonathan Becker <jonathan@jbecker.dev>
/// @custom:version   heimdall-rs v0.6.4
///
/// @notice           This contract was decompiled using the heimdall-rs decompiler.
///                     It was generated directly by tracing the EVM opcodes from this contract.
///                     As a result, it may not compile or even be valid solidity code.
///                     Despite this, it should be obvious what each function does. Overall
///                     logic should have been preserved throughout decompiling.
///
/// @custom:github    You can find the open-source decompiler here:
///                       https://heimdall.rs

contract DecompiledContract {
    
    bytes32 public stor_a;
    bytes32 public stor_b;
    bytes32 public stor_d;
    bytes32 public stor_e;
    bytes32 public stor_f;
    mapping(bytes32 => address) public stor_map_g;
    mapping(bytes32 => bytes32) public stor_map_c;
    mapping(bytes32 => bytes32) public stor_map_h;
    mapping(bytes32 => bytes32) public stor_map_i;
    mapping(bytes32 => bytes32) public stor_map_j;
    mapping(bytes32 => bytes32) public stor_map_k;
    mapping(bytes32 => bytes32) public stor_map_l;
    mapping(bytes32 => bytes32) public stor_map_m;
    
    event RaffleResult(uint256 arg0, uint256 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes32 arg6);
    event TicketPurchase(uint256 arg0, address arg1, uint256 arg2);
    event TicketRefund(uint256 arg0, address arg1, uint256 arg2);
    
    /// @custom:selector    0xc4ae3168
    /// @custom:name        togglePause
    function togglePause() public {
        if (!(address(msg.sender)) == (address(stor_a))) {
            stor_a = ((!bytes1(stor_a / 0x010000000000000000000000000000000000000000)) * 0x010000000000000000000000000000000000000000) | (uint248(stor_a));
        }
    }
    
    /// @custom:selector    0xe9874106
    /// @custom:name        pricePerTicket
    function pricePerTicket() public pure returns (uint256) {
        if (0x32) {
            return 0xb3c46e91a28000;
        }
    }
    
    /// @custom:selector    0x41c0e1b5
    /// @custom:name        kill
    function kill() public {
        if (!(address(msg.sender)) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0xc8199826
    /// @custom:name        buyTickets
    function buyTickets() public payable {
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !msg.value * 0x08fc, value: msg.value }(abi.encode());
        require(0x32);
        require(msg.value < 0xb3c46e91a28000);
        require(!stor_b < 0x32);
        require(!stor_b == 0x32);
        require(0x32);
        require(0x32);
        var_a = (address(msg.sender)) % 0x32;
        var_c = 0x01000000000000000000000000 * (address(stor_map_c[var_a]));
        require(0x32);
        var_a = (keccak256(var_f)) % 0x32;
        address var_h = stor_map_c[var_a];
        emit RaffleResult(stor_d, (keccak256(var_f)) % 0x32, var_h, var_h, var_h, block.difficulty, uint256(keccak256(var_f)));
        stor_d = 0x01 + stor_d;
        stor_b = 0;
        stor_e = block.number;
        (bool success, bytes memory ret0) = var_h.call{ gas: !0x22b1c8c1227a0000 * 0x08fc, value: 0x22b1c8c1227a0000 }(abi.encode());
        (bool success, bytes memory ret0) = address(stor_a).call{ gas: !0x6a94d74f430000 * 0x08fc, value: 0x6a94d74f430000 }(abi.encode());
        require(!msg.value > 0);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !msg.value * 0x08fc, value: msg.value }(abi.encode());
        if (!msg.value > 0) {
        }
        if (!stor_f > 0) {
            if ((stor_f - 0x01) < stor_f) {
                stor_f = stor_f - 0x01;
                if (!stor_f > (stor_f)) {
                    var_a = 0x05;
                    if (!(keccak256(var_a) + stor_f) > (keccak256(var_a) + (stor_f))) {
                        var_m = var_m + 0x40;
                        var_a = stor_map_g[var_a];
                        stor_map_c[var_a] = (address(var_n)) | (uint96(stor_map_c[var_a]));
                        stor_map_h[var_a] = var_o;
                        emit TicketPurchase(stor_d, address(msg.sender), stor_map_g[var_a]);
                        if (0x32) {
                            if (0x32) {
                                if ((msg.value - 0xb3c46e91a28000) < 0xb3c46e91a28000) {
                                    if ((msg.value - 0xb3c46e91a28000) < 0xb3c46e91a28000) {
                                    }
                                    if (!stor_b < 0x32) {
                                    }
                                }
                            }
                        }
                        stor_map_g[var_a] = 0;
                        if (!(keccak256(var_a) + stor_f) > (0x01 + (keccak256(var_a) + (stor_f)))) {
                            stor_map_i[keccak256(var_a) + (stor_f)] = 0;
                            if (!(keccak256(var_a) + stor_f) > (0x01 + (0x01 + (keccak256(var_a) + (stor_f))))) {
                            }
                            var_m = var_m + 0x40;
                            var_a = stor_map_g[var_a];
                            stor_map_c[var_a] = (address(var_n)) | (uint96(stor_map_c[var_a]));
                            stor_map_h[var_a] = var_o;
                            if (0x32) {
                            }
                        }
                    }
                    var_m = var_m + 0x40;
                    var_a = stor_map_g[var_a];
                    stor_map_c[var_a] = (address(var_n)) | (uint96(stor_map_c[var_a]));
                    stor_map_h[var_a] = var_o;
                    if (0x32) {
                    }
                }
            }
            stor_b = 0x01 + stor_b;
            var_a = stor_b;
            stor_map_c[var_a] = (address(var_n)) | (uint96(stor_map_c[var_a]));
            stor_map_h[var_a] = var_o;
            if (0x32) {
                if (0x32) {
                    if ((msg.value - 0xb3c46e91a28000) < 0xb3c46e91a28000) {
                        if ((msg.value - 0xb3c46e91a28000) < 0xb3c46e91a28000) {
                        }
                        if (!stor_b < 0x32) {
                        }
                    }
                }
            }
        }
        if (msg.value < 0xb3c46e91a28000) {
            if (!stor_f > 0) {
            }
            if (!stor_b == 0x32) {
            }
        }
    }
    
    /// @custom:selector    0xddca3f43
    /// @custom:name        fee
    function fee() public pure returns (uint256) {
        return 0x6a94d74f430000;
    }
    
    /// @custom:selector    0xb375603c
    /// @custom:name        raffleId
    function raffleId() public view returns (uint256) {
        return stor_d;
    }
    
    /// @custom:selector    0xb2d5ae44
    /// @custom:name        getRefund
    function getRefund() public {
        require(!0 < 0x32);
        require(!0 > 0);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !0 * 0x08fc, value: 0 }(abi.encode());
        var_a = 0;
        if (!(address(msg.sender)) == (address(stor_map_c[var_a]))) {
            var_a = 0;
            if (!stor_d == (stor_map_h[var_a])) {
                if (!0x01 < 0x32) {
                }
                if (0x32) {
                    var_a = 0;
                    stor_map_c[var_a] = (address(var_f)) | (uint96(stor_map_c[var_a]));
                    stor_map_h[var_a] = var_g;
                    stor_f = stor_f + 0x01;
                    stor_map_j[var_a] = 0;
                    emit TicketRefund(stor_d, address(msg.sender), 0);
                    if (!0x01 < 0x32) {
                    }
                }
            }
            if (!(address(msg.sender)) == (address(stor_map_c[var_a]))) {
                if (0x32) {
                }
                if (!0x01 < 0x32) {
                }
            }
        }
    }
    
    /// @custom:selector    0xdd11247e
    /// @custom:name        totalTickets
    function totalTickets() public pure returns (uint256) {
        return 0x32;
    }
    
    /// @custom:selector    0xe3ac5d26
    /// @custom:name        prize
    function prize() public pure returns (uint256) {
        return 0x22b1c8c1227a0000;
    }
    
    /// @custom:selector    0xee095c0e
    /// @custom:name        endRaffle
    function endRaffle() public {
        if (!(address(msg.sender)) == (address(stor_a))) {
            stor_a = (0x010000000000000000000000000000000000000000) | (uint248(stor_a));
            if (!0 < 0x32) {
                emit RaffleResult(stor_d, 0x32, 0, 0, 0, 0, 0);
                stor_d = 0x01 + stor_d;
                stor_b = 0;
                stor_e = block.number;
                stor_f = 0;
                if (!stor_f > 0) {
                    var_h = 0x05;
                    if (!(keccak256(var_h) + stor_f) > (keccak256(var_h) + 0)) {
                        stor_map_k[var_h] = 0;
                        require(!(address(msg.sender)) == (address(stor_a)));
                    }
                }
            }
            var_h = 0;
            require(!0 < 0x32);
            require(!stor_d == (stor_map_l[var_h]));
        }
        var_h = 0;
        address var_b = stor_map_m[var_h];
        emit TicketRefund(stor_d, var_b, 0);
        require(0x32);
        (bool success, bytes memory ret0) = var_b.call{ gas: !0xb3c46e91a28000 * 0x08fc, value: 0xb3c46e91a28000 }(abi.encode());
        if (!0x01 < 0x32) {
        }
    }
    
    /// @custom:selector    0x57e871e7
    /// @custom:name        blockNumber
    function blockNumber() public view returns (uint256) {
        return stor_e;
    }
    
    /// @custom:selector    0x5c975abb
    /// @custom:name        paused
    function paused() public view returns (bool) {
        var_a = !(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
}