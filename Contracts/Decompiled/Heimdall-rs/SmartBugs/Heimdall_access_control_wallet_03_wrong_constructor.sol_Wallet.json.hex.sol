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
    mapping(bytes32 => bytes32) public stor_map_a;
    
    /// @custom:selector    0x2e1a7d4d
    /// @custom:name        withdraw
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function withdraw(uint256 arg0) public {
        address var_a = msg.sender;
        require(!arg0 > stor_map_a[var_a]);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
        var_a = msg.sender;
        stor_map_a[var_a] = stor_map_a[var_a] - arg0;
    }
    
    /// @custom:selector    0xd0e30db0
    /// @custom:name        deposit
    function deposit() public payable {
        var_a = msg.sender;
        if ((stor_map_a[var_a] + msg.value) > stor_map_a[var_a]) {
            var_a = msg.sender;
            stor_map_a[var_a] = stor_map_a[var_a] + msg.value;
        }
    }
    
    /// @custom:selector    0x3e326048
    /// @custom:name        initWallet
    function initWallet() public {
        stor_b = (address(msg.sender)) | (uint96(stor_b));
    }
    
    /// @custom:selector    0x4ddaf8f2
    /// @custom:name        migrateTo
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function migrateTo(address arg0) public {
        require(address(stor_b) == (address(msg.sender)));
        (bool success, bytes memory ret0) = address(arg0).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
}