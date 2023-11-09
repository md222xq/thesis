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
    
    event Transfer(address arg0, address arg1, uint256 arg2);
    
    /// @custom:selector    0x90b98a11
    /// @custom:name        sendCoin
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function sendCoin(address arg0, uint256 arg1) public returns (bool) {
        address var_a = msg.sender;
        if (!stor_map_a[var_a] < arg1) {
            return 0;
            var_a = msg.sender;
            stor_map_a[var_a] = stor_map_a[var_a] - arg1;
            var_a = arg0;
            stor_map_a[var_a] = stor_map_a[var_a] + arg1;
            emit Transfer(address(msg.sender), address(arg0), arg1);
            return 0x01;
        }
    }
    
    /// @custom:selector    0xf8b2cb4f
    /// @custom:name        getBalance
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function getBalance(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_a[var_a];
    }
}