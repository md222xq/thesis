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
    
    /// @custom:selector    0x52fba25c
    /// @custom:name        attack
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function attack(address arg0, uint256 arg1) public {
        require(0 > arg1);
        require(0 > arg1);
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x51294de700000000000000000000000000000000000000000000000000000000));
        require(address(this).code.length);
        (bool success, bytes memory ret0) = address(this).call{ gas: gasleft() - 0x07d0, value: 0 }(abi.encode(0x52fba25c00000000000000000000000000000000000000000000000000000000));
        if (!arg1 < 0x03ff) {
        }
    }
}