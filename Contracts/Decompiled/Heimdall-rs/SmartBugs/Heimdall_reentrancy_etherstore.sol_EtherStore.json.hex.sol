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
    
    bytes32 public stor_c;
    mapping(bytes32 => bytes32) public stor_map_a;
    mapping(bytes32 => bytes32) public stor_map_b;
    
    /// @custom:selector    0x27e235e3
    /// @custom:name        balances
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balances(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_a[var_b];
    }
    
    /// @custom:selector    0x155dd5ee
    /// @custom:name        withdrawFunds
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function withdrawFunds(uint256 arg0) public {
        address var_a = msg.sender;
        require(!stor_map_b[var_a] < arg0);
        require(!arg0 > stor_c);
        var_a = msg.sender;
        require(!block.timestamp < (stor_map_b[var_a] + 0x093a80));
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: arg0 }(abi.encode());
        var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] - arg0;
        stor_map_b[var_a] = block.timestamp;
    }
    
    /// @custom:selector    0x1031ec31
    /// @custom:name        lastWithdrawTime
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function lastWithdrawTime(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_a[var_b];
    }
    
    /// @custom:selector    0xe2c41dbc
    /// @custom:name        depositFunds
    function depositFunds() public payable {
        address var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] + msg.value;
    }
    
    /// @custom:selector    0x7ddfe78d
    /// @custom:name        withdrawalLimit
    function withdrawalLimit() public view returns (uint256) {
        return stor_c;
    }
}