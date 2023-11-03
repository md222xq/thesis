// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @title            Decompiled Contract
/// @author           Jonathan Becker <jonathan@jbecker.dev>
/// @custom:version   heimdall-rs v0.6.3
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
    
    mapping(bytes32 => bytes32) public stor_map_a;
    
    /// @custom:selector    0xf8b2cb4f
    /// @custom:name        Unresolved_f8b2cb4f
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_f8b2cb4f(address arg0) public view returns (uint256) {
        require(arg0 == (address(arg0)));
        address var_a = arg0;
        return stor_map_a[var_a];
    }
    
    /// @custom:selector    0x5fd8c710
    /// @custom:name        Unresolved_5fd8c710
    function Unresolved_5fd8c710() public {
        address var_a = msg.sender;
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !stor_map_a[var_a] * 0x08fc, value: stor_map_a[var_a] }(abi.encode());
        stor_map_a[var_a] = 0;
    }
    
    /// @custom:selector    0xc0e317fb
    /// @custom:name        Unresolved_c0e317fb
    function Unresolved_c0e317fb() public payable {
        address var_a = msg.sender;
        if (!stor_map_a[var_a] > (stor_map_a[var_a] + msg.value)) {
            var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            stor_map_a[var_a] = stor_map_a[var_a] + msg.value;
        }
    }
}