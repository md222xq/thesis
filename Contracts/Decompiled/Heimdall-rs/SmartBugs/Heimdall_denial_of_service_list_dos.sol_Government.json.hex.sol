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
    
    address public stor_b;
    bytes32 public stor_a;
    bytes32 public stor_c;
    bytes32 public stor_d;
    bytes32 public stor_e;
    bytes32 public stor_f;
    bytes32 public stor_i;
    mapping(address => address) public stor_map_m;
    mapping(address => address) public stor_map_n;
    mapping(bytes32 => bytes32) public stor_map_g;
    mapping(bytes32 => bytes32) public stor_map_h;
    mapping(bytes32 => bytes32) public stor_map_j;
    mapping(bytes32 => bytes32) public stor_map_k;
    mapping(bytes32 => bytes32) public stor_map_l;
    mapping(uint256 => bytes32) public stor_map_p;
    mapping(address => (bool success, bytes) public stor_map_o;
    
    /// @custom:selector    0x09f32957
    /// @custom:name        lastCreditorPayedOut
    function lastCreditorPayedOut() public view returns (uint32) {
        uint32 var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x3beea695
    /// @custom:name        corruptElite
    function corruptElite() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0x45941a38
    /// @custom:name        lastTimeOfNewCredit
    function lastTimeOfNewCredit() public view returns (uint256) {
        return stor_c;
    }
    
    /// @custom:selector    0x146ca531
    /// @custom:name        round
    function round() public view returns (bool) {
        bytes1 var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0x6831c169
    /// @custom:name        totalPayedOut
    function totalPayedOut() public view returns (uint256) {
        if (!0 < (uint32(stor_a))) {
            if (0 < stor_e) {
                if (!0x01 < (uint32(stor_a))) {
                }
            }
            return 0;
        }
    }
    
    /// @custom:selector    0x719874da
    /// @custom:name        profitFromCrash
    function profitFromCrash() public view returns (uint256) {
        return stor_f;
    }
    
    /// @custom:selector    0x81064e2d
    /// @custom:name        getCreditorAmounts
    function getCreditorAmounts() public view returns (bytes memory) {
        var_a = var_a + (0x20 + (0x20 * stor_e));
        if (!stor_e) {
            var_c = 0x04;
            if ((0x20 + var_a) + (0x20 * stor_e) > (0x20 + (0x20 + var_a))) {
                if ((0x20 + var_a) + (0x20 * stor_e) > (0x20 + (0x20 + (0x20 + var_a)))) {
                }
                if (!0 < (0x20 * var_a.length)) {
                    if (!0x20 < (0x20 * var_a.length)) {
                    }
                    return abi.encodePacked((0x20 + var_a) - var_a, var_a.length);
                }
            }
            if (!0 < (0x20 * var_a.length)) {
            }
        }
    }
    
    /// @custom:selector    0x4f013184
    /// @custom:name        investInTheSystem
    function investInTheSystem() public {
        stor_f = stor_f + msg.value;
    }
    
    /// @custom:selector    0xd95a2d42
    /// @custom:name        lendGovernmentMoney
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function lendGovernmentMoney(address arg0) public returns (bool) {
        if (!(stor_c + 0xa8c0) < block.timestamp) {
            if (msg.value < 0x0de0b6b3a7640000) {
                stor_c = block.timestamp;
                stor_i = stor_i + 0x01;
                var_a = 0x03;
                stor_map_j[var_a] = (address(msg.sender)) | (uint96(stor_map_j[var_a]));
                if (0x64) {
                    stor_e = stor_e + 0x01;
                    stor_map_k[var_a] = (msg.value * 0x6e) / 0x64;
                    if (0x64) {
                        (bool success, bytes memory ret0) = address(stor_b).call{ gas: (!(msg.value * 0x05) / 0x64) * 0x08fc, value: (msg.value * 0x05) / 0x64 }(abi.encode());
                        if (!stor_f < 0x021e19e0c9bab2400000) {
                            address var_a = arg0;
                            if (stor_map_l[var_a] < msg.value) {
                                if (0x64) {
                                    var_a = msg.sender;
                                    stor_map_l[var_a] = stor_map_l[var_a] + (stor_map_k[var_a]);
                                    if (uint32(stor_a) < stor_e) {
                                        var_a = 0x04;
                                        if (stor_map_m[var_a] > (address(this).balance - stor_f)) {
                                            return 0x01;
                                            if (uint32(stor_a) < stor_i) {
                                                if (uint32(stor_a) < stor_e) {
                                                    var_a = 0x04;
                                                    (bool success, bytes memory ret0) = address(stor_map_n[var_a]).call{ gas: (!stor_map_m[var_a]) * 0x08fc, value: stor_map_m[var_a] }(abi.encode());
                                                    if (uint32(stor_a) < stor_e) {
                                                        if (uint32(stor_a) < stor_i) {
                                                            var_a = 0x03;
                                                            var_a = stor_map_n[var_a];
                                                            stor_map_l[var_a] = stor_map_l[var_a] - (stor_map_m[var_a]);
                                                            stor_a = (uint32((stor_a) + 0x01)) | (uint224(stor_a));
                                                            return 0x01;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                if (0x64) {
                                    (bool success, bytes memory ret0) = address(arg0).call{ gas: (!(msg.value * 0x05) / 0x64) * 0x08fc, value: (msg.value * 0x05) / 0x64 }(abi.encode());
                                    if (0x64) {
                                    }
                                }
                            }
                            if (0x64) {
                                stor_f = stor_f + ((msg.value * 0x05) / 0x64);
                                var_a = arg0;
                                if (stor_map_l[var_a] < msg.value) {
                                }
                            }
                        }
                    }
                }
                (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !msg.value * 0x08fc, value: msg.value }(abi.encode());
                return 0;
            }
            (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !msg.value * 0x08fc, value: msg.value }(abi.encode());
            if ((stor_i - 0x01) < stor_i) {
                var_a = 0x03;
                (bool success, bytes memory ret0) = address(stor_map_o[var_a]).call{ gas: !stor_f * 0x08fc, value: stor_f }(abi.encode());
                (bool success, bytes memory ret0) = address(stor_b).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
                stor_a = 0 | (uint224(stor_a));
                stor_c = block.timestamp;
                stor_f = 0;
                var_d = var_d + 0x20;
                if (!0) {
                    var_e = this.code[4022:4022]
                    stor_i = var_d.length;
                    var_a = 0x03;
                    if (!var_d.length) {
                        if (!((0x20 + var_d) + (0x20 * var_d.length)) > (0x20 + var_d)) {
                            stor_map_l[var_a] = (address(var_e)) | (uint96(stor_map_l[var_a]));
                            if (!((0x20 + var_d) + (0x20 * var_d.length)) > (0x20 + (0x20 + var_d))) {
                            }
                            if (!(keccak256(var_a) + stor_i) > keccak256(var_a)) {
                                uint96 stor_map_l[var_a] = stor_map_l[var_a];
                                if (!(keccak256(var_a) + stor_i) > (0x01 + keccak256(var_a))) {
                                }
                                var_d = var_d + 0x20;
                                if (!0) {
                                    var_e = this.code[4022:4022]
                                    stor_e = var_d.length;
                                    if (!var_d.length) {
                                        if (!((0x20 + var_d) + (0x20 * var_d.length)) > (0x20 + var_d)) {
                                            stor_map_l[var_a] = var_e;
                                            if (!((0x20 + var_d) + (0x20 * var_d.length)) > (0x20 + (0x20 + var_d))) {
                                            }
                                            if (!(keccak256(var_a) + stor_e) > keccak256(var_a)) {
                                                stor_map_l[var_a] = 0;
                                                if (!(keccak256(var_a) + stor_e) > (0x01 + keccak256(var_a))) {
                                                }
                                                stor_d = (bytes1((stor_d) + 0x01)) | (uint248(stor_d));
                                                return 0;
                                            }
                                        }
                                        if (!(keccak256(var_a) + stor_e) > keccak256(var_a)) {
                                        }
                                    }
                                    stor_e = var_d.length;
                                    var_a = 0x04;
                                    if (!var_d.length) {
                                    }
                                }
                            }
                        }
                        if (!(keccak256(var_a) + stor_i) > keccak256(var_a)) {
                        }
                    }
                    stor_i = var_d.length;
                    if (!var_d.length) {
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0xf42d1d30
    /// @custom:name        creditorAmounts
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function creditorAmounts(uint256 arg0) public view returns (uint256) {
        if (arg0 < stor_e) {
            var_a = 0x04;
            return stor_map_p[var_a];
        }
    }
    
    /// @custom:selector    0xfc7b9c18
    /// @custom:name        totalDebt
    function totalDebt() public view returns (uint256) {
        if (!(uint32(stor_a)) < stor_e) {
            if (uint32(stor_a) < stor_e) {
                if (!(0x01 + (uint32(stor_a))) < stor_e) {
                }
            }
            return 0;
        }
    }
    
    /// @custom:selector    0x4a1f0bf6
    /// @custom:name        inheritToNextGeneration
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function inheritToNextGeneration(address arg0) public {
        if (!(address(msg.sender)) == (address(stor_b))) {
            stor_b = (address(arg0)) | (uint96(stor_b));
        }
    }
    
    /// @custom:selector    0xce43b0c0
    /// @custom:name        creditorAddresses
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function creditorAddresses(uint256 arg0) public view returns (address) {
        if (arg0 < stor_i) {
            var_a = 0x03;
            address var_b = stor_map_p[var_a];
            return var_b;
        }
    }
    
    /// @custom:selector    0xd3edcb5b
    /// @custom:name        getCreditorAddresses
    function getCreditorAddresses() public view returns (bytes memory) {
        var_a = var_a + (0x20 + (0x20 * stor_i));
        if (!stor_i) {
            var_c = 0x03;
            if ((0x20 + var_a) + (0x20 * stor_i) > (0x20 + (0x20 + var_a))) {
                if ((0x20 + var_a) + (0x20 * stor_i) > (0x20 + (0x20 + (0x20 + var_a)))) {
                }
                if (!0 < (0x20 * var_a.length)) {
                    if (!0x20 < (0x20 * var_a.length)) {
                    }
                    return abi.encodePacked((0x20 + var_a) - var_a, var_a.length);
                }
            }
            if (!0 < (0x20 * var_a.length)) {
            }
        }
    }
}