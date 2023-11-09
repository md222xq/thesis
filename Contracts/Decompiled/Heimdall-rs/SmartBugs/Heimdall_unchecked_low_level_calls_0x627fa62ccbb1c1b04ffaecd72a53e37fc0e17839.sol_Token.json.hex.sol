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
    
    /// @custom:selector    0xa6f9dae1
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0) public {
        if (!(address(stor_a)) == (address(msg.sender))) {
            stor_b = (address(arg0)) | (uint96(stor_b));
        }
    }
    
    /// @custom:selector    0xc7de2d13
    /// @custom:name        WithdrawToken
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function WithdrawToken(address arg0, uint256 arg1, address arg2) public {
        if (!(address(stor_a)) == (address(msg.sender))) {
            (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_b) / 0x0100000000000000000000000000000000000000000000000000000000))));
        }
    }
    
    /// @custom:selector    0xbd9b6d86
    /// @custom:name        confirmOwner
    function confirmOwner() public {
        if (!(address(msg.sender)) == (address(stor_b))) {
            stor_a = (address(stor_b)) | (uint96(stor_a));
        }
    }
}