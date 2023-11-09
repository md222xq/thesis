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
    
    mapping(address => bytes32) public stor_map_a;
    
    /// @custom:selector    0x5fd8c710
    /// @custom:name        withdrawBalance
    function withdrawBalance() public {
        stor_map_a[var_a] = 0;
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !stor_map_a[var_a] * 0x08fc, value: stor_map_a[var_a] }(abi.encode());
    }
}