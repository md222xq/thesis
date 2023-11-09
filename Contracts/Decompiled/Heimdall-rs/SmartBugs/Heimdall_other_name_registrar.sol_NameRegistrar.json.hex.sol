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
    
    address public stor_e;
    bytes32 public stor_c;
    mapping(address => address) public stor_map_a;
    mapping(address => address) public stor_map_b;
    mapping(address => bytes32) public stor_map_g;
    mapping(address => bytes32) public stor_map_h;
    mapping(bytes32 => bytes32) public stor_map_f;
    mapping(uint256 => bytes32) public stor_map_d;
    
    /// @custom:selector    0xe59a0407
    /// @custom:name        registeredNameRecord
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function registeredNameRecord(address arg0) public view returns (bytes memory) {
        address var_b = arg0;
        address var_d = stor_map_b[var_b];
        return abi.encodePacked(uint256(stor_map_a[var_b]), var_d);
    }
    
    /// @custom:selector    0x6a5e2650
    /// @custom:name        unlocked
    function unlocked() public view returns (bool) {
        var_a = !(!bytes1(stor_c));
        return var_a;
    }
    
    /// @custom:selector    0x5c23bdf5
    /// @custom:name        resolve
    /// @param              arg0 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    function resolve(bytes32 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_d[var_b];
        return var_c;
    }
    
    /// @custom:selector    0xd22057a9
    /// @custom:name        register
    /// @param              arg0 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function register(bytes32 arg0, address arg1) public {
        uint256 stor_c = arg0;
        stor_e = (address(arg1)) | (uint96(stor_e));
        uint256 var_a = arg0;
        stor_map_f[var_a] = (address(arg1)) | (uint96(stor_map_f[var_a]));
        uint256 stor_map_g[var_a] = stor_c;
        stor_map_h[var_a] = (address(stor_e)) | (uint96(stor_map_h[var_a]));
        require(bytes1(stor_c));
    }
}