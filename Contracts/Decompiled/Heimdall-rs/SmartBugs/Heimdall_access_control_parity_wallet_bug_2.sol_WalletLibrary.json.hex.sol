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
    
    bytes32 public stor_v;
    bytes32 public stor_w;
    bytes32 public stor_x;
    bytes32 public stor_y;
    bytes32 public stor_z;
    uint256 public stor_d;
    uint256 public stor_f;
    uint256 public stor_k;
    bytes32 public stor_ad;
    uint256 public stor_ab;
    mapping(bytes32 => bytes32) public stor_map_l;
    mapping(bytes32 => bytes32) public stor_map_u;
    mapping(uint256 => bytes32) public stor_map_b;
    mapping(uint256 => bytes32) public stor_map_e;
    mapping(uint256 => bytes32) public stor_map_g;
    mapping(uint256 => bytes32) public stor_map_h;
    mapping(uint256 => bytes32) public stor_map_i;
    mapping(uint256 => bytes32) public stor_map_j;
    mapping(uint256 => bytes32) public stor_map_o;
    mapping(uint256 => bytes32) public stor_map_p;
    mapping(uint256 => bytes32) public stor_map_q;
    mapping(uint256 => bytes32) public stor_map_r;
    mapping(uint256 => bytes32) public stor_map_s;
    mapping(uint256 => bytes32) public stor_map_t;
    mapping(uint256 => uint256) public stor_map_a;
    mapping(uint256 => uint256) public stor_map_c;
    mapping(uint256 => uint256) public stor_map_m;
    mapping(uint256 => uint256) public stor_map_n;
    mapping(bytes32 => bytes32) public stor_map_ac;
    mapping(uint256 => address) public stor_map_aa;
    
    event Confirmation(address arg0, bytes32 arg1);
    event ConfirmationNeeded(bytes32 arg0, address arg1, uint256 arg2, address arg3, bytes arg4);
    event MultiTransact(address arg0, bytes32 arg1, uint256 arg2, address arg3, bytes arg4, address arg5);
    event SingleTransact(address arg0, uint256 arg1, address arg2, bytes arg3, address arg4);
    event RequirementChanged(uint256 arg0);
    event OwnerAdded(address arg0);
    event OwnerRemoved(address arg0);
    event OwnerChanged(address arg0, address arg1);
    event Revoke(address arg0, bytes32 arg1);
    
    /// @custom:selector    0xb20d30a9
    /// @custom:name        setDailyLimit
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setDailyLimit(uint256 arg0) public {
        var_a = msg.data[0:4];
        address var_b = msg.sender;
        if (!stor_map_a[var_b] == 0) {
            uint256 var_b = keccak256(var_a);
            if (!(stor_map_b[var_b]) == 0) {
                if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                    if (!0) {
                        stor_d = arg0;
                    }
                    emit Confirmation(address(msg.sender), uint256(keccak256(var_a)));
                    if (stor_map_b[var_b] > 0x01) {
                        stor_map_b[var_b] = (stor_map_b[var_b]) - 0x01;
                        stor_map_c[var_b] = (stor_map_c[var_b]) | (0x02 ** stor_map_a[var_b]);
                        if (!0) {
                        }
                        var_b = keccak256(var_a);
                        if (stor_map_e[var_b] < stor_f) {
                            stor_map_g[var_b] = 0;
                            stor_map_h[var_b] = 0;
                            stor_map_i[var_b] = 0;
                            stor_map_j[var_b] = 0;
                            if (!0x01) {
                                stor_d = arg0;
                            }
                        }
                    }
                }
                stor_map_b[var_b] = stor_k;
                stor_map_c[var_b] = 0;
                stor_f = 0x01 + stor_f;
                if (!stor_f > (stor_f)) {
                    var_b = 0x0107;
                    if (!(keccak256(var_b) + stor_f) > (keccak256(var_b) + (stor_f))) {
                        stor_map_l[var_b] = 0;
                        if (!(keccak256(var_b) + stor_f) > (0x01 + (keccak256(var_b) + (stor_f)))) {
                        }
                        stor_map_e[var_b] = stor_f;
                        if (stor_map_e[var_b] < stor_f) {
                            uint256 stor_map_g[var_b] = keccak256(var_a);
                            if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                            }
                        }
                    }
                    stor_map_e[var_b] = stor_f;
                    if (stor_map_e[var_b] < stor_f) {
                    }
                }
            }
            if (!0) {
            }
        }
    }
    
    /// @custom:selector    0xc2cf7326
    /// @custom:name        hasConfirmed
    /// @param              arg0 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function hasConfirmed(bytes32 arg0, address arg1) public view returns (bool) {
        address var_a = arg1;
        if (!stor_map_m[var_a] == 0) {
            address var_c = !(stor_map_n[var_a] & (0x02 ** stor_map_m[var_a]) == 0);
            return var_c;
            return 0;
        }
    }
    
    /// @custom:selector    0xb61d27f6
    /// @custom:name        execute
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function execute(address arg0, uint256 arg1, bytes memory arg2) public returns (uint256) {
        address var_a = msg.sender;
        require(!stor_map_m[var_a] > 0);
        require(!(arg2) == 0);
        require(arg2 == 0);
        require(!stor_k == 0x01);
        require(!(address(arg0)) == 0);
        (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode());
        emit SingleTransact(address(msg.sender), arg1, address(arg0), (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_i))))) - var_i, 0, (arg2));
        return 0;
        bytes memory var_i = var_i + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        return 0;
        var_c = msg.data[0:4];
        uint256 var_a = keccak256(var_c);
        if (!(address(stor_map_o[var_a])) == 0) {
            require(!(address(stor_map_o[var_a])) == 0);
            require(!(address(stor_map_o[var_a])) == 0);
            var_a = msg.sender;
            require(!(address(stor_map_o[var_a])) == 0);
            var_a = keccak256(var_c);
            require(!stor_map_m[var_a] == 0);
            require(!(stor_map_o[var_a]) == 0);
            require(!(stor_map_n[var_a] & (0x02 ** stor_map_m[var_a])) == 0);
            var_a = keccak256(var_c);
            require(!0);
            require(!(address(stor_map_o[var_a])) == 0);
            require(!(address(stor_map_o[var_a])) == 0);
            var_a = keccak256(var_c);
            require(address(stor_map_o[var_a]) == 0);
            var_a = keccak256(var_c);
            require(!(address(stor_map_o[var_a])) == 0);
            require(!(((0x0100 * (!bytes1(stor_map_p[var_a]))) - 0x01) & (stor_map_p[var_a])) / 0x02);
            var_a = 0x02 + keccak256(var_a);
            require(0x1f < (((0x0100 * (!bytes1(stor_map_p[var_a]))) - 0x01) & (stor_map_p[var_a]) / 0x02));
            require((var_i + (((0x0100 * (!bytes1(stor_map_p[var_a]))) - 0x01) & (stor_map_p[var_a]) / 0x02)) > (0x20 + var_i));
        }
        (bool success, bytes memory ret0) = address(stor_map_o[var_a]).call{ value: stor_map_n[var_a] }(abi.encode());
        var_a = keccak256(var_c);
        var_h = stor_map_o[var_a];
        var_m = (((0x0100 * (!bytes1(stor_map_p[var_a]))) - 0x01) & (stor_map_p[var_a])) / 0x02;
        if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a])) / 0x02) {
            if (0x1f < (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02)) {
                var_a = 0x02 + keccak256(var_a);
                if ((0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_i))))))) + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) > (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_i))))))))) {
                    if ((0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_i))))))) + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) > (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_i)))))))))) {
                    }
                    emit MultiTransact(address(msg.sender), uint256(keccak256(var_c)), stor_map_n[var_a], var_h, (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_i)))))) - var_i, 0, var_m);
                    var_a = keccak256(var_c);
                    uint96 stor_map_q[var_a] = stor_map_q[var_a];
                    stor_map_r[var_a] = 0;
                    stor_map_s[var_a] = 0;
                    if (0x1f < (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) {
                        var_a = keccak256(var_a) + 0x02;
                        if (!(keccak256(var_a) + ((0x1f + (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) / 0x20)) > keccak256(var_a)) {
                            stor_map_m[var_a] = 0;
                            if (!(keccak256(var_a) + ((0x1f + (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) / 0x20)) > (0x01 + keccak256(var_a))) {
                            }
                            if (0x01) {
                                var_h = arg0;
                                emit ConfirmationNeeded(uint256(keccak256(var_c)), address(msg.sender), arg1, address(arg0), (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_i))))) - var_i, (arg2));
                                return uint256(keccak256(var_c));
                                return uint256(keccak256(var_c));
                            }
                        }
                        if (0x01) {
                        }
                    }
                }
                var_o = (stor_map_p[var_a] / 0x0100) * 0x0100;
                var_a = keccak256(var_c);
                stor_map_q[var_a] = stor_map_q[var_a];
                stor_map_r[var_a] = 0;
                stor_map_s[var_a] = 0;
                if (0x1f < (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) {
                }
            }
            var_a = keccak256(var_c);
            stor_map_q[var_a] = stor_map_q[var_a];
            stor_map_r[var_a] = 0;
            stor_map_s[var_a] = 0;
            if (0x1f < (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) {
            }
        }
        var_d = var_o;
        (bool success, bytes memory ret0) = var_h.call{ value: stor_map_n[var_a] }(abi.encode(var_d));
        (bool success, bytes memory ret0) = var_h.call{ value: stor_map_n[var_a] }(abi.encode());
        var_a = keccak256(var_c);
        var_i = var_i + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_p[var_a]))) - 0x01) & (stor_map_p[var_a]) / 0x02)) / 0x20) * 0x20));
        if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a])) / 0x02) {
            if (0x1f < (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02)) {
                var_a = 0x02 + keccak256(var_a);
                if ((0x20 + var_i) + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) > (0x20 + (0x20 + var_i))) {
                    if ((0x20 + var_i) + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) > (0x20 + (0x20 + (0x20 + var_i)))) {
                    }
                    var_a = keccak256(var_c);
                    var_m = 0;
                    if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a])) / 0x02) {
                        if (0x1f < (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02)) {
                            var_a = 0x02 + keccak256(var_a);
                            if ((0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_i))))))) + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) > (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_i))))))))) {
                            }
                            var_p = (stor_map_p[var_a] / 0x0100) * 0x0100;
                            var_a = keccak256(var_c);
                            stor_map_q[var_a] = stor_map_q[var_a];
                            stor_map_r[var_a] = 0;
                            stor_map_s[var_a] = 0;
                            if (0x1f < (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) {
                            }
                        }
                        var_a = keccak256(var_c);
                        stor_map_q[var_a] = stor_map_q[var_a];
                        stor_map_r[var_a] = 0;
                        stor_map_s[var_a] = 0;
                        if (0x1f < (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) {
                        }
                    }
                }
                var_a = keccak256(var_c);
                var_m = 0;
                if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a])) / 0x02) {
                }
            }
            var_a = keccak256(var_c);
            var_m = 0;
            if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a])) / 0x02) {
            }
        }
        if (0) {
            return uint256(keccak256(var_c));
            var_g = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_i))))) - var_i;
            return uint256(keccak256(var_c));
        }
        var_a = keccak256(var_c);
        if ((((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) == 0) {
        }
        var_a = keccak256(var_c);
        if (!(stor_map_n[var_a]) == 0) {
        }
        if (0) {
        }
        emit Confirmation(address(msg.sender), uint256(keccak256(var_c)));
        if (stor_map_o[var_a] > 0x01) {
            stor_map_o[var_a] = (stor_map_o[var_a]) - 0x01;
            stor_map_n[var_a] = (stor_map_n[var_a]) | (0x02 ** stor_map_m[var_a]);
            if (!0) {
            }
            var_a = keccak256(var_c);
            if (stor_map_p[var_a] < stor_f) {
                stor_map_t[var_a] = 0;
                stor_map_q[var_a] = 0;
                stor_map_r[var_a] = 0;
                stor_map_s[var_a] = 0;
                if (!0x01) {
                    if (0) {
                    }
                    if (!(var_g) == 0) {
                    }
                }
            }
        }
        stor_map_o[var_a] = stor_k;
        stor_map_n[var_a] = 0;
        stor_f = 0x01 + stor_f;
        if (!stor_f > (stor_f)) {
            var_a = 0x0107;
            if (!(keccak256(var_a) + stor_f) > (keccak256(var_a) + (stor_f))) {
                stor_map_u[var_a] = 0;
                if (!(keccak256(var_a) + stor_f) > (0x01 + (keccak256(var_a) + (stor_f)))) {
                }
                stor_map_p[var_a] = stor_f;
                if (stor_map_p[var_a] < stor_f) {
                    uint256 stor_map_t[var_a] = keccak256(var_c);
                    if (!(stor_map_n[var_a] & (0x02 ** stor_map_m[var_a])) == 0) {
                    }
                }
            }
            stor_map_p[var_a] = stor_f;
            if (stor_map_p[var_a] < stor_f) {
            }
        }
        if (!0) {
        }
        var_a = keccak256(var_c);
        stor_map_o[var_a] = (address(arg0)) | (uint96(stor_map_o[var_a]));
        stor_map_n[var_a] = arg1;
        var_a = keccak256(var_c);
        if (0x1f < (arg2)) {
            stor_map_p[var_a] = 0x01 + (arg2 + (arg2));
            if (!arg2) {
                if (!((0x20 + (0x04 + arg2)) + (arg2)) > (0x20 + (0x04 + arg2))) {
                    stor_map_m[var_a] = (0x20 + (arg2));
                    if (!((0x20 + (0x04 + arg2)) + (arg2)) > (0x20 + (0x20 + (0x04 + arg2)))) {
                    }
                    if (!(keccak256(var_a) + ((0x1f + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02)) / 0x20)) > keccak256(var_a)) {
                        stor_map_m[var_a] = 0;
                        if (!(keccak256(var_a) + ((0x1f + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02)) / 0x20)) > (0x01 + keccak256(var_a))) {
                        }
                        var_a = msg.sender;
                        if (!stor_map_m[var_a] == 0) {
                        }
                    }
                }
                if (!(keccak256(var_a) + ((0x1f + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02)) / 0x20)) > keccak256(var_a)) {
                }
            }
            stor_map_p[var_a] = (arg2 + (arg2)) | (uint248(0x20 + (arg2)));
            if (!(keccak256(var_a) + ((0x1f + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02)) / 0x20)) > keccak256(var_a)) {
            }
        }
        var_a = keccak256(var_c);
        if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) == 0) {
        }
        var_a = keccak256(var_c);
        if (!(stor_map_n[var_a]) == 0) {
        }
        if (!(arg2) == 0) {
            var_c = msg.data[0:4];
            if (!(var_g) == 0) {
            }
            if (!(address(arg0)) == 0) {
            }
        }
        var_a = msg.sender;
        if (!stor_map_m[var_a] > 0) {
            if (0x015180) {
                if (!(block.timestamp / 0x015180) > stor_v) {
                    if ((stor_w + arg1) < stor_w) {
                        if ((stor_w + arg1) < stor_w) {
                            if (0) {
                                if (!0) {
                                }
                                if (!stor_k == 0x01) {
                                }
                            }
                            stor_w = stor_w + arg1;
                            if (0x01) {
                            }
                        }
                        if ((stor_w) > stor_d) {
                        }
                    }
                    stor_w = 0;
                    if (0x015180) {
                        stor_v = block.timestamp / 0x015180;
                        if ((stor_w + arg1) < stor_w) {
                        }
                    }
                }
            }
            if (0) {
            }
        }
        return 0;
    }
    
    /// @custom:selector    0xba51a6df
    /// @custom:name        changeRequirement
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function changeRequirement(uint256 arg0) public {
        var_a = msg.data[0:4];
        address var_b = msg.sender;
        if (!stor_map_a[var_b] == 0) {
            uint256 var_b = keccak256(var_a);
            if (!(stor_map_b[var_b]) == 0) {
                if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                    if (!0) {
                        if (!arg0 > stor_x) {
                            stor_k = arg0;
                            if (!0 < stor_f) {
                                if (0 < stor_f) {
                                    var_b = 0x0107;
                                    var_b = stor_map_h[var_b];
                                    uint96 stor_map_h[var_b] = stor_map_h[var_b];
                                    stor_map_i[var_b] = 0;
                                    stor_map_j[var_b] = 0;
                                    if (0x1f < (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) {
                                        var_b = keccak256(var_b) + 0x02;
                                        if (!(keccak256(var_b) + ((0x1f + (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) / 0x20)) > keccak256(var_b)) {
                                            stor_map_a[var_b] = 0;
                                            if (!(keccak256(var_b) + ((0x1f + (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) / 0x20)) > (0x01 + keccak256(var_b))) {
                                            }
                                            if (0 < stor_f) {
                                                var_b = 0x0107;
                                                if (uint256(stor_map_h[var_b]) == 0) {
                                                    if (0 < stor_f) {
                                                        var_b = 0x0107;
                                                        stor_map_h[var_b] = 0;
                                                        stor_map_i[var_b] = 0;
                                                        stor_map_j[var_b] = 0;
                                                        if (!0x01 < stor_f) {
                                                        }
                                                    }
                                                    if (!0x01 < stor_f) {
                                                    }
                                                }
                                            }
                                        }
                                        if (0 < stor_f) {
                                        }
                                    }
                                }
                                stor_f = 0;
                                var_b = 0x0107;
                                if (!(keccak256(var_b) + stor_f) > keccak256(var_b)) {
                                    stor_map_a[var_b] = 0;
                                    if (!(keccak256(var_b) + stor_f) > (0x01 + keccak256(var_b))) {
                                    }
                                    emit RequirementChanged(arg0);
                                }
                            }
                        }
                    }
                    emit Confirmation(address(msg.sender), uint256(keccak256(var_a)));
                    if (stor_map_b[var_b] > 0x01) {
                        stor_map_b[var_b] = (stor_map_b[var_b]) - 0x01;
                        stor_map_c[var_b] = (stor_map_c[var_b]) | (0x02 ** stor_map_a[var_b]);
                        if (!0) {
                        }
                        var_b = keccak256(var_a);
                        if (stor_map_e[var_b] < stor_f) {
                            stor_map_g[var_b] = 0;
                            stor_map_h[var_b] = 0;
                            stor_map_i[var_b] = 0;
                            stor_map_j[var_b] = 0;
                            if (!0x01) {
                                if (!arg0 > stor_x) {
                                }
                            }
                        }
                    }
                }
                stor_map_b[var_b] = stor_k;
                stor_map_c[var_b] = 0;
                stor_f = 0x01 + stor_f;
                if (!stor_f > (stor_f)) {
                    var_b = 0x0107;
                    if (!(keccak256(var_b) + stor_f) > (keccak256(var_b) + (stor_f))) {
                        stor_map_l[var_b] = 0;
                        if (!(keccak256(var_b) + stor_f) > (0x01 + (keccak256(var_b) + (stor_f)))) {
                        }
                        stor_map_e[var_b] = stor_f;
                        if (stor_map_e[var_b] < stor_f) {
                            uint256 stor_map_g[var_b] = keccak256(var_a);
                            if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                            }
                        }
                    }
                    stor_map_e[var_b] = stor_f;
                    if (stor_map_e[var_b] < stor_f) {
                    }
                }
            }
            if (!0) {
            }
        }
    }
    
    /// @custom:selector    0x2f54bf6e
    /// @custom:name        isOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function isOwner(address arg0) public view returns (bool) {
        address var_a = arg0;
        address var_c = !(!stor_map_m[var_a] > 0);
        return var_c;
    }
    
    /// @custom:selector    0xcbf0b0c0
    /// @custom:name        kill
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function kill(address arg0) public {
        var_a = msg.data[0:4];
        address var_b = msg.sender;
        if (!stor_map_a[var_b] == 0) {
            uint256 var_b = keccak256(var_a);
            if (!(stor_map_b[var_b]) == 0) {
                if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                    if (!0) {
                    }
                    emit Confirmation(address(msg.sender), uint256(keccak256(var_a)));
                    if (stor_map_b[var_b] > 0x01) {
                        stor_map_b[var_b] = (stor_map_b[var_b]) - 0x01;
                        stor_map_c[var_b] = (stor_map_c[var_b]) | (0x02 ** stor_map_a[var_b]);
                        if (!0) {
                        }
                        var_b = keccak256(var_a);
                        if (stor_map_e[var_b] < stor_f) {
                            stor_map_g[var_b] = 0;
                            stor_map_h[var_b] = 0;
                            stor_map_i[var_b] = 0;
                            stor_map_j[var_b] = 0;
                            if (!0x01) {
                            }
                        }
                    }
                }
                stor_map_b[var_b] = stor_k;
                stor_map_c[var_b] = 0;
                stor_f = 0x01 + stor_f;
                if (!stor_f > (stor_f)) {
                    var_b = 0x0107;
                    if (!(keccak256(var_b) + stor_f) > (keccak256(var_b) + (stor_f))) {
                        stor_map_l[var_b] = 0;
                        if (!(keccak256(var_b) + stor_f) > (0x01 + (keccak256(var_b) + (stor_f)))) {
                        }
                        stor_map_e[var_b] = stor_f;
                        if (stor_map_e[var_b] < stor_f) {
                            uint256 stor_map_g[var_b] = keccak256(var_a);
                            if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                            }
                        }
                    }
                    stor_map_e[var_b] = stor_f;
                    if (stor_map_e[var_b] < stor_f) {
                    }
                }
            }
            if (!0) {
            }
        }
    }
    
    /// @custom:selector    0x52375093
    /// @custom:name        m_lastDay
    function m_lastDay() public view returns (uint256) {
        return stor_v;
    }
    
    /// @custom:selector    0x5c52c2f5
    /// @custom:name        resetSpentToday
    function resetSpentToday() public {
        var_a = msg.data[0:4];
        address var_b = msg.sender;
        if (!stor_map_a[var_b] == 0) {
            uint256 var_b = keccak256(var_a);
            if (!(stor_map_b[var_b]) == 0) {
                if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                    if (!0) {
                        stor_w = 0;
                    }
                    emit Confirmation(address(msg.sender), uint256(keccak256(var_a)));
                    if (stor_map_b[var_b] > 0x01) {
                        stor_map_b[var_b] = (stor_map_b[var_b]) - 0x01;
                        stor_map_c[var_b] = (stor_map_c[var_b]) | (0x02 ** stor_map_a[var_b]);
                        if (!0) {
                        }
                        var_b = keccak256(var_a);
                        if (stor_map_e[var_b] < stor_f) {
                            stor_map_g[var_b] = 0;
                            stor_map_h[var_b] = 0;
                            stor_map_i[var_b] = 0;
                            stor_map_j[var_b] = 0;
                            if (!0x01) {
                                stor_w = 0;
                            }
                        }
                    }
                }
                stor_map_b[var_b] = stor_k;
                stor_map_c[var_b] = 0;
                stor_f = 0x01 + stor_f;
                if (!stor_f > (stor_f)) {
                    var_b = 0x0107;
                    if (!(keccak256(var_b) + stor_f) > (keccak256(var_b) + (stor_f))) {
                        stor_map_l[var_b] = 0;
                        if (!(keccak256(var_b) + stor_f) > (0x01 + (keccak256(var_b) + (stor_f)))) {
                        }
                        stor_map_e[var_b] = stor_f;
                        if (stor_map_e[var_b] < stor_f) {
                            uint256 stor_map_g[var_b] = keccak256(var_a);
                            if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                            }
                        }
                    }
                    stor_map_e[var_b] = stor_f;
                    if (stor_map_e[var_b] < stor_f) {
                    }
                }
            }
            if (!0) {
            }
        }
    }
    
    /// @custom:selector    0x7065cb48
    /// @custom:name        addOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function addOwner(address arg0) public {
        var_a = msg.data[0:4];
        address var_b = msg.sender;
        if (!stor_map_a[var_b] == 0) {
            uint256 var_b = keccak256(var_a);
            if (!(stor_map_b[var_b]) == 0) {
                if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                    if (!0) {
                        var_b = arg0;
                        if (!stor_map_a[var_b] > 0) {
                            if (!0 < stor_f) {
                                if (0 < stor_f) {
                                    var_b = 0x0107;
                                    var_b = stor_map_h[var_b];
                                    uint96 stor_map_h[var_b] = stor_map_h[var_b];
                                    stor_map_i[var_b] = 0;
                                    stor_map_j[var_b] = 0;
                                    if (0x1f < (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) {
                                        var_b = keccak256(var_b) + 0x02;
                                        if (!(keccak256(var_b) + ((0x1f + (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) / 0x20)) > keccak256(var_b)) {
                                            stor_map_a[var_b] = 0;
                                            if (!(keccak256(var_b) + ((0x1f + (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) / 0x20)) > (0x01 + keccak256(var_b))) {
                                            }
                                            if (0 < stor_f) {
                                                var_b = 0x0107;
                                                if (uint256(stor_map_h[var_b]) == 0) {
                                                    if (0 < stor_f) {
                                                        var_b = 0x0107;
                                                        stor_map_h[var_b] = 0;
                                                        stor_map_i[var_b] = 0;
                                                        stor_map_j[var_b] = 0;
                                                        if (!0x01 < stor_f) {
                                                        }
                                                    }
                                                    if (!0x01 < stor_f) {
                                                    }
                                                }
                                            }
                                        }
                                        if (0 < stor_f) {
                                        }
                                    }
                                }
                                stor_f = 0;
                                var_b = 0x0107;
                                if (!(keccak256(var_b) + stor_f) > keccak256(var_b)) {
                                    stor_map_a[var_b] = 0;
                                    if (!(keccak256(var_b) + stor_f) > (0x01 + keccak256(var_b))) {
                                    }
                                    if (stor_x < 0xfa) {
                                        if (!0x01 < stor_x) {
                                            if (!0x01 < stor_x) {
                                                if (0x01 < 0x0100) {
                                                    if (stor_y == 0) {
                                                        if (!0x02 < stor_x) {
                                                        }
                                                        if (!stor_x > 0x01) {
                                                            if (stor_x < 0x0100) {
                                                                if (!(stor_z) == 0) {
                                                                    if (!0x01 < stor_x) {
                                                                        if (stor_x < 0x0100) {
                                                                            if (stor_z == 0) {
                                                                                if (0x01 < 0x0100) {
                                                                                    if (!stor_y == 0) {
                                                                                        if (!0x01 < stor_x) {
                                                                                        }
                                                                                        if (stor_x < 0x0100) {
                                                                                            if (0x01 < 0x0100) {
                                                                                                stor_y = stor_z;
                                                                                                if (0x01 < 0x0100) {
                                                                                                    stor_map_a[var_b] = 0x01;
                                                                                                    if (stor_x < 0x0100) {
                                                                                                        stor_z = 0;
                                                                                                        if (!0x01 < stor_x) {
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                if (stor_z == 0) {
                                                                                    if (stor_x < 0x0100) {
                                                                                    }
                                                                                    if (!0x01 < stor_x) {
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                        if (!0x01 < stor_x) {
                                                                        }
                                                                    }
                                                                    stor_x = stor_x - 0x01;
                                                                    if (!stor_x > 0x01) {
                                                                        if (!stor_x > 0x01) {
                                                                        }
                                                                        if (stor_x < 0x0100) {
                                                                            if (!(stor_z) == 0) {
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            if (!stor_x > 0x01) {
                                                                stor_x = stor_x - 0x01;
                                                                if (!stor_x > 0x01) {
                                                                }
                                                                if (!0x01 < stor_x) {
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                if (!0x01 < stor_x) {
                                                }
                                            }
                                            if (stor_x < 0xfa) {
                                                stor_x = 0x01 + stor_x;
                                                if (stor_x < 0x0100) {
                                                    address stor_z = arg0;
                                                    stor_map_a[var_b] = stor_x;
                                                    emit OwnerAdded(address(arg0));
                                                }
                                            }
                                        }
                                        if (stor_x < 0xfa) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                    emit Confirmation(address(msg.sender), uint256(keccak256(var_a)));
                    if (stor_map_b[var_b] > 0x01) {
                        stor_map_b[var_b] = (stor_map_b[var_b]) - 0x01;
                        stor_map_c[var_b] = (stor_map_c[var_b]) | (0x02 ** stor_map_a[var_b]);
                        if (!0) {
                        }
                        var_b = keccak256(var_a);
                        if (stor_map_e[var_b] < stor_f) {
                            stor_map_g[var_b] = 0;
                            stor_map_h[var_b] = 0;
                            stor_map_i[var_b] = 0;
                            stor_map_j[var_b] = 0;
                            if (!0x01) {
                                var_b = arg0;
                                if (!stor_map_a[var_b] > 0) {
                                }
                            }
                        }
                    }
                }
                stor_map_b[var_b] = stor_k;
                stor_map_c[var_b] = 0;
                stor_f = 0x01 + stor_f;
                if (!stor_f > (stor_f)) {
                    var_b = 0x0107;
                    if (!(keccak256(var_b) + stor_f) > (keccak256(var_b) + (stor_f))) {
                        stor_map_l[var_b] = 0;
                        if (!(keccak256(var_b) + stor_f) > (0x01 + (keccak256(var_b) + (stor_f)))) {
                        }
                        stor_map_e[var_b] = stor_f;
                        if (stor_map_e[var_b] < stor_f) {
                            uint256 stor_map_g[var_b] = keccak256(var_a);
                            if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                            }
                        }
                    }
                    stor_map_e[var_b] = stor_f;
                    if (stor_map_e[var_b] < stor_f) {
                    }
                }
            }
            if (!0) {
            }
        }
    }
    
    /// @custom:selector    0x173825d9
    /// @custom:name        removeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function removeOwner(address arg0) public {
        var_a = msg.data[0:4];
        address var_b = msg.sender;
        if (!stor_map_a[var_b] == 0) {
            uint256 var_b = keccak256(var_a);
            if (!(stor_map_b[var_b]) == 0) {
                if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                    if (!0) {
                        var_b = arg0;
                        if (!stor_map_a[var_b] == 0) {
                            if (!stor_k > (stor_x - 0x01)) {
                                if (stor_map_a[var_b] < 0x0100) {
                                    stor_map_aa[var_b] = 0;
                                    stor_map_a[var_b] = 0;
                                    if (!0 < stor_f) {
                                        if (0 < stor_f) {
                                            var_b = 0x0107;
                                            var_b = stor_map_h[var_b];
                                            uint96 stor_map_h[var_b] = stor_map_h[var_b];
                                            stor_map_i[var_b] = 0;
                                            stor_map_j[var_b] = 0;
                                            if (0x1f < (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) {
                                                var_b = keccak256(var_b) + 0x02;
                                                if (!(keccak256(var_b) + ((0x1f + (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) / 0x20)) > keccak256(var_b)) {
                                                    stor_map_a[var_b] = 0;
                                                    if (!(keccak256(var_b) + ((0x1f + (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) / 0x20)) > (0x01 + keccak256(var_b))) {
                                                    }
                                                    if (0 < stor_f) {
                                                        var_b = 0x0107;
                                                        if (uint256(stor_map_h[var_b]) == 0) {
                                                            if (0 < stor_f) {
                                                                var_b = 0x0107;
                                                                stor_map_h[var_b] = 0;
                                                                stor_map_i[var_b] = 0;
                                                                stor_map_j[var_b] = 0;
                                                                if (!0x01 < stor_f) {
                                                                }
                                                            }
                                                            if (!0x01 < stor_f) {
                                                            }
                                                        }
                                                    }
                                                }
                                                if (0 < stor_f) {
                                                }
                                            }
                                        }
                                        stor_f = 0;
                                        var_b = 0x0107;
                                        if (!(keccak256(var_b) + stor_f) > keccak256(var_b)) {
                                            stor_map_a[var_b] = 0;
                                            if (!(keccak256(var_b) + stor_f) > (0x01 + keccak256(var_b))) {
                                            }
                                            if (!0x01 < stor_x) {
                                                if (!0x01 < stor_x) {
                                                    if (0x01 < 0x0100) {
                                                        if (stor_y == 0) {
                                                            if (!0x02 < stor_x) {
                                                            }
                                                            if (!stor_x > 0x01) {
                                                                if (stor_x < 0x0100) {
                                                                    if (!(stor_z) == 0) {
                                                                        if (!0x01 < stor_x) {
                                                                            if (stor_x < 0x0100) {
                                                                                if (stor_z == 0) {
                                                                                    if (0x01 < 0x0100) {
                                                                                        if (!stor_y == 0) {
                                                                                            if (!0x01 < stor_x) {
                                                                                            }
                                                                                            if (stor_x < 0x0100) {
                                                                                                if (0x01 < 0x0100) {
                                                                                                    stor_y = stor_z;
                                                                                                    if (0x01 < 0x0100) {
                                                                                                        stor_map_a[var_b] = 0x01;
                                                                                                        if (stor_x < 0x0100) {
                                                                                                            stor_z = 0;
                                                                                                            if (!0x01 < stor_x) {
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    if (stor_z == 0) {
                                                                                        if (stor_x < 0x0100) {
                                                                                        }
                                                                                        if (!0x01 < stor_x) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                            if (!0x01 < stor_x) {
                                                                            }
                                                                        }
                                                                        stor_x = stor_x - 0x01;
                                                                        if (!stor_x > 0x01) {
                                                                            if (!stor_x > 0x01) {
                                                                            }
                                                                            if (stor_x < 0x0100) {
                                                                                if (!(stor_z) == 0) {
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                if (!stor_x > 0x01) {
                                                                    stor_x = stor_x - 0x01;
                                                                    if (!stor_x > 0x01) {
                                                                    }
                                                                    if (!0x01 < stor_x) {
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                    if (!0x01 < stor_x) {
                                                    }
                                                }
                                                emit OwnerRemoved(address(arg0));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    emit Confirmation(address(msg.sender), uint256(keccak256(var_a)));
                    if (stor_map_b[var_b] > 0x01) {
                        stor_map_b[var_b] = (stor_map_b[var_b]) - 0x01;
                        stor_map_c[var_b] = (stor_map_c[var_b]) | (0x02 ** stor_map_a[var_b]);
                        if (!0) {
                        }
                        var_b = keccak256(var_a);
                        if (stor_map_e[var_b] < stor_f) {
                            stor_map_g[var_b] = 0;
                            stor_map_h[var_b] = 0;
                            stor_map_i[var_b] = 0;
                            stor_map_j[var_b] = 0;
                            if (!0x01) {
                                var_b = arg0;
                                if (!stor_map_a[var_b] == 0) {
                                }
                            }
                        }
                    }
                }
                stor_map_b[var_b] = stor_k;
                stor_map_c[var_b] = 0;
                stor_f = 0x01 + stor_f;
                if (!stor_f > (stor_f)) {
                    var_b = 0x0107;
                    if (!(keccak256(var_b) + stor_f) > (keccak256(var_b) + (stor_f))) {
                        stor_map_l[var_b] = 0;
                        if (!(keccak256(var_b) + stor_f) > (0x01 + (keccak256(var_b) + (stor_f)))) {
                        }
                        stor_map_e[var_b] = stor_f;
                        if (stor_map_e[var_b] < stor_f) {
                            uint256 stor_map_g[var_b] = keccak256(var_a);
                            if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                            }
                        }
                    }
                    stor_map_e[var_b] = stor_f;
                    if (stor_map_e[var_b] < stor_f) {
                    }
                }
            }
            if (!0) {
            }
        }
    }
    
    /// @custom:selector    0x4123cb6b
    /// @custom:name        m_numOwners
    function m_numOwners() public view returns (uint256) {
        return stor_x;
    }
    
    /// @custom:selector    0xf00d4b5d
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0, address arg1) public {
        var_a = msg.data[0:4];
        address var_b = msg.sender;
        if (!stor_map_a[var_b] == 0) {
            uint256 var_b = keccak256(var_a);
            if (!(stor_map_b[var_b]) == 0) {
                if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                    if (!0) {
                        var_b = arg1;
                        if (!stor_map_a[var_b] > 0) {
                            var_b = arg0;
                            if (!stor_map_a[var_b] == 0) {
                                if (!0 < stor_f) {
                                    if (0 < stor_f) {
                                        var_b = 0x0107;
                                        var_b = stor_map_h[var_b];
                                        uint96 stor_map_h[var_b] = stor_map_h[var_b];
                                        stor_map_i[var_b] = 0;
                                        stor_map_j[var_b] = 0;
                                        if (0x1f < (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) {
                                            var_b = keccak256(var_b) + 0x02;
                                            if (!(keccak256(var_b) + ((0x1f + (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) / 0x20)) > keccak256(var_b)) {
                                                stor_map_a[var_b] = 0;
                                                if (!(keccak256(var_b) + ((0x1f + (((0x0100 * (!stor_map_j[var_b])) - 0x01) & (stor_map_j[var_b]) / 0x02)) / 0x20)) > (0x01 + keccak256(var_b))) {
                                                }
                                                if (0 < stor_f) {
                                                    var_b = 0x0107;
                                                    if (uint256(stor_map_h[var_b]) == 0) {
                                                        if (0 < stor_f) {
                                                            var_b = 0x0107;
                                                            stor_map_h[var_b] = 0;
                                                            stor_map_i[var_b] = 0;
                                                            stor_map_j[var_b] = 0;
                                                            if (!0x01 < stor_f) {
                                                            }
                                                        }
                                                        if (!0x01 < stor_f) {
                                                        }
                                                    }
                                                }
                                            }
                                            if (0 < stor_f) {
                                            }
                                        }
                                    }
                                    stor_f = 0;
                                    var_b = 0x0107;
                                    if (!(keccak256(var_b) + stor_f) > keccak256(var_b)) {
                                        stor_map_a[var_b] = 0;
                                        if (!(keccak256(var_b) + stor_f) > (0x01 + keccak256(var_b))) {
                                        }
                                        if (stor_map_a[var_b] < 0x0100) {
                                            address stor_map_aa[var_b] = arg1;
                                            stor_map_a[var_b] = 0;
                                            var_b = arg1;
                                            stor_map_a[var_b] = stor_map_a[var_b];
                                            emit OwnerChanged(address(arg0), address(arg1));
                                        }
                                    }
                                }
                            }
                        }
                    }
                    emit Confirmation(address(msg.sender), uint256(keccak256(var_a)));
                    if (stor_map_b[var_b] > 0x01) {
                        stor_map_b[var_b] = (stor_map_b[var_b]) - 0x01;
                        stor_map_c[var_b] = (stor_map_c[var_b]) | (0x02 ** stor_map_a[var_b]);
                        if (!0) {
                        }
                        var_b = keccak256(var_a);
                        if (stor_map_e[var_b] < stor_f) {
                            stor_map_g[var_b] = 0;
                            stor_map_h[var_b] = 0;
                            stor_map_i[var_b] = 0;
                            stor_map_j[var_b] = 0;
                            if (!0x01) {
                                var_b = arg1;
                                if (!stor_map_a[var_b] > 0) {
                                }
                            }
                        }
                    }
                }
                stor_map_b[var_b] = stor_k;
                stor_map_c[var_b] = 0;
                stor_f = 0x01 + stor_f;
                if (!stor_f > (stor_f)) {
                    var_b = 0x0107;
                    if (!(keccak256(var_b) + stor_f) > (keccak256(var_b) + (stor_f))) {
                        stor_map_l[var_b] = 0;
                        if (!(keccak256(var_b) + stor_f) > (0x01 + (keccak256(var_b) + (stor_f)))) {
                        }
                        stor_map_e[var_b] = stor_f;
                        if (stor_map_e[var_b] < stor_f) {
                            uint256 stor_map_g[var_b] = keccak256(var_a);
                            if (!(stor_map_c[var_b] & (0x02 ** stor_map_a[var_b])) == 0) {
                            }
                        }
                    }
                    stor_map_e[var_b] = stor_f;
                    if (stor_map_e[var_b] < stor_f) {
                    }
                }
            }
            if (!0) {
            }
        }
    }
    
    /// @custom:selector    0xc41a360a
    /// @custom:name        getOwner
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getOwner(uint256 arg0) public view returns (address) {
        if ((arg0 + 0x01) < 0x0100) {
            return address(stor_ab);
        }
    }
    
    /// @custom:selector    0xc57c5f60
    /// @custom:name        initMultiowned
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function initMultiowned(address[] memory arg0, uint256 arg1) public {
        address[] memory var_a = var_a + (0x20 + (0x20 * (arg0)));
        require(!stor_x > 0);
        stor_x = var_a.length + 0x01;
        if (0x01 < 0x0100) {
            address stor_y = msg.sender;
            stor_map_ac[var_d] = 0x01;
            if (0x02 < 0x0100) {
                address stor_ad = var_f;
                stor_map_ac[var_d] = 0x02;
            }
            stor_k = arg1;
        }
    }
    
    /// @custom:selector    0x746c9171
    /// @custom:name        m_required
    function m_required() public view returns (uint256) {
        return stor_k;
    }
    
    /// @custom:selector    0xe46dcfeb
    /// @custom:name        initWallet
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function initWallet(address[] memory arg0, uint256 arg1, uint256 arg2) public {
        address[] memory var_a = var_a + (0x20 + (0x20 * (arg0)));
        require(!stor_x > 0);
        require(!stor_x > 0);
        stor_d = arg2;
        require(0x015180);
        stor_v = block.timestamp / 0x015180;
        require(!stor_x > 0);
        stor_x = var_a.length + 0x01;
        if (0x01 < 0x0100) {
            address stor_y = msg.sender;
            stor_map_ac[var_d] = 0x01;
            if (0x02 < 0x0100) {
                address stor_ad = var_f;
                stor_map_ac[var_d] = 0x02;
            }
            stor_k = arg1;
        }
    }
    
    /// @custom:selector    0x797af627
    /// @custom:name        confirm
    /// @param              arg0 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    function confirm(bytes32 arg0) public returns (bool) {
        address var_a = msg.sender;
        if (!stor_map_m[var_a] == 0) {
            uint256 var_a = arg0;
            require(!stor_map_m[var_a] == 0);
            require(!(stor_map_o[var_a]) == 0);
            require(!(stor_map_n[var_a] & (0x02 ** stor_map_m[var_a])) == 0);
            var_a = arg0;
            require(!0);
            require(!(address(stor_map_o[var_a])) == 0);
            require(!(address(stor_map_o[var_a])) == 0);
            var_a = arg0;
            require(address(stor_map_o[var_a]) == 0);
            var_a = arg0;
            require(!(address(stor_map_o[var_a])) == 0);
            require(!(((0x0100 * (!bytes1(stor_map_p[var_a]))) - 0x01) & (stor_map_p[var_a])) / 0x02);
            var_a = 0x02 + keccak256(var_a);
            require(0x1f < (((0x0100 * (!bytes1(stor_map_p[var_a]))) - 0x01) & (stor_map_p[var_a]) / 0x02));
            require((var_e + (((0x0100 * (!bytes1(stor_map_p[var_a]))) - 0x01) & (stor_map_p[var_a]) / 0x02)) > (0x20 + var_e));
        }
        (bool success, bytes memory ret0) = address(stor_map_o[var_a]).call{ value: stor_map_n[var_a] }(abi.encode());
        var_a = arg0;
        address var_g = stor_map_o[var_a];
        uint256 var_j = (((0x0100 * (!bytes1(stor_map_p[var_a]))) - 0x01) & (stor_map_p[var_a])) / 0x02;
        if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a])) / 0x02) {
            if (0x1f < (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02)) {
                var_a = 0x02 + keccak256(var_a);
                if ((0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_e))))))) + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) > (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_e))))))))) {
                    if ((0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_e))))))) + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) > (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_e)))))))))) {
                    }
                    emit MultiTransact(address(msg.sender), uint256(arg0), stor_map_n[var_a], var_g, (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_e)))))) - var_e, 0, var_j);
                    var_a = arg0;
                    uint96 stor_map_q[var_a] = stor_map_q[var_a];
                    stor_map_r[var_a] = 0;
                    stor_map_s[var_a] = 0;
                    if (0x1f < (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) {
                        var_a = keccak256(var_a) + 0x02;
                        if (!(keccak256(var_a) + ((0x1f + (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) / 0x20)) > keccak256(var_a)) {
                            stor_map_m[var_a] = 0;
                            if (!(keccak256(var_a) + ((0x1f + (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) / 0x20)) > (0x01 + keccak256(var_a))) {
                            }
                            return 0x01;
                        }
                        return 0x01;
                    }
                }
                var_k = (stor_map_p[var_a] / 0x0100) * 0x0100;
                var_a = arg0;
                stor_map_q[var_a] = stor_map_q[var_a];
                stor_map_r[var_a] = 0;
                stor_map_s[var_a] = 0;
                if (0x1f < (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) {
                }
            }
            var_a = arg0;
            stor_map_q[var_a] = stor_map_q[var_a];
            stor_map_r[var_a] = 0;
            stor_map_s[var_a] = 0;
            if (0x1f < (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) {
            }
        }
        (bool success, bytes memory ret0) = var_g.call{ value: stor_map_n[var_a] }(abi.encode(var_k));
        (bool success, bytes memory ret0) = var_g.call{ value: stor_map_n[var_a] }(abi.encode());
        var_a = arg0;
        uint256 var_e = var_e + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_p[var_a]))) - 0x01) & (stor_map_p[var_a]) / 0x02)) / 0x20) * 0x20));
        var_c = var_j;
        if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a])) / 0x02) {
            if (0x1f < (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02)) {
                var_a = 0x02 + keccak256(var_a);
                if ((0x20 + var_e) + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) > (0x20 + (0x20 + var_e))) {
                    if ((0x20 + var_e) + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) > (0x20 + (0x20 + (0x20 + var_e)))) {
                    }
                    var_a = arg0;
                    if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a])) / 0x02) {
                        if (0x1f < (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02)) {
                            var_a = 0x02 + keccak256(var_a);
                            if ((0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_e))))))) + (((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) > (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_e))))))))) {
                            }
                            var_l = (stor_map_p[var_a] / 0x0100) * 0x0100;
                            var_a = arg0;
                            stor_map_q[var_a] = stor_map_q[var_a];
                            stor_map_r[var_a] = 0;
                            stor_map_s[var_a] = 0;
                            if (0x1f < (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) {
                            }
                        }
                        var_a = arg0;
                        stor_map_q[var_a] = stor_map_q[var_a];
                        stor_map_r[var_a] = 0;
                        stor_map_s[var_a] = 0;
                        if (0x1f < (((0x0100 * (!stor_map_s[var_a])) - 0x01) & (stor_map_s[var_a]) / 0x02)) {
                        }
                    }
                }
                var_a = arg0;
                if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a])) / 0x02) {
                }
            }
            var_a = arg0;
            var_i = stor_map_o[var_a];
            if (!(((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a])) / 0x02) {
            }
        }
        return 0;
        var_a = arg0;
        if ((((0x0100 * (!stor_map_p[var_a])) - 0x01) & (stor_map_p[var_a]) / 0x02) == 0) {
        }
        var_a = arg0;
        if (!(stor_map_n[var_a]) == 0) {
        }
        return 0;
        emit Confirmation(address(msg.sender), uint256(arg0));
        if (stor_map_o[var_a] > 0x01) {
            stor_map_o[var_a] = (stor_map_o[var_a]) - 0x01;
            stor_map_n[var_a] = (stor_map_n[var_a]) | (0x02 ** stor_map_m[var_a]);
            if (!0) {
            }
            var_a = arg0;
            if (stor_map_p[var_a] < stor_f) {
                stor_map_t[var_a] = 0;
                stor_map_q[var_a] = 0;
                stor_map_r[var_a] = 0;
                stor_map_s[var_a] = 0;
                if (!0x01) {
                    return 0;
                    if (!(var_i) == 0) {
                    }
                }
            }
        }
        stor_map_o[var_a] = stor_k;
        stor_map_n[var_a] = 0;
        stor_f = 0x01 + stor_f;
        if (!stor_f > (stor_f)) {
            var_a = 0x0107;
            if (!(keccak256(var_a) + stor_f) > (keccak256(var_a) + (stor_f))) {
                stor_map_u[var_a] = 0;
                if (!(keccak256(var_a) + stor_f) > (0x01 + (keccak256(var_a) + (stor_f)))) {
                }
                stor_map_p[var_a] = stor_f;
                if (stor_map_p[var_a] < stor_f) {
                    uint256 stor_map_t[var_a] = arg0;
                    if (!(stor_map_n[var_a] & (0x02 ** stor_map_m[var_a])) == 0) {
                    }
                }
            }
            stor_map_p[var_a] = stor_f;
            if (stor_map_p[var_a] < stor_f) {
            }
        }
        if (!0) {
        }
    }
    
    /// @custom:selector    0xf1736d86
    /// @custom:name        m_dailyLimit
    function m_dailyLimit() public view returns (uint256) {
        return stor_d;
    }
    
    /// @custom:selector    0xb75c7dc6
    /// @custom:name        revoke
    /// @param              arg0 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    function revoke(bytes32 arg0) public {
        address var_a = msg.sender;
        if (!stor_map_m[var_a] == 0) {
            uint256 var_a = arg0;
            if (!(stor_map_n[var_a] & (0x02 ** stor_map_m[var_a])) > 0) {
                stor_map_o[var_a] = 0x01 + (stor_map_o[var_a]);
                stor_map_n[var_a] = (stor_map_n[var_a]) - (0x02 ** stor_map_m[var_a]);
                emit Revoke(address(msg.sender), uint256(arg0));
            }
        }
    }
    
    /// @custom:selector    0x659010e7
    /// @custom:name        m_spentToday
    function m_spentToday() public view returns (uint256) {
        return stor_w;
    }
    
    /// @custom:selector    0x9da5e0eb
    /// @custom:name        initDaylimit
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function initDaylimit(uint256 arg0) public {
        require(!stor_x > 0);
        stor_d = arg0;
        if (0x015180) {
            stor_v = block.timestamp / 0x015180;
        }
    }
}