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
    
    /// @custom:selector    0xeedc966a
    /// @custom:name        tokenBalance
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function tokenBalance(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_a[var_b];
    }
    
    /// @custom:selector    0xca5d0880
    /// @custom:name        airDrop
    function airDrop() public {
        address var_a = msg.sender;
        require(stor_map_b[var_a] == 0);
        require(address(msg.sender).code.length);
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: 0 }(abi.encode(0x4d5f327c00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        var_e = 0x08 + (0x20 + var_e);
        require(var_e.length < 0x20);
        require((var_e.length - 0x20) < 0x20);
        require(uint256(keccak256(var_k)) == (uint256(var_e.length)));
        var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] + 0x14;
        if (((var_e.length - 0x20) - 0x20) < 0x20) {
        }
        if (uint256(keccak256(var_k)) == (uint256(var_e.length))) {
        }
    }
}