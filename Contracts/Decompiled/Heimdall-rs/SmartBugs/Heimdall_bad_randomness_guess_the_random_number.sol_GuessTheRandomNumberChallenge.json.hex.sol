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
    
    uint8 public stor_a;
    
    /// @custom:selector    0xb2fa1c9e
    /// @custom:name        isComplete
    function isComplete() public view returns (bool) {
        return !(!(address(this).balance) == 0);
    }
    
    /// @custom:selector    0x4ba4c16b
    /// @custom:name        guess
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function guess(uint8 arg0) public payable {
        require(msg.value == 0x0de0b6b3a7640000);
        require(!(bytes1(arg0)) == (bytes1(stor_a)));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !0x1bc16d674ec80000 * 0x08fc, value: 0x1bc16d674ec80000 }(abi.encode());
    }
}