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
    bytes32 public stor_c;
    mapping(bytes32 => bytes32) public stor_map_b;
    mapping(bytes32 => bytes32) public stor_map_d;
    
    /// @custom:selector    0x2e51673d
    /// @custom:name        numberCreditors
    function numberCreditors() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0x357785a5
    /// @custom:name        addCreditors
    function addCreditors() public returns (bool) {
        if (!0 < 0x015e) {
            return 0x01;
            stor_a = stor_a + 0x01;
            var_b = 0;
            stor_map_b[var_b] = (address(msg.sender)) | (uint96(stor_map_b[var_b]));
            if (!0x01 < 0x015e) {
            }
        }
    }
    
    /// @custom:selector    0x8292a656
    /// @custom:name        iWin
    function iWin() public view returns (bool) {
        var_a = !(!bytes1(stor_c));
        return var_a;
    }
    
    /// @custom:selector    0x0d870b7f
    /// @custom:name        emptyCreditors
    function emptyCreditors() public {
        if (!stor_a > 0x05dc) {
            var_b = var_b + 0x20;
            if (!0) {
                var_c = this.code[803:803]
                stor_a = var_b.length;
                var_d = 0;
                if (!var_b.length) {
                    if (!((0x20 + var_b) + (0x20 * var_b.length)) > (0x20 + var_b)) {
                        stor_map_d[var_d] = (address(var_c)) | (uint96(stor_map_d[var_d]));
                        if (!((0x20 + var_b) + (0x20 * var_b.length)) > (0x20 + (0x20 + var_b))) {
                        }
                        if (!(keccak256(var_d) + stor_a) > keccak256(var_d)) {
                            uint96 stor_map_d[var_d] = stor_map_d[var_d];
                            if (!(keccak256(var_d) + stor_a) > (0x01 + keccak256(var_d))) {
                            }
                            stor_c = (0x01) | (uint248(stor_c));
                        }
                    }
                    if (!(keccak256(var_d) + stor_a) > keccak256(var_d)) {
                    }
                }
                stor_a = var_b.length;
                if (!var_b.length) {
                }
            }
        }
    }
}