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
    
    uint256 public stor_a;
    
    /// @custom:selector    0x4c4f50f3
    /// @custom:name        underflowtostate
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function underflowtostate(uint256 arg0) public {
        stor_a = stor_a - arg0;
    }
    
    /// @custom:selector    0x06661abd
    /// @custom:name        count
    function count() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0xdef92d68
    /// @custom:name        overflowaddtostate
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function overflowaddtostate(uint256 arg0) public {
        stor_a = stor_a + arg0;
    }
    
    /// @custom:selector    0xe6dca5ea
    /// @custom:name        overflowmulocalonly
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function overflowmulocalonly(uint256 arg0) public view {
    }
    
    /// @custom:selector    0x5c68bc06
    /// @custom:name        overflowmultostate
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function overflowmultostate(uint256 arg0) public {
        stor_a = stor_a * arg0;
    }
    
    /// @custom:selector    0x0642f32a
    /// @custom:name        overflowlocalonly
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function overflowlocalonly(uint256 arg0) public view {
    }
    
    /// @custom:selector    0x69fb0f5d
    /// @custom:name        underflowlocalonly
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function underflowlocalonly(uint256 arg0) public view {
    }
}