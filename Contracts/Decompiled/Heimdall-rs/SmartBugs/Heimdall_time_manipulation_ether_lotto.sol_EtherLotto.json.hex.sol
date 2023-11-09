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
    
    /// @custom:selector    0x4ba2363a
    /// @custom:name        pot
    function pot() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0x76cdb03b
    /// @custom:name        bank
    function bank() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0x93e84cd9
    /// @custom:name        play
    function play() public payable {
        require(msg.value == 0x0a);
        stor_a = stor_a + msg.value;
        require(0x02);
        require(!((keccak256(var_b)) % 0x02) == 0);
        (bool success, bytes memory ret0) = address(stor_b).call{ gas: !0x08fc, value: 0x01 }(abi.encode());
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!stor_a - 0x01) * 0x08fc, value: stor_a - 0x01 }(abi.encode());
        stor_a = 0;
    }
}