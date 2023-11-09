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
    
    /// @custom:selector    0xcb4799f2
    /// @custom:name        getMetadata
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getMetadata(uint256 arg0, string memory arg1) public pure returns (bytes memory) {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        if (!arg0 == 0x01) {
            if (0 < 0x04) {
                if (!0 < 0x80) {
                    return 0x0f;
                    if (!0x20 < 0x80) {
                    }
                }
            }
            if (!arg0 == 0x02) {
                if (0 < 0x04) {
                    if (0x01 < 0x04) {
                        if (!0 < 0x80) {
                        }
                    }
                }
                if (!arg0 == 0x03) {
                    if (0 < 0x04) {
                        if (0x01 < 0x04) {
                            if (0x02 < 0x04) {
                                if (0x03 < 0x04) {
                                    if (!0 < 0x80) {
                                    }
                                }
                            }
                        }
                    }
                    if (!0 < 0x80) {
                    }
                }
            }
        }
    }
}