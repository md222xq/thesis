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
    bytes32 public stor_e;
    bytes32 public stor_f;
    bytes32 public stor_g;
    mapping(bytes32 => bytes32) public stor_map_c;
    mapping(bytes32 => bytes32) public stor_map_d;
    
    event Approval(address arg0, address arg1, uint256 arg2);
    event Transfer(address arg0, address arg1, uint256 arg2);
    
    /// @custom:selector    0x06fdde03
    /// @custom:name        name
    function name() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_a));
    }
    
    /// @custom:selector    0x54fd4d50
    /// @custom:name        version
    function version() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_b));
    }
    
    /// @custom:selector    0xcae9ca51
    /// @custom:name        approveAndCall
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approveAndCall(address arg0, uint256 arg1, bytes memory arg2) public returns (bool) {
        bytes memory var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        var_d = arg0;
        stor_map_c[var_d] = arg1;
        emit Approval(address(msg.sender), address(arg0), arg1);
        require(!bytes1(var_a.length));
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_h) / 0x0100000000000000000000000000000000000000000000000000000000)), 0x616464726573732c627974657329000000000000000000000000000000000000));
        return 0x01;
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x01, 0x616464726573732c627974657329000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:name        transfer
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfer(address arg0, uint256 arg1) public returns (bool) {
        address var_a = msg.sender;
        require(!stor_map_d[var_a] < arg1);
        var_a = msg.sender;
        stor_map_d[var_a] = stor_map_d[var_a] - arg1;
        var_a = arg0;
        stor_map_d[var_a] = stor_map_d[var_a] + arg1;
        emit Transfer(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0xdd62ed3e
    /// @custom:name        allowance
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function allowance(address arg0, address arg1) public view returns (uint256) {
        var_a = arg1;
        return stor_map_d[var_a];
    }
    
    /// @custom:selector    0x18160ddd
    /// @custom:name        totalSupply
    function totalSupply() public view returns (uint256) {
        return stor_e;
    }
    
    /// @custom:selector    0x95d89b41
    /// @custom:name        symbol
    function symbol() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_f));
    }
    
    /// @custom:selector    0x095ea7b3
    /// @custom:name        approve
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approve(address arg0, uint256 arg1) public returns (bool) {
        var_a = arg0;
        stor_map_d[var_a] = arg1;
        emit Approval(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:name        transferFrom
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transferFrom(address arg0, address arg1, uint256 arg2) public returns (bool) {
        address var_a = arg0;
        require(stor_map_d[var_a] < arg2);
        require(!stor_map_d[var_a] < arg2);
        var_a = arg1;
        stor_map_d[var_a] = stor_map_d[var_a] + arg2;
        var_a = arg0;
        stor_map_d[var_a] = stor_map_d[var_a] - arg2;
        var_a = msg.sender;
        stor_map_d[var_a] = stor_map_d[var_a] - arg2;
        emit Transfer(address(arg0), address(arg1), arg2);
        return 0x01;
        var_a = msg.sender;
        if (!stor_map_d[var_a] < arg2) {
        }
    }
    
    /// @custom:selector    0x313ce567
    /// @custom:name        decimals
    function decimals() public view returns (bool) {
        bytes1 var_a = stor_g;
        return var_a;
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        balanceOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balanceOf(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_d[var_a];
    }
}