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
    
    mapping(bytes32 => bytes32) public stor_map_a;
    
    /// @custom:selector    0x5fd8c710
    /// @custom:name        withdrawBalance
    function withdrawBalance() public {
        address var_a = msg.sender;
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: stor_map_a[var_a] }(abi.encode());
        stor_map_a[var_a] = 0;
    }
    
    /// @custom:selector    0xc0e317fb
    /// @custom:name        addToBalance
    function addToBalance() public payable {
        address var_a = msg.sender;
        stor_map_a[var_a] = stor_map_a[var_a] + msg.value;
    }
    
    /// @custom:selector    0xf8b2cb4f
    /// @custom:name        getBalance
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function getBalance(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_a[var_a];
    }
}