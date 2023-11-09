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
    mapping(bytes32 => bytes32) public stor_map_c;
    mapping(bytes32 => bytes32) public stor_map_d;
    mapping(bytes32 => bytes32) public stor_map_e;
    
    /// @custom:selector    0x52efea6e
    /// @custom:name        clear
    function clear() public {
        require(stor_a > 0x05dc);
        stor_a = 0;
    }
    
    /// @custom:selector    0xaefee53e
    /// @custom:name        getLengthArray
    function getLengthArray() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0x529f6f2d
    /// @custom:name        insertNnumbers
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function insertNnumbers(uint256 arg0, uint256 arg1) public {
        if (!0 < arg1) {
            if (!stor_a == stor_b) {
                stor_a = 0x01 + stor_a;
                if (stor_a < stor_b) {
                    stor_map_c[var_a] = arg0;
                    if (!0x01 < arg1) {
                    }
                }
                stor_b = stor_b + 0x01;
                if (!stor_b > (stor_b)) {
                    var_a = 0x01;
                    if (!(keccak256(var_a) + stor_b) > (keccak256(var_a) + (stor_b))) {
                        stor_map_d[var_a] = 0;
                        if (!(keccak256(var_a) + stor_b) > (0x01 + (keccak256(var_a) + (stor_b)))) {
                        }
                        stor_a = 0x01 + stor_a;
                        if (stor_a < stor_b) {
                            stor_map_c[var_a] = arg0;
                            if (!0x01 < arg1) {
                            }
                        }
                    }
                    stor_a = 0x01 + stor_a;
                    if (stor_a < stor_b) {
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x263e5d3c
    /// @custom:name        clearDOS
    function clearDOS() public {
        if (stor_a > 0x05dc) {
            var_b = var_b + 0x20;
            if (!0) {
                var_c = this.code[767:767]
                stor_b = var_b.length;
                if (!var_b.length) {
                    if (!((0x20 + var_b) + (0x20 * var_b.length)) > (0x20 + var_b)) {
                        stor_map_e[var_d] = var_c;
                        if (!((0x20 + var_b) + (0x20 * var_b.length)) > (0x20 + (0x20 + var_b))) {
                        }
                        if (!(keccak256(var_d) + stor_b) > keccak256(var_d)) {
                            stor_map_e[var_d] = 0;
                            if (!(keccak256(var_d) + stor_b) > (0x01 + keccak256(var_d))) {
                            }
                            stor_a = 0;
                        }
                    }
                    if (!(keccak256(var_d) + stor_b) > keccak256(var_d)) {
                    }
                }
                stor_b = var_b.length;
                require(stor_a > 0x05dc);
            }
        }
    }
    
    /// @custom:selector    0x6a6f7257
    /// @custom:name        getRealLengthArray
    function getRealLengthArray() public view returns (uint256) {
        return stor_b;
    }
}