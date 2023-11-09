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
    mapping(bytes32 => bytes32) public stor_map_b;
    
    /// @custom:selector    0x27e235e3
    /// @custom:name        balances
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balances(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_a[var_b];
    }
    
    /// @custom:selector    0x3ccfd60b
    /// @custom:name        withdraw
    function withdraw() public {
        address var_a = msg.sender;
        require(stor_map_b[var_a] > 0);
        var_a = msg.sender;
        require(block.timestamp > stor_map_b[var_a]);
        stor_map_b[var_a] = 0;
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !stor_map_b[var_a] * 0x08fc, value: stor_map_b[var_a] }(abi.encode());
    }
    
    /// @custom:selector    0x79af55e4
    /// @custom:name        increaseLockTime
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function increaseLockTime(uint256 arg0) public {
        address var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] + arg0;
    }
    
    /// @custom:selector    0xa4beda63
    /// @custom:name        lockTime
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function lockTime(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_a[var_b];
    }
    
    /// @custom:selector    0xd0e30db0
    /// @custom:name        deposit
    function deposit() public payable {
        address var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] + msg.value;
        stor_map_b[var_a] = block.timestamp + 0x093a80;
    }
}