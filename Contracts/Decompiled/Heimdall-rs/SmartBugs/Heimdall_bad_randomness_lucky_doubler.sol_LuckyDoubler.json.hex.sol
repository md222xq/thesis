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
    
    address public stor_d;
    uint256 public stor_a;
    uint256 public stor_b;
    uint256 public stor_c;
    mapping(address => address) public stor_map_i;
    mapping(address => address) public stor_map_j;
    mapping(address => bytes32) public stor_map_h;
    mapping(uint256 => uint256) public stor_map_e;
    mapping(uint256 => uint256) public stor_map_f;
    mapping(uint256 => uint256) public stor_map_g;
    
    /// @custom:selector    0x30677b83
    /// @custom:name        multiplierFactor
    function multiplierFactor() public view returns (bytes memory) {
        var_a = var_a + 0x80;
        if (!var_a.length) {
            return abi.encodePacked(stor_a, (0x20 + (0x20 + var_a)) - var_a, var_a.length);
            return abi.encodePacked(stor_a, (0x20 + (0x20 + var_a)) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_j));
        }
    }
    
    /// @custom:selector    0xda3c300d
    /// @custom:name        currentFee
    function currentFee() public view returns (bytes memory) {
        var_a = var_a + 0x80;
        if (!var_a.length) {
            return abi.encodePacked(stor_b, (0x20 + (0x20 + var_a)) - var_a, var_a.length);
            return abi.encodePacked(stor_b, (0x20 + (0x20 + var_a)) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_j));
        }
    }
    
    /// @custom:selector    0x7fef036e
    /// @custom:name        totalEntries
    function totalEntries() public view returns (bytes memory) {
        var_a = var_a + 0x40;
        if (!var_a.length) {
            return abi.encodePacked(stor_c, (0x20 + (0x20 + var_a)) - var_a, var_a.length);
            return abi.encodePacked(stor_c, (0x20 + (0x20 + var_a)) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_h));
        }
        if (!var_a.length) {
        }
    }
    
    /// @custom:selector    0x6a1db1bf
    /// @custom:name        changeFee
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function changeFee(uint256 arg0) public {
        require(!(address(msg.sender)) == (address(stor_d)));
        require(!stor_b > 0x05);
        stor_b = arg0;
    }
    
    /// @custom:selector    0xced92670
    /// @custom:name        changeMultiplier
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function changeMultiplier(uint256 arg0) public {
        require(!(address(msg.sender)) == (address(stor_d)));
        require(arg0 < 0x6e);
        require(!arg0 > 0x96);
        stor_a = arg0;
        require(!arg0 < 0x6e);
        stor_a = arg0;
    }
    
    /// @custom:selector    0xf67abd87
    /// @custom:name        entryDetails
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function entryDetails(uint256 arg0) public view returns (bytes memory) {
        if (!arg0 < stor_c) {
            if (arg0 < stor_c) {
                if (arg0 < stor_c) {
                    if (0x038d7ea4c68000) {
                        if (arg0 < stor_c) {
                            var_a = 0x05;
                            var_b = var_b + 0x80;
                            address var_g = stor_map_e[(0x04 * arg0) + keccak256(var_a)];
                            uint256 var_h = (stor_map_f[(0x04 * arg0) + keccak256(var_a)]) / 0x038d7ea4c68000;
                            uint256 var_i = !(!bytes1(stor_map_g[(0x04 * arg0) + keccak256(var_a)]));
                            if (!var_b.length) {
                                return abi.encodePacked(var_g, var_h, var_i, (0x20 + (0x20 + (0x20 + (0x20 + var_b)))) - var_b, var_b.length);
                                return abi.encodePacked(var_g, var_h, var_i, (0x20 + (0x20 + (0x20 + (0x20 + var_b)))) - var_b, var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_m));
                            }
                        }
                    }
                }
            }
            var_c = 0;
            if (!0 < var_p) {
                if (!0x20 < var_p) {
                }
                if (!var_p) {
                    return abi.encodePacked(0, 0, 0, (0x20 + (0x20 + (0x20 + (0x20 + var_b)))) - var_b, var_p, (~((0x0100 ** (0x20 - (bytes1(var_p)))) - 0x01)) & (var_r));
                    return abi.encodePacked(0, 0, 0, (0x20 + (0x20 + (0x20 + (0x20 + var_b)))) - var_b, var_p);
                }
            }
        }
    }
    
    /// @custom:selector    0xa6f9dae1
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0) public {
        if (!(address(msg.sender)) == (address(stor_d))) {
            stor_d = (address(arg0)) | (uint96(stor_d));
        }
    }
    
    /// @custom:selector    0x8a65d874
    /// @custom:name        userStats
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function userStats(address arg0) public view returns (bytes memory) {
        address var_a = arg0;
        if (address(stor_map_h[var_a]) == 0) {
            var_a = arg0;
            var_c = var_c + 0x60;
            if (!var_c.length) {
                return abi.encodePacked(stor_map_i[var_a], stor_map_j[var_a], (0x20 + (0x20 + (0x20 + var_c))) - var_c, var_c.length);
                return abi.encodePacked(stor_map_i[var_a], stor_map_j[var_a], (0x20 + (0x20 + (0x20 + var_c))) - var_c, var_c.length, (~((0x0100 ** (0x20 - (bytes1(var_c.length)))) - 0x01)) & (var_l));
            }
            var_d = 0;
            if (!0 < var_o) {
                if (!0x20 < var_o) {
                }
                if (!var_o) {
                    return abi.encodePacked(0, 0, (0x20 + (0x20 + (0x20 + var_c))) - var_c, var_o, (~((0x0100 ** (0x20 - (bytes1(var_o)))) - 0x01)) & (var_q));
                    return abi.encodePacked(0, 0, (0x20 + (0x20 + (0x20 + var_c))) - var_c, var_o);
                }
            }
        }
    }
}