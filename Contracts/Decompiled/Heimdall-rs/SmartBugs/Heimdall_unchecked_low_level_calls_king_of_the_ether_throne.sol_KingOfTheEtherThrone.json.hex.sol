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
    
    bytes32 public stor_b;
    bytes32 public stor_c;
    bytes32 public stor_f;
    uint256 public stor_a;
    uint256 public stor_d;
    mapping(bytes32 => bytes32) public stor_map_e;
    mapping(uint256 => address) public stor_map_g;
    mapping(uint256 => address) public stor_map_j;
    mapping(uint256 => bytes32) public stor_map_h;
    mapping(uint256 => bytes32) public stor_map_i;
    mapping(uint256 => uint256) public stor_map_k;
    mapping(uint256 => uint256) public stor_map_l;
    
    /// @custom:selector    0xc8fdc891
    /// @custom:name        numberOfMonarchs
    function numberOfMonarchs() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0xb66a323c
    /// @custom:name        claimThrone
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function claimThrone(string memory arg0) public {
        if (!msg.value < stor_b) {
            (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !msg.value * 0x08fc, value: msg.value }(abi.encode());
            if (!msg.value > stor_b) {
                (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!msg.value - stor_b) * 0x08fc, value: msg.value - stor_b }(abi.encode());
                if (0x64) {
                    if (address(stor_c) == (address(stor_d))) {
                        (bool success, bytes memory ret0) = address(stor_c).call{ gas: (!(msg.value - (msg.value - stor_b)) - (((msg.value - (msg.value - stor_b))) / 0x64)) * 0x08fc, value: (msg.value - (msg.value - stor_b)) - (((msg.value - (msg.value - stor_b))) / 0x64) }(abi.encode());
                        stor_a = stor_a + 0x01;
                        var_d = 0x06;
                        stor_map_e[(0x04 * ((stor_a) - 0x01)) + keccak256(var_d)] = (address(stor_c)) | (uint96(stor_map_e[(0x04 * ((stor_a) - 0x01)) + keccak256(var_d)]));
                        if (0x1f < (((0x0100 * (!stor_f)) - 0x01) & (stor_f) / 0x02)) {
                        }
                        stor_a = stor_a + 0x01;
                        var_d = 0x06;
                        if (0x1f < (((0x0100 * (!stor_f)) - 0x01) & (stor_f) / 0x02)) {
                        }
                    }
                }
                if (0x64) {
                }
            }
        }
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:name        transferOwnership
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function transferOwnership(address arg0) public {
        if (!(address(msg.sender)) == (address(stor_d))) {
            stor_d = (address(arg0)) | (uint96(stor_d));
        }
    }
    
    /// @custom:selector    0x64325ddb
    /// @custom:name        currentClaimPrice
    function currentClaimPrice() public view returns (uint256) {
        return stor_b;
    }
    
    /// @custom:selector    0x7842c52d
    /// @custom:name        pastMonarchs
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function pastMonarchs(uint256 arg0) public view returns (bytes memory) {
        if (arg0 < stor_a) {
            var_a = 0x06;
            uint256 var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_g[(0x04 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_g[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
            if (!(((0x0100 * (!stor_map_g[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_g[(0x04 * arg0) + keccak256(var_a)])) / 0x02) {
                if (0x1f < (((0x0100 * (!stor_map_g[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_g[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) {
                    uint256 var_a = 0x01 + ((0x04 * arg0) + keccak256(var_a));
                    if ((0x20 + var_b) + (((0x0100 * (!stor_map_g[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_g[(0x04 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + var_b))) {
                        if ((0x20 + var_b) + (((0x0100 * (!stor_map_g[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_g[(0x04 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + (0x20 + var_b)))) {
                        }
                        address var_d = stor_map_j[(0x04 * arg0) + keccak256(var_a)];
                        uint256 var_f = stor_map_k[(0x04 * arg0) + keccak256(var_a)];
                        uint256 var_g = stor_map_l[(0x04 * arg0) + keccak256(var_a)];
                        if (!var_b.length) {
                            return abi.encodePacked(var_d, (0x20 + (0x20 + (0x20 + (0x20 + var_b)))) - var_b, var_f, var_g, var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_k));
                            return abi.encodePacked(var_d, (0x20 + (0x20 + (0x20 + (0x20 + var_b)))) - var_b, var_f, var_g, var_b.length);
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0xe40d0ac3
    /// @custom:name        currentMonarch
    function currentMonarch() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_f));
    }
    
    /// @custom:selector    0x0eb3f5a0
    /// @custom:name        sweepCommission
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function sweepCommission(uint256 arg0) public {
        if (!(address(msg.sender)) == (address(stor_d))) {
            (bool success, bytes memory ret0) = address(stor_d).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
        }
    }
}