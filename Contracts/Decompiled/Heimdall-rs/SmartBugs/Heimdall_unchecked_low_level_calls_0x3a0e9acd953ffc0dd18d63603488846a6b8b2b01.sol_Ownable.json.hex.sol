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
    
    address public stor_a;
    bytes32 public stor_b;
    
    /// @custom:selector    0xbd9b6d86
    /// @custom:name        confirmOwner
    function confirmOwner() public {
        if (!(address(msg.sender)) == (address(stor_a))) {
            stor_b = (address(stor_a)) | (uint96(stor_b));
        }
    }
    
    /// @custom:selector    0xa6f9dae1
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0) public {
        if (!(address(stor_b)) == (address(msg.sender))) {
            stor_a = (address(arg0)) | (uint96(stor_a));
        }
    }
}