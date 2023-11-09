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
    
    /// @custom:selector    0x4d5f327c
    /// @custom:name        supportsToken
    function supportsToken() public returns (uint256) {
        if (stor_a) {
            var_c = 0x08 + (0x20 + var_c);
            if (var_c.length < 0x20) {
                if ((var_c.length - 0x20) < 0x20) {
                    return uint256(keccak256(var_i));
                    require(bytes1(stor_a));
                }
            }
            return uint256(keccak256(var_i));
        }
        stor_a = (0x01) | (uint248(stor_a));
        require(address(msg.sender).code.length);
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: 0 }(abi.encode(0xca5d088000000000000000000000000000000000000000000000000000000000));
        var_c = 0x08 + (0x20 + var_c);
        if (var_c.length < 0x20) {
        }
    }
    
    /// @custom:selector    0xf55332ab
    /// @custom:name        call
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function call(address arg0) public {
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0xca5d088000000000000000000000000000000000000000000000000000000000));
    }
}