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
    
    bytes32 public stor_b;
    (bool success, bytes public stor_a;
    
    /// @custom:selector    0x3b304147
    /// @custom:name        draw
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function draw(uint256 arg0) public {
        if (!block.timestamp > 0) {
            if (!block.timestamp > 0) {
                if (msg.value < 0x0de0b6b3a7640000) {
                    stor_a = (address(msg.sender)) | (uint96(stor_a));
                    stor_b = block.timestamp;
                }
                (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !msg.value * 0x08fc, value: msg.value }(abi.encode());
                if (!(address(this).balance) > 0) {
                    (bool success, bytes memory ret0) = address(stor_a).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
                }
            }
            if (!(block.timestamp - block.timestamp) > 0x015180) {
                (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !msg.value * 0x08fc, value: msg.value }(abi.encode());
                if (!(address(this).balance) > 0) {
                }
                if (msg.value < 0x0de0b6b3a7640000) {
                }
            }
        }
    }
    
    /// @custom:selector    0x81cbba82
    /// @custom:name        randomGen
    function randomGen() public view returns (uint256) {
        return block.timestamp;
    }
}