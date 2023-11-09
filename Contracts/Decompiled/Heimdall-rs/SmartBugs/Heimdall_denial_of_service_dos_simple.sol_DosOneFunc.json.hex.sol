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
    mapping(bytes32 => bytes32) public stor_map_b;
    mapping(bytes32 => bytes32) public stor_map_c;
    
    /// @custom:selector    0x20227db8
    /// @custom:name        ifillArray
    function ifillArray() public returns (bool) {
        if (!stor_a < 0x05dc) {
            var_b = var_b + 0x20;
            if (!0) {
                var_c = this.code[603:603]
                stor_a = var_b.length;
                var_d = 0;
                if (!var_b.length) {
                    if (!((0x20 + var_b) + (0x20 * var_b.length)) > (0x20 + var_b)) {
                        stor_map_b[var_d] = (address(var_c)) | (uint96(stor_map_b[var_d]));
                        if (!((0x20 + var_b) + (0x20 * var_b.length)) > (0x20 + (0x20 + var_b))) {
                        }
                        if (!(keccak256(var_d) + stor_a) > keccak256(var_d)) {
                            uint96 stor_map_b[var_d] = stor_map_b[var_d];
                            if (!(keccak256(var_d) + stor_a) > (0x01 + keccak256(var_d))) {
                            }
                            return 0;
                        }
                    }
                    if (!(keccak256(var_d) + stor_a) > keccak256(var_d)) {
                    }
                }
                stor_a = var_b.length;
                if (!var_b.length) {
                }
            }
            if (!0 < 0x015e) {
                return 0x01;
                stor_a = stor_a + 0x01;
                var_d = 0;
                stor_map_c[var_d] = (address(msg.sender)) | (uint96(stor_map_c[var_d]));
                if (!0x01 < 0x015e) {
                }
            }
        }
    }
}