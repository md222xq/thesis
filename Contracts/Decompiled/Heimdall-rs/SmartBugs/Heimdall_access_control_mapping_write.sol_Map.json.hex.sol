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
    
    bytes32 public stor_d;
    uint256 public stor_a;
    mapping(uint256 => bytes32) public stor_map_b;
    mapping(uint256 => bytes32) public stor_map_c;
    
    /// @custom:selector    0x1ab06ee5
    /// @custom:name        set
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function set(uint256 arg0, uint256 arg1) public {
        if (stor_a > arg0) {
            if (arg0 < stor_a) {
                stor_map_b[var_a] = arg1;
            }
            stor_a = arg0 + 0x01;
            if (!stor_a > (stor_a)) {
                var_a = 0x01;
                if (!(keccak256(var_a) + stor_a) > (keccak256(var_a) + (stor_a))) {
                    stor_map_c[var_a] = 0;
                    if (!(keccak256(var_a) + stor_a) > (0x01 + (keccak256(var_a) + (stor_a)))) {
                    }
                    if (arg0 < stor_a) {
                        stor_map_b[var_a] = arg1;
                    }
                }
                if (arg0 < stor_a) {
                }
            }
        }
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0x3ccfd60b
    /// @custom:name        withdraw
    function withdraw() public {
        require(address(msg.sender) == (address(stor_d)));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
    
    /// @custom:selector    0x9507d39a
    /// @custom:name        get
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function get(uint256 arg0) public view returns (uint256) {
        if (arg0 < stor_a) {
            var_a = 0x01;
            return stor_map_b[var_a];
        }
    }
}