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
    bytes32 public stor_b;
    
    /// @custom:selector    0x1998aeef
    /// @custom:name        bid
    function bid() public payable {
        require(msg.value > stor_a);
        require(address(stor_b) == 0);
        (bool success, bytes memory ret0) = address(stor_b).call{ gas: !stor_a * 0x08fc, value: stor_a }(abi.encode());
        stor_b = (address(msg.sender)) | (uint96(stor_b));
        stor_a = msg.value;
        stor_b = (address(msg.sender)) | (uint96(stor_b));
        stor_a = msg.value;
    }
}