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
    
    bytes4 public stor_h;
    bytes4 public stor_i;
    uint64 public stor_p;
    uint64 public stor_q;
    uint64 public stor_r;
    bytes32 public stor_a;
    bytes32 public stor_b;
    bytes32 public stor_c;
    bytes32 public stor_d;
    bytes32 public stor_e;
    bytes32 public stor_f;
    bytes32 public stor_g;
    bytes32 public stor_j;
    bytes32 public stor_k;
    bytes32 public stor_s;
    uint256 public stor_l;
    uint256 public stor_m;
    uint256 public stor_n;
    uint256 public stor_o;
    (bool success, bytes public stor_t;
    
    event Upgrade(address arg0);
    event RequestInfo(uint64 arg0, uint8 arg1, address arg2, uint256 arg3, address arg4, bytes32 arg5, uint256 arg6, bytes32[] arg7);
    event Reset(uint256 arg0, uint256 arg1, uint256 arg2);
    event DeliverInfo(uint64 arg0, uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, uint64 arg6, bytes32 arg7);
    event Cancel(uint64 arg0, address arg1, address arg2, uint256 arg3, int256 arg4);
    
    /// @custom:selector    0x0900f010
    /// @custom:name        upgrade
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function upgrade(address arg0) public {
        if (0 < 0x010000000000000000) {
            if (!(address(msg.sender)) == (address(stor_a))) {
                if (!(uint64(stor_b / 0x0100000000000000000000)) == 0) {
                    stor_c = 0 - (address(arg0));
                    stor_b = (0x01) | (uint248(stor_b));
                    emit Upgrade(address(arg0));
                }
                if (!(address(msg.sender)) == (address(stor_a))) {
                    stor_c = 0 - (address(arg0));
                    stor_b = (0x01) | (uint248(stor_b));
                }
            }
        }
    }
    
    /// @custom:selector    0x2e28b3f5
    /// @custom:name        SGX_ADDRESS
    function SGX_ADDRESS() public pure returns (uint256) {
        return 0x18513702ccd928f2a3eb63d900adf03c9cc81593;
    }
    
    /// @custom:selector    0x58487bee
    /// @custom:name        request
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "bytes32", "bytes4", "int", "int256", "int32", "string", "uint", "uint256", "uint32"]
    /// @param              arg3 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg4 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function request(uint8 arg0, address arg1, bytes4 arg2, uint256 arg3, bytes32[] memory arg4) public payable returns (uint64) {
        bytes32[] memory var_a = var_a + (0x20 + (0x20 * (arg4)));
        require(!bytes1(stor_b / 0x0100));
        require(!bytes1(stor_b));
        stor_b = (0x0100) | (uint248(stor_b));
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: msg.value }(abi.encode());
        stor_b = (0 * 0x0100) | (uint248(stor_b));
        return stor_c;
        require(!msg.value < stor_d);
        stor_b = (0x0100) | (uint248(stor_b));
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: msg.value }(abi.encode());
        stor_b = (0 * 0x0100) | (uint248(stor_b));
        return 0x0400000000000000000000000000000000000000000000000000000000000000;
        stor_b = (uint64(0x01 + (stor_b / 0x010000)) * 0x010000) | (uint192(stor_b));
        stor_b = (uint64(0x01 + (stor_b / 0x0100000000000000000000)) * 0x0100000000000000000000) | (uint192(stor_b));
        if (!0 < (0x20 * var_a.length)) {
            if (!0x20 < (0x20 * var_a.length)) {
            }
            if (uint64(stor_b / 0x010000) < 0x010000000000000000) {
                stor_e = (address(msg.sender)) | (uint96(stor_f));
                if (uint64(stor_b / 0x010000) < 0x010000000000000000) {
                    stor_g = msg.value;
                    if (uint64(stor_b / 0x010000) < 0x010000000000000000) {
                        stor_h = (address(arg1)) | (uint96(stor_i));
                        if (uint64(stor_b / 0x010000) < 0x010000000000000000) {
                            stor_h = ((uint32(arg2) / 0x0100000000000000000000000000000000000000000000000000000000) * 0x010000000000000000000000000000000000000000) | (uint224(stor_i));
                            if (uint64(stor_b / 0x010000) < 0x010000000000000000) {
                                uint256 stor_j = keccak256(var_g);
                                uint64 var_d = stor_b / 0x010000;
                                if (!0 < (0x20 * var_a.length)) {
                                    if (!0x20 < (0x20 * var_a.length)) {
                                    }
                                    emit RequestInfo(var_d, bytes1(arg0), address(msg.sender), msg.value, address(arg1), uint256(keccak256(var_g)), arg3, (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_a)))))))) - var_a, var_a.length);
                                    var_d = stor_b / 0x010000;
                                    return var_d;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x8b0ee5a3
    /// @custom:name        GAS_PRICE
    function GAS_PRICE() public view returns (uint256) {
        return stor_k;
    }
    
    /// @custom:selector    0xbe0da251
    /// @custom:name        CANCELLED_FEE_FLAG
    function CANCELLED_FEE_FLAG() public pure returns (uint256) {
        return 0x01;
    }
    
    /// @custom:selector    0xd073ca3d
    /// @custom:name        SUCCESS_FLAG
    function SUCCESS_FLAG() public pure returns (uint256) {
        return 0x01;
    }
    
    /// @custom:selector    0x39c2697c
    /// @custom:name        DELIVERED_FEE_FLAG
    function DELIVERED_FEE_FLAG() public pure returns (uint256) {
        return 0;
    }
    
    /// @custom:selector    0xfc9bfaa6
    /// @custom:name        externalCallFlag
    function externalCallFlag() public view returns (bool) {
        var_a = !(!bytes1(stor_b / 0x0100));
        return var_a;
    }
    
    /// @custom:selector    0x908f68ee
    /// @custom:name        unrespondedCnt
    function unrespondedCnt() public view returns (uint64) {
        uint64 var_a = stor_b / 0x0100000000000000000000;
        return var_a;
    }
    
    /// @custom:selector    0x66a39350
    /// @custom:name        FAIL_FLAG
    function FAIL_FLAG() public pure returns (uint256) {
        return 0x0400000000000000000000000000000000000000000000000000000000000000;
    }
    
    /// @custom:selector    0x42dd96f7
    /// @custom:name        killswitch
    function killswitch() public view returns (bool) {
        var_a = !(!bytes1(stor_b));
        return var_a;
    }
    
    /// @custom:selector    0x29cdda23
    /// @custom:name        newVersion
    function newVersion() public view returns (uint256) {
        return stor_c;
    }
    
    /// @custom:selector    0x81d12c58
    /// @custom:name        requests
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function requests(uint256 arg0) public view returns (bytes memory) {
        if (arg0 < 0x010000000000000000) {
            address var_a = stor_l;
            address var_c = stor_n;
            uint32 var_d = 0x0100000000000000000000000000000000000000000000000000000000 * (stor_n / 0x010000000000000000000000000000000000000000);
            return abi.encodePacked(var_a, stor_m, var_c, var_d, uint256(stor_o));
        }
    }
    
    /// @custom:selector    0xa6801cbd
    /// @custom:name        reset
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function reset(uint256 arg0, uint256 arg1, uint256 arg2) public {
        if (0 < 0x010000000000000000) {
            if (!(address(msg.sender)) == (address(stor_a))) {
                if (!(uint64(stor_b / 0x0100000000000000000000)) == 0) {
                    stor_k = arg0;
                    stor_d = arg0 * arg1;
                    stor_p = arg0 * arg2;
                    emit Reset(stor_k, stor_d, stor_p);
                }
                if (!(address(msg.sender)) == (address(stor_a))) {
                    stor_k = arg0;
                    stor_d = arg0 * arg1;
                    stor_p = arg0 * arg2;
                }
            }
        }
    }
    
    /// @custom:selector    0xe6400bbe
    /// @custom:name        suspend
    function suspend() public {
        if (0 < 0x010000000000000000) {
            if (!(address(msg.sender)) == (address(stor_a))) {
                stor_b = (0x01) | (uint248(stor_b));
            }
        }
    }
    
    /// @custom:selector    0x487a6e32
    /// @custom:name        deliver
    /// @param              arg0 ["bytes", "bytes32", "bytes8", "int", "int256", "int64", "string", "uint", "uint256", "uint64"]
    /// @param              arg1 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    /// @param              arg2 ["bytes", "bytes32", "bytes8", "int", "int256", "int64", "string", "uint", "uint256", "uint64"]
    /// @param              arg3 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    function deliver(uint64 arg0, bytes32 arg1, uint64 arg2, bytes32 arg3) public {
        if (!(address(msg.sender)) == 0x18513702ccd928f2a3eb63d900adf03c9cc81593) {
            if (!(uint64(arg0)) > 0) {
                if (uint64(arg0) < 0x010000000000000000) {
                    if (address(stor_q) == 0) {
                        if (uint64(arg0) < 0x010000000000000000) {
                            if (!(stor_r) == 0) {
                                if (uint64(arg0) < 0x010000000000000000) {
                                    if (uint64(arg0) < 0x010000000000000000) {
                                        if (uint256(stor_s) == (uint256(arg1))) {
                                            if (!(stor_r) == 0x01) {
                                                (bool success, bytes memory ret0) = address(0x18513702ccd928f2a3eb63d900adf03c9cc81593).call{ gas: !stor_p * 0x08fc, value: stor_p }(abi.encode());
                                                if (uint64(arg0) < 0x010000000000000000) {
                                                    stor_r = 0;
                                                    stor_b = (uint64((stor_b / 0x0100000000000000000000) - 0x01) * 0x0100000000000000000000) | (uint192(stor_b));
                                                }
                                                if (uint64(arg0) < 0x010000000000000000) {
                                                    stor_r = 0;
                                                    stor_b = (uint64((stor_b / 0x0100000000000000000000) - 0x01) * 0x0100000000000000000000) | (uint192(stor_b));
                                                    if (!(uint64(arg2)) < 0x02) {
                                                        stor_b = (0x0100) | (uint248(stor_b));
                                                        if (uint64(arg0) < 0x010000000000000000) {
                                                            (bool success, bytes memory ret0) = address(stor_q).call{ gas: 0x08fc, value: stor_r }(abi.encode());
                                                            stor_b = (0 * 0x0100) | (uint248(stor_b));
                                                            if (tx.gasprice) {
                                                                var_e = (stor_r - stor_d) / tx.gasprice;
                                                                emit DeliverInfo(uint64(arg0), stor_r, tx.gasprice, gasleft(), var_e, uint256(arg1), uint64(arg2), uint256(arg3));
                                                                if (!(var_e) > (gasleft() - 0x1388)) {
                                                                    stor_b = (0x0100) | (uint248(stor_b));
                                                                    if (uint64(arg0) < 0x010000000000000000) {
                                                                        if (uint64(arg0) < 0x010000000000000000) {
                                                                            var_a = 0x0100000000000000000000000000000000000000000000000000000000 * (uint32((0x0100000000000000000000000000000000000000000000000000000000 * (stor_t / 0x010000000000000000000000000000000000000000)) / 0x0100000000000000000000000000000000000000000000000000000000));
                                                                            (bool success, bytes memory ret0) = address(stor_t).call{ gas: gasleft() - 0x1388, value: 0 }(abi.encode(var_a, stor_r, tx.gasprice, gasleft()));
                                                                            stor_b = (0 * 0x0100) | (uint248(stor_b));
                                                                        }
                                                                    }
                                                                    stor_b = (0x0100) | (uint248(stor_b));
                                                                    if (uint64(arg0) < 0x010000000000000000) {
                                                                        if (uint64(arg0) < 0x010000000000000000) {
                                                                            var_a = 0x0100000000000000000000000000000000000000000000000000000000 * (uint32((0x0100000000000000000000000000000000000000000000000000000000 * (stor_t / 0x010000000000000000000000000000000000000000)) / 0x0100000000000000000000000000000000000000000000000000000000));
                                                                            (bool success, bytes memory ret0) = address(stor_t).call{ gas: var_e, value: 0 }(abi.encode(var_a, stor_r, tx.gasprice, gasleft()));
                                                                            stor_b = (0 * 0x0100) | (uint248(stor_b));
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        (bool success, bytes memory ret0) = address(0x18513702ccd928f2a3eb63d900adf03c9cc81593).call{ gas: (!stor_r) * 0x08fc, value: stor_r }(abi.encode());
                                                        if (tx.gasprice) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (!(address(stor_q)) == 0) {
                        }
                    }
                }
                if (!(uint64(arg0)) > 0) {
                }
            }
            if (!(address(msg.sender)) == 0x18513702ccd928f2a3eb63d900adf03c9cc81593) {
            }
        }
    }
    
    /// @custom:selector    0x3ccfd60b
    /// @custom:name        withdraw
    function withdraw() public {
        require(0 < 0x010000000000000000);
        require(!(address(msg.sender)) == (address(stor_a)));
        require(!(uint64(stor_b / 0x0100000000000000000000)) == 0);
        require(0 < 0x010000000000000000);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: address(this).balance }(abi.encode());
        if (!(address(msg.sender)) == (address(stor_a))) {
            if (0 < 0x010000000000000000) {
            }
        }
    }
    
    /// @custom:selector    0x76c7a3c7
    /// @custom:name        MIN_FEE
    function MIN_FEE() public view returns (uint256) {
        return stor_d;
    }
    
    /// @custom:selector    0x78b17ccf
    /// @custom:name        CANCELLATION_FEE
    function CANCELLATION_FEE() public view returns (uint256) {
        return stor_p;
    }
    
    /// @custom:selector    0x1ef3755d
    /// @custom:name        restart
    function restart() public {
        if (0 < 0x010000000000000000) {
            if (!(address(msg.sender)) == (address(stor_a))) {
                if (!stor_c == 0) {
                    stor_b = (0) | (uint248(stor_b));
                }
                if (!(address(msg.sender)) == (address(stor_a))) {
                    stor_b = (0) | (uint248(stor_b));
                }
            }
        }
    }
    
    /// @custom:selector    0x4c125e79
    /// @custom:name        cancel
    /// @param              arg0 ["bytes", "bytes32", "bytes8", "int", "int256", "int64", "string", "uint", "uint256", "uint64"]
    function cancel(uint64 arg0) public returns (uint256) {
        require(!bytes1(stor_b / 0x0100));
        if (!stor_b) {
            return 0;
            require(!bytes1(stor_b));
            require(uint64(arg0) < 0x010000000000000000);
            require(!(address(stor_q)) == (address(msg.sender)));
            require(stor_r < stor_p);
            require(uint64(arg0) < 0x010000000000000000);
            address var_c = stor_q;
            emit Cancel(uint64(arg0), address(msg.sender), var_c, stor_r, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            return 0x0400000000000000000000000000000000000000000000000000000000000000;
        }
        require(uint64(arg0) < 0x010000000000000000);
        stor_r = 0x01;
        stor_b = (0x0100) | (uint248(stor_b));
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: (stor_r) - stor_p }(abi.encode());
        stor_b = (0 * 0x0100) | (uint248(stor_b));
        if (uint64(arg0) < 0x010000000000000000) {
            if (uint64(arg0) < 0x010000000000000000) {
                var_c = stor_q;
                return 0x01;
            }
        }
        if (!(var_c) == (address(msg.sender))) {
            if (uint64(arg0) < 0x010000000000000000) {
            }
            if (uint64(arg0) < 0x010000000000000000) {
            }
        }
    }
    
    /// @custom:selector    0x6ba7ffd5
    /// @custom:name        requestCnt
    function requestCnt() public view returns (uint64) {
        uint64 var_a = stor_b / 0x010000;
        return var_a;
    }
}