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
    
    /// @custom:selector    0xb2fa1c9e
    /// @custom:name        isComplete
    function isComplete() public view returns (bool) {
        return !(!(address(this).balance) < 0x0de0b6b3a7640000);
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        balanceOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balanceOf(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_a[var_b];
    }
    
    /// @custom:selector    0xe4849b32
    /// @custom:name        sell
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function sell(uint256 arg0) public {
        address var_a = msg.sender;
        require(!stor_map_b[var_a] < arg0);
        var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] - arg0;
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!arg0 * 0x0de0b6b3a7640000) * 0x08fc, value: arg0 * 0x0de0b6b3a7640000 }(abi.encode());
    }
    
    /// @custom:selector    0xd96a094a
    /// @custom:name        buy
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function buy(uint256 arg0) public payable {
        require(msg.value == (arg0 * 0x0de0b6b3a7640000));
        address var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] + arg0;
    }
}