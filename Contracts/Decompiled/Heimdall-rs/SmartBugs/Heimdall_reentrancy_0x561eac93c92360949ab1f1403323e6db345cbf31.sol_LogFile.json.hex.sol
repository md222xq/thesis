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
    uint256 public stor_c;
    uint256 public stor_f;
    mapping(bytes32 => bytes32) public stor_map_e;
    mapping(bytes32 => bytes32) public stor_map_g;
    mapping(uint256 => address) public stor_map_h;
    mapping(uint256 => address) public stor_map_k;
    mapping(uint256 => bytes32) public stor_map_i;
    mapping(uint256 => bytes32) public stor_map_j;
    mapping(uint256 => uint256) public stor_map_l;
    mapping(uint256 => uint256) public stor_map_m;
    
    /// @custom:selector    0x4c2f04a4
    /// @custom:name        AddMessage
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function AddMessage(address arg0, uint256 arg1, string memory arg2) public {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        var_c = msg.data[36:36];
        stor_a = (address(arg0)) | (uint96(stor_a));
        stor_b = block.timestamp;
        stor_c = arg1;
        if (0x1f < var_a.length) {
            stor_d = 0x01 + (var_a.length + var_a.length);
            if (!var_a.length) {
                if (!((0x20 + var_a) + var_a.length) > (0x20 + var_a)) {
                    stor_map_e[var_d] = var_c;
                    if (!((0x20 + var_a) + var_a.length) > (0x20 + (0x20 + var_a))) {
                    }
                    if (!(keccak256(var_d) + ((0x1f + (((0x0100 * (!stor_d)) - 0x01) & (stor_d) / 0x02)) / 0x20)) > keccak256(var_d)) {
                        stor_map_e[var_d] = 0;
                        if (!(keccak256(var_d) + ((0x1f + (((0x0100 * (!stor_d)) - 0x01) & (stor_d) / 0x02)) / 0x20)) > (0x01 + keccak256(var_d))) {
                        }
                        stor_f = stor_f + 0x01;
                        var_d = 0;
                        var_d = 0x01 + ((0x04 * ((stor_f) - 0x01)) + keccak256(var_d));
                        if (0x1f < (((0x0100 * (!stor_d)) - 0x01) & (stor_d) / 0x02)) {
                        }
                    }
                }
                if (!(keccak256(var_d) + ((0x1f + (((0x0100 * (!stor_d)) - 0x01) & (stor_d) / 0x02)) / 0x20)) > keccak256(var_d)) {
                }
            }
            stor_d = (var_a.length + var_a.length) | (uint248(var_e));
            if (!(keccak256(var_d) + ((0x1f + (((0x0100 * (!stor_d)) - 0x01) & (stor_d) / 0x02)) / 0x20)) > keccak256(var_d)) {
            }
        }
    }
    
    /// @custom:selector    0xa21f0368
    /// @custom:name        History
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function History(uint256 arg0) public view returns (bytes memory) {
        if (arg0 < stor_f) {
            var_a = 0;
            uint256 var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_h[(0x04 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_h[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
            if (!(((0x0100 * (!stor_map_h[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_h[(0x04 * arg0) + keccak256(var_a)])) / 0x02) {
                if (0x1f < (((0x0100 * (!stor_map_h[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_h[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) {
                    uint256 var_a = 0x01 + ((0x04 * arg0) + keccak256(var_a));
                    if ((0x20 + var_b) + (((0x0100 * (!stor_map_h[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_h[(0x04 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + var_b))) {
                        if ((0x20 + var_b) + (((0x0100 * (!stor_map_h[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_h[(0x04 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + (0x20 + var_b)))) {
                        }
                        address var_d = stor_map_k[(0x04 * arg0) + keccak256(var_a)];
                        uint256 var_f = stor_map_l[(0x04 * arg0) + keccak256(var_a)];
                        uint256 var_g = stor_map_m[(0x04 * arg0) + keccak256(var_a)];
                        if (!var_b.length) {
                            return abi.encodePacked(var_d, (0x20 + (0x20 + (0x20 + (0x20 + var_b)))) - var_b, var_f, var_g, var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_k));
                            return abi.encodePacked(var_d, (0x20 + (0x20 + (0x20 + (0x20 + var_b)))) - var_b, var_f, var_g, var_b.length);
                        }
                    }
                }
            }
        }
    }
}