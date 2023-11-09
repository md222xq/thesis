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
    
    bytes32 public stor_c;
    bytes32 public stor_h;
    bytes32 public stor_p;
    mapping(uint8 => uint8) public stor_map_q;
    mapping(address => bytes1) public stor_map_f;
    mapping(address => bytes1) public stor_map_k;
    mapping(address => bytes1) public stor_map_l;
    mapping(address => address) public stor_map_e;
    mapping(address => address) public stor_map_i;
    mapping(address => address) public stor_map_j;
    mapping(address => address) public stor_map_m;
    mapping(address => address) public stor_map_r;
    mapping(address => address) public stor_map_s;
    mapping(address => address) public stor_map_t;
    mapping(address => address) public stor_map_u;
    mapping(address => bytes32) public stor_map_a;
    mapping(address => bytes32) public stor_map_b;
    mapping(address => bytes32) public stor_map_d;
    mapping(address => bytes32) public stor_map_g;
    mapping(address => bytes32) public stor_map_n;
    mapping(address => bytes32) public stor_map_o;
    
    event Deal(bool arg0, uint8 arg1);
    event GameStatus(uint8 arg0, uint8 arg1, uint8 arg2, uint8 arg3);
    event Log(uint8 arg0);
    
    /// @custom:selector    0xb7d0628b
    /// @custom:name        getGameState
    function getGameState() public view returns (uint256) {
        address var_a = msg.sender;
        if (!(address(stor_map_a[var_a])) == 0) {
            var_a = msg.sender;
            if (!0x01 > 0x03) {
                if (!(stor_map_b[var_a]) > 0x03) {
                    if (!(stor_map_b[var_a]) == 0x01) {
                        return 0x01;
                        if (!0x03 > 0x03) {
                            if (!(stor_map_b[var_a]) > 0x03) {
                                if (!(stor_map_b[var_a]) == 0x03) {
                                    return 0x02;
                                    if (!0x02 > 0x03) {
                                        if (!(stor_map_b[var_a]) > 0x03) {
                                            require(!(address(stor_map_a[var_a])) == 0);
                                            return 0x03;
                                            return 0;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x553df021
    /// @custom:name        deal
    function deal() public payable {
        address var_a = msg.sender;
        require(address(stor_map_a[var_a]) == 0);
        require(!0 > 0x03);
        var_a = msg.sender;
        require(!(bytes1(stor_map_b[var_a])) > 0x03);
        require(!(bytes1(stor_map_b[var_a])) == 0);
        require(msg.value < stor_c);
        require(!msg.value < stor_c);
        var_d = var_d + 0x40;
        if (!0x01) {
            var_d = var_d + 0x60;
            if (!0x02) {
                if (0x34) {
                    emit Deal(0x01, bytes1(var_l));
                    if (0x34) {
                        if (0x34) {
                            var_d = var_d + 0xc0;
                            if (!0 > 0x03) {
                                var_a = msg.sender;
                                stor_map_a[var_a] = (address(var_t)) | (uint96(stor_map_a[var_a]));
                                stor_map_d[var_a] = var_u;
                                stor_map_e[var_a] = var_v;
                                var_a = 0x02 + keccak256(var_a);
                                if (!var_v) {
                                    if (!(keccak256(var_a) + ((0x1f + (stor_map_e[var_a])) / 0x20)) > keccak256(var_a)) {
                                        uint248 stor_map_f[var_a] = stor_map_f[var_a];
                                        if (!(keccak256(var_a) + ((0x1f + (stor_map_e[var_a])) / 0x20)) > (0x01 + keccak256(var_a))) {
                                        }
                                        stor_map_g[var_a] = var_w;
                                        var_a = 0x03 + keccak256(var_a);
                                        if (!var_w) {
                                        }
                                    }
                                    if (!((0x20 + (var_x)) + (0x20 * (var_y))) > (0x20 + (var_x))) {
                                        if (!0) {
                                            stor_map_f[var_a] = stor_map_f[var_a];
                                            if (!0x01) {
                                                if (!(keccak256(var_a) + ((0x1f + (stor_map_e[var_a])) / 0x20)) > (0 + keccak256(var_a))) {
                                                }
                                                uint248 stor_map_a[var_a] = stor_map_a[var_a];
                                                if (!0x02) {
                                                }
                                            }
                                            if (!(keccak256(var_a) + ((0x1f + (stor_map_e[var_a])) / 0x20)) > keccak256(var_a)) {
                                            }
                                        }
                                        stor_map_f[var_a] = (bytes1(var_z)) | (uint248(stor_map_f[var_a]));
                                        if (!((0x20 + (var_x)) + (0x20 * (var_y))) > (0x20 + (0x20 + (var_x)))) {
                                            stor_map_a[var_a] = (bytes1(var_aa) * 0x0100) | (uint248(stor_map_a[var_a]));
                                            if (!((0x20 + (var_x)) + (0x20 * (var_y))) > (0x20 + (0x20 + (0x20 + (var_x))))) {
                                            }
                                            if (!0x01) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (0x34) {
                }
            }
            if (!0x02) {
            }
        }
        if (!msg.value > stor_h) {
        }
        require(address(stor_map_a[var_a]) == 0);
        if (msg.value < stor_c) {
        }
    }
    
    /// @custom:selector    0x2ae3594a
    /// @custom:name        hit
    function hit() public {
        address var_a = msg.sender;
        require(address(stor_map_a[var_a]) == 0);
        require(!0 > 0x03);
        var_a = msg.sender;
        require(!(bytes1(stor_map_b[var_a])) > 0x03);
        require(bytes1(stor_map_b[var_a]) == 0);
        var_a = msg.sender;
        if (0x34) {
            stor_map_g[var_a] = (stor_map_g[var_a]) + 0x01;
            var_a = 0x03 + keccak256(var_a);
            stor_map_i[((stor_map_g[var_a] + 0x01) - 0x01) / 0x20] = (bytes1((keccak256(var_g)) % 0x34) * (0x0100 ** (((stor_map_g[var_a] + 0x01) - 0x01) % 0x20))) | (~(0xff * (0x0100 ** (((stor_map_g[var_a] + 0x01) - 0x01) % 0x20))) & (stor_map_i[((stor_map_g[var_a] + 0x01) - 0x01) / 0x20]));
            var_a = msg.sender;
            stor_map_b[var_a] = (bytes1((stor_map_b[var_a] / 0x0100) + 0x01) * 0x0100) | (uint248(stor_map_b[var_a]));
            var_a = msg.sender;
            if ((stor_map_g[var_a] - 0x01) < (stor_map_g[var_a])) {
                var_a = 0x03 + keccak256(var_a);
                bytes1 var_d = stor_map_j[(stor_map_g[var_a] - 0x01) / 0x20] / (0x0100 ** ((stor_map_g[var_a] - 0x01) % 0x20));
                emit Deal(0x01, var_d);
                var_a = msg.sender;
                var_h = var_h + 0xc0;
                address var_h = var_h + (0x20 + (0x20 * (stor_map_m[var_a])));
                if (!stor_map_m[var_a]) {
                    var_a = keccak256(var_a) + 0x02;
                    if ((0x20 + var_h) + (0x20 * (stor_map_m[var_a])) > (0x20 + (0x20 + var_h))) {
                        if ((0x20 + var_h) + (0x20 * (stor_map_m[var_a])) > (0x20 + (0x20 + (0x20 + var_h)))) {
                        }
                        var_h = var_h + (0x20 + (0x20 * (stor_map_n[var_a])));
                        if (!stor_map_n[var_a]) {
                            if (!(stor_map_o[var_a]) > 0x03) {
                                if (!(stor_map_o[var_a]) > 0x03) {
                                    bytes1 var_n = stor_map_o[var_a];
                                    if (!0 < (var_p)) {
                                        if (0 < (var_p)) {
                                            if (0x04) {
                                                if (!(var_q / 0x04) == 0x01) {
                                                    if (0) {
                                                        if (0x04) {
                                                        }
                                                        if (0x04) {
                                                            if ((var_q / 0x04) == 0) {
                                                                if ((var_q / 0x04) == 0x0b) {
                                                                    if (!(var_q / 0x04) == 0x0b) {
                                                                        if (0x04) {
                                                                        }
                                                                        if (!(var_q / 0x04) == 0x01) {
                                                                            if (!0x01) {
                                                                                if (0x04) {
                                                                                }
                                                                                if (0x04) {
                                                                                }
                                                                            }
                                                                            if (!(var_q / 0x04) == 0x01) {
                                                                                if (0x04) {
                                                                                }
                                                                                if (0x04) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    if (!(var_q / 0x04) == 0x0c) {
                                                                    }
                                                                }
                                                                if ((var_q / 0x04) == 0) {
                                                                    if (!(var_q / 0x04) == 0x0c) {
                                                                    }
                                                                    require(0x34);
                                                                    require((stor_map_g[var_a] - 0x01) < (stor_map_g[var_a]));
                                                                }
                                                                require(!stor_map_m[var_a]);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        require((0x20 + var_h) + (0x20 * (stor_map_m[var_a])) > (0x20 + (0x20 + var_h)));
                                        require(!stor_map_n[var_a]);
                                    }
                                    require(!(var_n) > 0x03);
                                }
                            }
                        }
                    }
                }
                require(!(var_n) > 0x03);
                emit GameStatus(0, 0, 0, 0);
                require(!0 < (var_p));
                require(!0 < (var_v));
                require(0 == (bytes1(stor_p)));
                require(!0 == (bytes1(stor_p)));
                require(0 == (bytes1(stor_p)));
                emit Log(0x01);
                var_a = msg.sender;
                require(!0 == (bytes1(stor_p)));
                stor_map_b[var_a] = 0x03 | (uint248(stor_map_b[var_a]));
            }
            require(!0 > (bytes1(stor_p)));
            require(0);
            require(!0 > (bytes1(stor_p)));
            var_a = msg.sender;
            require(!0 > (bytes1(stor_p)));
            stor_map_b[var_a] = 0x03 | (uint248(stor_map_b[var_a]));
        }
        require(!0 > (bytes1(stor_p)));
        require(!0 > (bytes1(stor_p)));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(var_w) * 0x02) * 0x08fc, value: (var_w) * 0x02 }(abi.encode());
        var_a = msg.sender;
        if (!0x01 > 0x03) {
            stor_map_b[var_a] = 0x01 | (uint248(stor_map_b[var_a]));
        }
        require(!(bytes1((stor_p) - 0)) == (bytes1((stor_p) - 0)));
        require(!(bytes1((stor_p) - 0)) > (bytes1((stor_p) - 0)));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(var_w) * 0x02) * 0x08fc, value: (var_w) * 0x02 }(abi.encode());
        var_a = msg.sender;
        if (!0x01 > 0x03) {
            stor_map_b[var_a] = 0x01 | (uint248(stor_map_b[var_a]));
        }
        var_a = msg.sender;
        if (!0x03 > 0x03) {
            stor_map_b[var_a] = 0x03 | (uint248(stor_map_b[var_a]));
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!var_w) * 0x08fc, value: var_w }(abi.encode());
        var_a = msg.sender;
        if (!0x02 > 0x03) {
            stor_map_b[var_a] = 0x02 | (uint248(stor_map_b[var_a]));
        }
        if (!((stor_p) - 0) == ((stor_p) - 0)) {
        }
        if (!0 > (stor_p)) {
        }
        require(!(var_v) == 0x02);
        require(0 < (var_v));
        require(0x04);
        require(bytes1(var_x / 0x04) == 0x0a);
        require(!(bytes1(var_x / 0x04)) == 0x0a);
        require(0x02);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(var_w * 0x05) / 0x02) * 0x08fc, value: (var_w * 0x05) / 0x02 }(abi.encode());
        var_a = msg.sender;
        if (!0x01 > 0x03) {
            stor_map_b[var_a] = 0x01 | (uint248(stor_map_b[var_a]));
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(var_w) * 0x02) * 0x08fc, value: (var_w) * 0x02 }(abi.encode());
        if (!0x01 > 0x03) {
        }
        if (0x01 < (var_v)) {
            if (0x04) {
                if (!(var_y / 0x04) == 0x0a) {
                }
            }
        }
        if (!(var_v) == 0x02) {
        }
        if (!0 == (stor_p)) {
        }
        if (0 == (stor_p)) {
            require(0 == (bytes1(stor_p)));
            var_a = msg.sender;
            require(!0 == (bytes1(stor_p)));
            stor_map_b[var_a] = 0x03 | (uint248(stor_map_b[var_a]));
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!var_w) * 0x08fc, value: var_w }(abi.encode());
        var_a = msg.sender;
        if (!0x02 > 0x03) {
            stor_map_b[var_a] = 0x02 | (uint248(stor_map_b[var_a]));
        }
        if (!0 == (stor_p)) {
        }
        if (!0 == (stor_p)) {
        }
        if (0 < (var_v)) {
            if (0x04) {
                if (!(var_x / 0x04) == 0x01) {
                }
            }
        }
        var_a = keccak256(var_a) + 0x03;
        if ((0x20 + var_h) + (0x20 * (stor_map_n[var_a])) > (0x20 + (0x20 + var_h))) {
            if ((0x20 + var_h) + (0x20 * (stor_map_n[var_a])) > (0x20 + (0x20 + (0x20 + var_h)))) {
            }
            if (!(stor_map_o[var_a]) > 0x03) {
            }
        }
        if (!stor_map_n[var_a]) {
        }
        if (!(address(stor_map_a[var_a])) == 0) {
            var_a = msg.sender;
            require(!(address(stor_map_a[var_a])) == 0);
        }
    }
    
    /// @custom:selector    0x7b61b201
    /// @custom:name        getHouseCard
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function getHouseCard(uint8 arg0) public view returns (bool) {
        address var_a = msg.sender;
        require(address(stor_map_a[var_a]) == 0);
        require(!0 > 0x03);
        var_a = msg.sender;
        require(!(bytes1(stor_map_b[var_a])) > 0x03);
        require(bytes1(stor_map_b[var_a]) == 0);
        require(bytes1(arg0) < 0);
        require(!(bytes1(arg0)) < 0);
        var_a = msg.sender;
        if (arg0 < (stor_map_e[var_a])) {
            bytes1 var_c = stor_map_q[arg0 / 0x20] / (0x0100 ** (arg0 % 0x20));
            return var_c;
        }
        var_a = msg.sender;
        if (!(arg0) > (stor_map_e[var_a])) {
        }
        if (!(address(stor_map_a[var_a])) == 0) {
            require(!(address(stor_map_a[var_a])) == 0);
        }
    }
    
    /// @custom:selector    0xd02d1382
    /// @custom:name        getPlayerCard
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function getPlayerCard(uint8 arg0) public view returns (bool) {
        address var_a = msg.sender;
        require(address(stor_map_a[var_a]) == 0);
        require(!0 > 0x03);
        var_a = msg.sender;
        require(!(bytes1(stor_map_b[var_a])) > 0x03);
        require(bytes1(stor_map_b[var_a]) == 0);
        require(bytes1(arg0) < 0);
        require(!(bytes1(arg0)) < 0);
        var_a = msg.sender;
        if (arg0 < (stor_map_g[var_a])) {
            bytes1 var_c = stor_map_q[arg0 / 0x20] / (0x0100 ** (arg0 % 0x20));
            return var_c;
        }
        var_a = msg.sender;
        if (!(arg0) > (stor_map_g[var_a])) {
        }
        if (!(address(stor_map_a[var_a])) == 0) {
            require(!(address(stor_map_a[var_a])) == 0);
        }
    }
    
    /// @custom:selector    0xd572fd99
    /// @custom:name        getPlayerCardsNumber
    function getPlayerCardsNumber() public view returns (uint256) {
        address var_a = msg.sender;
        require(address(stor_map_a[var_a]) == 0);
        require(!0 > 0x03);
        var_a = msg.sender;
        require(!(bytes1(stor_map_b[var_a])) > 0x03);
        require(bytes1(stor_map_b[var_a]) == 0);
        var_a = msg.sender;
        return stor_map_g[var_a];
        require(!(address(stor_map_a[var_a])) == 0);
        var_a = msg.sender;
        return stor_map_g[var_a];
    }
    
    /// @custom:selector    0x7f601a50
    /// @custom:name        getHouseCardsNumber
    function getHouseCardsNumber() public view returns (uint256) {
        address var_a = msg.sender;
        require(address(stor_map_a[var_a]) == 0);
        require(!0 > 0x03);
        var_a = msg.sender;
        require(!(bytes1(stor_map_b[var_a])) > 0x03);
        require(bytes1(stor_map_b[var_a]) == 0);
        var_a = msg.sender;
        return stor_map_e[var_a];
        require(!(address(stor_map_a[var_a])) == 0);
        var_a = msg.sender;
        return stor_map_e[var_a];
    }
    
    /// @custom:selector    0x2e5b2168
    /// @custom:name        maxBet
    function maxBet() public view returns (uint256) {
        return stor_h;
    }
    
    /// @custom:selector    0xc2897b10
    /// @custom:name        stand
    function stand() public {
        address var_a = msg.sender;
        require(address(stor_map_a[var_a]) == 0);
        require(!0 > 0x03);
        var_a = msg.sender;
        require(!(bytes1(stor_map_b[var_a])) > 0x03);
        require(bytes1(stor_map_b[var_a]) == 0);
        var_a = msg.sender;
        address var_c = var_c + (0x20 + (0x20 * (stor_map_e[var_a])));
        if (!stor_map_e[var_a]) {
            var_a = 0x02 + keccak256(var_a);
            if ((0x20 + var_c) + (0x20 * (stor_map_e[var_a])) > (0x20 + (0x20 + var_c))) {
                if ((0x20 + var_c) + (0x20 * (stor_map_e[var_a])) > (0x20 + (0x20 + (0x20 + var_c)))) {
                }
                if (0x04) {
                    if (!(var_g / 0x04) == 0x01) {
                        if (0) {
                            if (0x04) {
                                if ((var_g / 0x04) == 0) {
                                    if ((var_g / 0x04) == 0x0b) {
                                        if (!(var_g / 0x04) == 0x0b) {
                                            if (0x04) {
                                                if ((var_g / 0x04) == 0) {
                                                    if ((var_g / 0x04) == 0x0b) {
                                                        if (!(var_g / 0x04) == 0x0b) {
                                                            if (!(var_g / 0x04) == 0x01) {
                                                                if (!0) {
                                                                }
                                                                if (!(var_g / 0x04) == 0x01) {
                                                                }
                                                            }
                                                        }
                                                        if (!(var_g / 0x04) == 0x0c) {
                                                        }
                                                    }
                                                    if ((var_g / 0x04) == 0) {
                                                        if (!(var_g / 0x04) == 0x0c) {
                                                        }
                                                        if (!(var_g / 0x04) == 0) {
                                                            if (!(var_g / 0x04) == 0x01) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            if (!(var_g / 0x04) == 0x01) {
                                            }
                                        }
                                        if (!(var_g / 0x04) == 0x0c) {
                                        }
                                    }
                                    if ((var_g / 0x04) == 0) {
                                    }
                                }
                            }
                            if (0x04) {
                            }
                        }
                        if (!(var_g / 0x04) == 0x01) {
                            if (0x04) {
                            }
                            if (0x04) {
                            }
                        }
                    }
                }
                if (!0 < 0x11) {
                    var_a = msg.sender;
                    var_c = var_c + 0xc0;
                    var_c = var_c + (0x20 + (0x20 * (stor_map_m[var_a])));
                    if (!stor_map_m[var_a]) {
                        var_a = keccak256(var_a) + 0x02;
                        if ((0x20 + var_c) + (0x20 * (stor_map_m[var_a])) > (0x20 + (0x20 + var_c))) {
                            if ((0x20 + var_c) + (0x20 * (stor_map_m[var_a])) > (0x20 + (0x20 + (0x20 + var_c)))) {
                            }
                            var_c = var_c + (0x20 + (0x20 * (stor_map_n[var_a])));
                            if (!stor_map_n[var_a]) {
                                var_a = keccak256(var_a) + 0x03;
                                if ((0x20 + var_c) + (0x20 * (stor_map_n[var_a])) > (0x20 + (0x20 + var_c))) {
                                    if ((0x20 + var_c) + (0x20 * (stor_map_n[var_a])) > (0x20 + (0x20 + (0x20 + var_c)))) {
                                    }
                                    if (!(stor_map_o[var_a]) > 0x03) {
                                        if (!(stor_map_o[var_a]) > 0x03) {
                                            if (!0 < (var_p)) {
                                            }
                                        }
                                    }
                                }
                                if (!(stor_map_o[var_a]) > 0x03) {
                                }
                            }
                        }
                        var_c = var_c + (0x20 + (0x20 * (stor_map_n[var_a])));
                        if (!stor_map_n[var_a]) {
                        }
                    }
                    var_a = msg.sender;
                    if (0x34) {
                        var_a = msg.sender;
                        stor_map_e[var_a] = (stor_map_e[var_a]) + 0x01;
                        var_a = 0x02 + keccak256(var_a);
                        var_a = msg.sender;
                        stor_map_b[var_a] = (bytes1((stor_map_b[var_a] / 0x0100) + 0x01) * 0x0100) | (uint248(stor_map_b[var_a]));
                        if (0x04) {
                            if ((((keccak256(var_s)) % 0x34) / 0x04) == 0) {
                                if ((((keccak256(var_s)) % 0x34) / 0x04) == 0) {
                                    if (!(((keccak256(var_s)) % 0x34) / 0x04) == 0) {
                                        emit Deal(0, bytes1((keccak256(var_s)) % 0x34));
                                        if (!0x0a < 0x11) {
                                        }
                                        if (!(((keccak256(var_s)) % 0x34) / 0x04) == 0x01) {
                                            if (!0x01) {
                                                if (!(0 + (((keccak256(var_s)) % 0x34) / 0x04)) < 0x11) {
                                                }
                                                if (!0x0b < 0x11) {
                                                }
                                            }
                                            if (!(((keccak256(var_s)) % 0x34) / 0x04) == 0x01) {
                                                if (!0x0b < 0x11) {
                                                }
                                                if (!(0 + (((keccak256(var_s)) % 0x34) / 0x04)) < 0x11) {
                                                }
                                            }
                                        }
                                    }
                                    if (!(((keccak256(var_s)) % 0x34) / 0x04) == 0x0c) {
                                    }
                                }
                                if ((((keccak256(var_s)) % 0x34) / 0x04) == 0x0b) {
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!(address(stor_map_a[var_a])) == 0) {
            var_a = msg.sender;
            require(!(address(stor_map_a[var_a])) == 0);
        }
    }
    
    /// @custom:selector    0x79131a19
    /// @custom:name        games
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function games(address arg0) public view returns (bytes memory) {
        address var_b = arg0;
        address var_c = stor_map_s[var_b];
        if (!(stor_map_u[var_b]) > 0x03) {
            bytes1 var_e = stor_map_u[var_b];
            bytes1 var_f = stor_map_u[var_b] / 0x0100;
            return abi.encodePacked(var_c, stor_map_t[var_b], var_e, var_f);
        }
    }
    
    /// @custom:selector    0x9619367d
    /// @custom:name        minBet
    function minBet() public view returns (uint256) {
        return stor_c;
    }
}