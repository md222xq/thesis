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
    
    /// @custom:selector    0xee4ae2c9
    /// @custom:name        sendMoney
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function sendMoney(address arg0, uint256 arg1) public {
        require(address(msg.sender) == (address(stor_a)));
        (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode());
    }
    
    /// @custom:selector    0x4506e935
    /// @custom:name        depositsCount
    function depositsCount() public view returns (uint256) {
        return stor_b;
    }
    
    /// @custom:selector    0x853828b6
    /// @custom:name        withdrawAll
    function withdrawAll() public {
        require(address(msg.sender) == (address(stor_a)));
        require(address(msg.sender) == (address(stor_a)));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
    
    /// @custom:selector    0x2e1a7d4d
    /// @custom:name        withdraw
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function withdraw(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
}