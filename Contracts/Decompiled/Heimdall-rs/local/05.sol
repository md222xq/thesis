// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @title            Decompiled Contract
/// @author           Jonathan Becker <jonathan@jbecker.dev>
/// @custom:version   heimdall-rs v0.6.3
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
    
    /// @custom:selector    0x9189fec1
    /// @custom:name        Unresolved_9189fec1
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_9189fec1(bytes memory arg0) public payable {
        require(arg0 == arg0);
        require(!((block.number - 0x01) > block.number), "Failed to send Ether");
        var_f = ((0x20 + var_f) + 0x20) + 0x20;
        require(arg0 - (keccak256(var_g) >> 0), "Failed to send Ether");
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: 0x0de0b6b3a7640000 }(abi.encode());
        require(ret0.length == 0, "Failed to send Ether");
    }
}