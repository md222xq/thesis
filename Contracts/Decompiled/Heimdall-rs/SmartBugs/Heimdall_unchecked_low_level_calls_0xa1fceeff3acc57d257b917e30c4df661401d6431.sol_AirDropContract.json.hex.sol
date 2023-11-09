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
    
    /// @custom:selector    0x72a503be
    /// @custom:name        transfer
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfer(address arg0, address[] memory arg1, uint256[] memory arg2) public returns (bool) {
        address[] memory var_a = var_a + (0x20 + (0x20 * (arg1)));
        var_a = var_a + (0x20 + (0x20 * (arg2)));
        require(!(address(arg0)) == 0);
        require(!(address(arg0)) == (address(this)));
        require(var_a.length > 0);
        require(var_a.length > 0);
        require(var_a.length == var_a.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_g) / 0x0100000000000000000000000000000000000000000000000000000000)), 0x7432353629000000000000000000000000000000000000000000000000000000));
        return 0x01;
    }
}