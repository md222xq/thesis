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
    mapping(bytes32 => bytes32) public stor_map_a;
    
    /// @custom:selector    0x853828b6
    /// @custom:name        withdrawAll
    function withdrawAll() public {
        address var_a = msg.sender;
        require(!stor_map_a[var_a] > 0);
        stor_b = stor_b - stor_map_a[var_a];
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: stor_map_a[var_a] }(abi.encode());
        stor_map_a[var_a] = 0;
    }
    
    /// @custom:selector    0xd0e30db0
    /// @custom:name        deposit
    function deposit() public payable {
        address var_a = msg.sender;
        stor_map_a[var_a] = stor_map_a[var_a] + msg.value;
        stor_b = stor_b + msg.value;
    }
}