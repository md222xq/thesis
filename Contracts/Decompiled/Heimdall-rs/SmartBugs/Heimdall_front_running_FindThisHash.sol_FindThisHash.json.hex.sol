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
    
    /// @custom:selector    0x09bd5a60
    /// @custom:name        hash
    function hash() public pure returns (uint256) {
        return 0xb5b5b97fafd9855eec9b41f74dfb6c38f5951141f9a3ecd7f44d5479b630ee0a;
    }
    
    /// @custom:selector    0x76fe1e92
    /// @custom:name        solve
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function solve(string memory arg0) public {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg0)) / 0x20) * 0x20));
        var_c = msg.data[36:36];
        require(var_a.length < 0x20);
        require((var_a.length - 0x20) < 0x20);
        require(0xb5b5b97fafd9855eec9b41f74dfb6c38f5951141f9a3ecd7f44d5479b630ee0a == (uint256(keccak256(var_h))));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !0x3635c9adc5dea00000 * 0x08fc, value: 0x3635c9adc5dea00000 }(abi.encode());
        if (((var_a.length - 0x20) - 0x20) < 0x20) {
        }
        if (0xb5b5b97fafd9855eec9b41f74dfb6c38f5951141f9a3ecd7f44d5479b630ee0a == (uint256(keccak256(var_h)))) {
        }
    }
}