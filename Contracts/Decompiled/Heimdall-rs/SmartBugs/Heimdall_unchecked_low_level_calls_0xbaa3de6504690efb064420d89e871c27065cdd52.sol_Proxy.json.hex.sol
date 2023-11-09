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
    
    address public stor_a;
    
    /// @custom:selector    0xbe6d055a
    /// @custom:name        proxy
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function proxy(address arg0, bytes memory arg1) public payable {
        bytes memory var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        if (!var_a.length) {
            (bool success, bytes memory ret0) = address(arg0).call{ value: msg.value }(abi.encode(~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01) & (var_f)));
            (bool success, bytes memory ret0) = address(arg0).call{ value: msg.value }(abi.encode());
        }
    }
    
    /// @custom:selector    0x4fb2e45d
    /// @custom:name        transferOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function transferOwner(address arg0) public {
        if (!(address(msg.sender)) == (address(stor_a))) {
            stor_a = (address(arg0)) | (uint96(stor_a));
        }
    }
}