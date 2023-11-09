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
    
    /// @custom:selector    0x1dcd9b55
    /// @custom:name        substring
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function substring( memory arg0, uint256 arg1, uint256 arg2) public pure payable returns (bytes memory) {
        memory var_a = var_a + (0x20 + (((0x1f + (arg0)) / 0x20) * 0x20));
        require(!arg1 > arg2);
        require(!arg1 < 0);
        require(!arg2 > var_a.length);
        var_a = var_a + (0x20 + (uint248(0x1f + (arg2 - arg1))));
        if (!arg2 - arg1) {
            if (!arg1 < arg2) {
                if (arg1 < var_a.length) {
                    if ((arg1 - arg1) < var_a.length) {
                        if (!(0x01 + arg1) < arg2) {
                        }
                    }
                }
                if (!var_a.length) {
                    return abi.encodePacked((0x20 + var_a) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_j));
                    return abi.encodePacked((0x20 + var_a) - var_a, var_a.length);
                }
            }
            if (!arg1 < arg2) {
            }
        }
    }
    
    /// @custom:selector    0xdca95419
    /// @custom:name        recoverSigner
    /// @param              arg0 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function recoverSigner(bytes32 arg0, string memory arg1) public payable returns (address) {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        var_c = msg.data[36:36];
        require(!(uint256(arg0)) == 0);
        var_a = var_a + 0x40;
        require(var_a.length < 0x20);
        require((var_a.length - 0x20) < 0x20);
        var_a = 0x20 + (var_a.length + (0x20 + var_a));
        require(var_a.length < 0x20);
        require(var_a.length == 0x84);
        require(!0x02 > 0x84);
        require(!0x02 < 0);
        require(!0x84 > var_a.length);
        var_a = var_a + 0xc0;
        require(!0x82);
        require(!0x02 < 0x84);
        require(0x02);
        require((var_a.length % 0x02) == 0);
        require(0x02);
        var_a = var_a + (0x20 + (uint248(0x1f + (var_a.length / 0x02))));
        require(!var_a.length / 0x02);
        require(!(bytes1(var_m)) < 0x1b);
        require(bytes1(var_m) < 0x1b);
        require(!(bytes1(var_m)) > 0x1c);
        return 0;
        var_a = 0x20 + var_a;
        address var_v = ecrecover(uint256(keccak256(var_p)), bytes1(var_m), uint256(var_s), uint256(var_u));
        require(var_v);
        return address(var_v);
        if (!(var_m) < 0x1b) {
            var_a = 0x20 + var_a;
            address var_v = ecrecover(uint256(keccak256(var_p)), bytes1(var_m), uint256(var_s), uint256(var_u));
            if (var_v) {
            }
            return 0;
        }
        if ((var_m + 0x1b) < 0x1b) {
            if (!(var_m + 0x1b) < 0x1b) {
            }
            if (!(var_m + 0x1b) > 0x1c) {
            }
        }
        require(!0 > 0x01);
        require(!0 < 0);
        require(!0x01 > var_a.length);
        var_a = var_a + 0x40;
        if (!0x01) {
            if (!0 < 0x01) {
                if (!0x01 > 0x02) {
                }
                if (!0x01 < 0x01) {
                    if (!0x01 > 0x02) {
                    }
                }
            }
            if (!0 < 0x01) {
            }
        }
        if (0x02 < var_a.length) {
            if (!0x03 < 0x84) {
            }
        }
        var_c = this.code[5159:9319]
        if (!0x02 < 0x84) {
        }
        return 0;
        if ((var_a.length - 0x20) < 0x20) {
            if (((var_a.length - 0x20) - 0x20) < 0x20) {
            }
            if (var_a.length == 0x84) {
            }
        }
        if (((var_a.length - 0x20) - 0x20) < 0x20) {
        }
        var_a = 0x20 + (var_a.length + (0x20 + var_a));
        if (var_a.length < 0x20) {
        }
    }
    
    /// @custom:selector    0x38b025b2
    /// @custom:name        parseInt16Char
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function parseInt16Char(string memory arg0) public pure payable returns (uint256) {
        require(bytes1(0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) < 0x3000000000000000000000000000000000000000000000000000000000000000);
        require(bytes1(0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) > 0x3900000000000000000000000000000000000000000000000000000000000000);
        require(bytes1(0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) < 0x4100000000000000000000000000000000000000000000000000000000000000);
        require(bytes1(0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) > 0x4600000000000000000000000000000000000000000000000000000000000000);
        require(bytes1(0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) < 0x6100000000000000000000000000000000000000000000000000000000000000);
        require(bytes1(0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) > 0x6600000000000000000000000000000000000000000000000000000000000000);
        return ((0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) / 0x0100000000000000000000000000000000000000000000000000000000000000) - 0x57;
        require(bytes1(0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) < 0x6100000000000000000000000000000000000000000000000000000000000000);
        return ((0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) / 0x0100000000000000000000000000000000000000000000000000000000000000) - 0x37;
        if ((0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) < 0x4100000000000000000000000000000000000000000000000000000000000000) {
        }
        return ((0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) / 0x0100000000000000000000000000000000000000000000000000000000000000) - 0x30;
        if ((0x0100000000000000000000000000000000000000000000000000000000000000 * (var_d / 0x0100000000000000000000000000000000000000000000000000000000000000)) < 0x3000000000000000000000000000000000000000000000000000000000000000) {
        }
    }
    
    /// @custom:selector    0x1445f713
    /// @custom:name        hexstrToBytes
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function hexstrToBytes(string memory arg0) public pure payable returns (bytes memory) {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg0)) / 0x20) * 0x20));
        require(0x02);
        require((var_a.length % 0x02) == 0);
        require(0x02);
        var_a = var_a + (0x20 + (uint248(0x1f + (var_a.length / 0x02))));
        require(!var_a.length / 0x02);
        require(!0 > 0x01);
        require(!0 < 0);
        if (!0x01 > var_a.length) {
            var_a = var_a + 0x40;
            if (!0x01) {
                if (!0 < 0x01) {
                    if (!0x01 > 0x02) {
                    }
                    if (!0x01 < 0x01) {
                        if (!0x01 > 0x02) {
                        }
                    }
                }
                require(!0x01 > var_a.length);
            }
        }
        if (!var_a.length) {
            return abi.encodePacked((0x20 + var_a) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_i));
            return abi.encodePacked((0x20 + var_a) - var_a, var_a.length);
        }
    }
    
    /// @custom:selector    0xe9395679
    /// @custom:name        uintToString
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function uintToString(uint256 arg0) public pure payable returns (bytes memory) {
        if ((arg0 + 0) == 0) {
            if (0x0a) {
                if (((arg0 + 0) / 0x0a) == 0) {
                }
            }
            var_b = var_b + 0x20;
            if (!0) {
                if (arg0 == 0) {
                    if (0x0a) {
                        if (0x0a) {
                            if (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff < var_b.length) {
                                if ((arg0 / 0x0a) == 0) {
                                }
                            }
                        }
                    }
                    if (!var_b.length) {
                        return abi.encodePacked((0x20 + var_b) - var_b, var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_i));
                        return abi.encodePacked((0x20 + var_b) - var_b, var_b.length);
                    }
                }
                if (arg0 == 0) {
                }
            }
        }
    }
    
    /// @custom:selector    0xdae21454
    /// @custom:name        toEthereumSignedMessage
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function toEthereumSignedMessage(string memory arg0) public pure payable returns (uint256) {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg0)) / 0x20) * 0x20));
        if (var_a.length > 0) {
            var_a = var_a + 0x40;
            if ((var_a.length + 0) == 0) {
                if (0x0a) {
                    if (((var_a.length + 0) / 0x0a) == 0) {
                    }
                }
                var_a = var_a + 0x20;
                if (!0) {
                    var_c = this.code[5159:5159]
                    if (var_a.length == 0) {
                        if (0x0a) {
                            if (0x0a) {
                                if (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff < var_a.length) {
                                    if ((var_a.length / 0x0a) == 0) {
                                    }
                                }
                            }
                        }
                        if (var_a.length < 0x20) {
                            if ((var_a.length - 0x20) < 0x20) {
                                if (var_a.length < 0x20) {
                                    if ((var_a.length - 0x20) < 0x20) {
                                        if (var_a.length < 0x20) {
                                            if ((var_a.length - 0x20) < 0x20) {
                                                var_a = var_a.length + (var_a.length + (var_a.length + (0x20 + var_a)));
                                                if (var_a.length < 0x20) {
                                                    if ((var_a.length - 0x20) < 0x20) {
                                                        return uint256(keccak256(var_q));
                                                        if (((var_a.length - 0x20) - 0x20) < 0x20) {
                                                        }
                                                    }
                                                    return uint256(keccak256(var_q));
                                                }
                                                if (((var_a.length - 0x20) - 0x20) < 0x20) {
                                                }
                                            }
                                            var_a = var_a.length + (var_a.length + (var_a.length + (0x20 + var_a)));
                                            if (var_a.length < 0x20) {
                                            }
                                        }
                                        if (((var_a.length - 0x20) - 0x20) < 0x20) {
                                        }
                                    }
                                    if (var_a.length < 0x20) {
                                    }
                                }
                                if (((var_a.length - 0x20) - 0x20) < 0x20) {
                                }
                            }
                            if (var_a.length < 0x20) {
                            }
                        }
                    }
                    require(var_a.length > 0);
                }
            }
        }
    }
    
    /// @custom:selector    0x1052506f
    /// @custom:name        isSignedBy
    /// @param              arg0 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function isSignedBy(bytes32 arg0, string memory arg1, address arg2) public payable returns (bool) {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        var_c = msg.data[36:36];
        require(!(address(arg2)) == 0);
        require(!(uint256(arg0)) == 0);
        var_a = var_a + 0x40;
        require(var_a.length < 0x20);
        require((var_a.length - 0x20) < 0x20);
        var_a = 0x20 + (var_a.length + (0x20 + var_a));
        require(var_a.length < 0x20);
        require(var_a.length == 0x84);
        require(!0x02 > 0x84);
        require(!0x02 < 0);
        require(!0x84 > var_a.length);
        var_a = var_a + 0xc0;
        require(!0x82);
        require(!0x02 < 0x84);
        require(0x02);
        require((var_a.length % 0x02) == 0);
        require(0x02);
        var_a = var_a + (0x20 + (uint248(0x1f + (var_a.length / 0x02))));
        require(!var_a.length / 0x02);
        require(!(bytes1(var_m)) < 0x1b);
        require(bytes1(var_m) < 0x1b);
        require(!(bytes1(var_m)) > 0x1c);
        return !(!(address(arg2)) == 0);
        var_a = 0x20 + var_a;
        address var_v = ecrecover(uint256(keccak256(var_p)), bytes1(var_m), uint256(var_s), uint256(var_u));
        require(var_v);
        return !(!(address(arg2)) == (address(var_v)));
        if (!(var_m) < 0x1b) {
            var_a = 0x20 + var_a;
            address var_v = ecrecover(uint256(keccak256(var_p)), bytes1(var_m), uint256(var_s), uint256(var_u));
            if (var_v) {
            }
            return !(!(address(arg2)) == 0);
        }
        if ((var_m + 0x1b) < 0x1b) {
            if (!(var_m + 0x1b) < 0x1b) {
            }
            if (!(var_m + 0x1b) > 0x1c) {
            }
        }
        require(!0 > 0x01);
        require(!0 < 0);
        require(!0x01 > var_a.length);
        var_a = var_a + 0x40;
        if (!0x01) {
            if (!0 < 0x01) {
                if (!0x01 > 0x02) {
                }
                if (!0x01 < 0x01) {
                    if (!0x01 > 0x02) {
                    }
                }
            }
            if (!0 < 0x01) {
            }
        }
        if (0x02 < var_a.length) {
            if (!0x03 < 0x84) {
            }
        }
        var_c = this.code[5159:9319]
        if (!0x02 < 0x84) {
        }
        return !(!(address(arg2)) == 0);
        if ((var_a.length - 0x20) < 0x20) {
            if (((var_a.length - 0x20) - 0x20) < 0x20) {
            }
            if (var_a.length == 0x84) {
            }
        }
        if (((var_a.length - 0x20) - 0x20) < 0x20) {
        }
        var_a = 0x20 + (var_a.length + (0x20 + var_a));
        if (var_a.length < 0x20) {
        }
    }
    
    /// @custom:selector    0x886d3db9
    /// @custom:name        uintToBytes32
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function uintToBytes32(uint256 arg0) public pure payable returns (bytes memory) {
        var_b = var_b + 0x40;
        if (!0x20) {
            if (!var_b.length) {
                return abi.encodePacked((0x20 + var_b) - var_b, var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_g));
                return abi.encodePacked((0x20 + var_b) - var_b, var_b.length);
            }
            if (!var_b.length) {
            }
        }
    }
}