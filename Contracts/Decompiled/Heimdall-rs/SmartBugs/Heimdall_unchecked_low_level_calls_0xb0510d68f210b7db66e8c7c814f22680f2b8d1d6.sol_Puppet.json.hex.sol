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
    
    mapping(bytes32 => bytes32) public stor_map_b;
    mapping(uint256 => bytes32) public stor_map_a;
    
    /// @custom:selector    0x9811c7c1
    /// @custom:name        target
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function target(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_a[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x35898c89
    /// @custom:name        master
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function master(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_a[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x3ccfd60b
    /// @custom:name        withdraw
    function withdraw() public {
        var_a = 0;
        require(address(msg.sender) == (address(stor_map_b[var_a])));
        var_a = 0;
        (bool success, bytes memory ret0) = address(stor_map_b[var_a]).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
}