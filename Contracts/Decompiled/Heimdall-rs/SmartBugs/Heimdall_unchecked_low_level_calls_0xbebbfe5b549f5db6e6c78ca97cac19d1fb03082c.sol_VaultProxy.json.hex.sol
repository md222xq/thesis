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
    
    address public stor_b;
    bytes32 public stor_a;
    mapping(bytes32 => bytes32) public stor_map_c;
    mapping(bytes32 => bytes32) public stor_map_d;
    
    /// @custom:selector    0xb4a99a4e
    /// @custom:name        Owner
    function Owner() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x2e1a7d4d
    /// @custom:name        withdraw
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function withdraw(uint256 arg0) public {
        require(!(address(msg.sender)) == (address(stor_b)));
        require(!arg0 > 0);
        address var_a = msg.sender;
        require(stor_map_c[var_a] < arg0);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
        if (!arg0 > 0) {
            (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
        }
    }
    
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
    
    /// @custom:selector    0x2d2c44f2
    /// @custom:name        Vault
    function Vault() public payable {
        if (!(address(msg.sender)) == (address(tx.origin))) {
            stor_a = (address(msg.sender)) | (uint96(stor_a));
            if (!msg.value > 0x06f05b59d3b20000) {
                address var_a = msg.sender;
                stor_map_c[var_a] = stor_map_c[var_a] + msg.value;
            }
        }
    }
    
    /// @custom:selector    0x3ee2d7c2
    /// @custom:name        Deposits
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Deposits(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_d[var_b];
    }
    
    /// @custom:selector    0x4fb2e45d
    /// @custom:name        transferOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function transferOwner(address arg0) public {
        if (!(address(msg.sender)) == (address(stor_b))) {
            stor_b = (address(arg0)) | (uint96(stor_b));
        }
    }
    
    /// @custom:selector    0xd0e30db0
    /// @custom:name        deposit
    function deposit() public payable {
        if (!msg.value > 0x06f05b59d3b20000) {
            address var_a = msg.sender;
            stor_map_c[var_a] = stor_map_c[var_a] + msg.value;
        }
    }
}