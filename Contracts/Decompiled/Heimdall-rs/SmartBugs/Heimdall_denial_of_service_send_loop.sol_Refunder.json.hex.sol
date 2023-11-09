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
    mapping(address => address) public stor_map_b;
    mapping(address => address) public stor_map_c;
    mapping(bytes32 => bytes32) public stor_map_d;
    
    /// @custom:selector    0x38e771ab
    /// @custom:name        refundAll
    function refundAll() public {
        require(!0 < stor_a);
        require(0 < stor_a);
        require(0 < stor_a);
        var_a = 0;
        address var_a = stor_map_b[var_a];
        (bool success, bytes memory ret0) = var_a.call{ gas: !stor_map_c[var_a] * 0x08fc, value: stor_map_c[var_a] }(abi.encode());
        if (!0x01 < stor_a) {
        }
    }
    
    /// @custom:selector    0xbc3da535
    /// @custom:name        refunds
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function refunds(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_d[var_b];
    }
}