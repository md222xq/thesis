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
    
    mapping(address => address) public stor_map_a;
    
    /// @custom:selector    0x7d1c54f8
    /// @custom:name        getFirstWithdrawalBonus
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function getFirstWithdrawalBonus(address arg0) public {
        address var_a = arg0;
        require(!bytes1(stor_map_a[var_a]));
        var_a = arg0;
        stor_map_a[var_a] = stor_map_a[var_a] + 0x64;
        stor_map_a[var_a] = 0;
        (bool success, bytes memory ret0) = address(arg0).call{ value: stor_map_a[var_a] }(abi.encode());
        var_a = arg0;
        stor_map_a[var_a] = (0x01) | (uint248(stor_map_a[var_a]));
    }
    
    /// @custom:selector    0xb86e321c
    /// @custom:name        withdrawReward
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function withdrawReward(address arg0) public {
        stor_map_a[var_a] = 0;
        (bool success, bytes memory ret0) = address(arg0).call{ value: stor_map_a[var_a] }(abi.encode());
    }
}