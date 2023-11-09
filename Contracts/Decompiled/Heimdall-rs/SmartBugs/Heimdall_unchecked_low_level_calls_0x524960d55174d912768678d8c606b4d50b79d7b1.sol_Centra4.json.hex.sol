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
    
    /// @custom:selector    0x8a4068dd
    /// @custom:name        transfer
    function transfer() public returns (bool) {
        (bool success, bytes memory ret0) = address(0x96a65609a7b84e8842732deb08f56c3e21ac6f8a).call{ value: 0 }(abi.encode(0x7265676973746572000000000000000000000000000000000000000000000000, 0x43656e747261546f6b656e000000000000000000000000000000000000000000));
        (bool success, bytes memory ret0) = address(0x96a65609a7b84e8842732deb08f56c3e21ac6f8a).call{ value: 0 }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_c) / 0x0100000000000000000000000000000000000000000000000000000000)), 0x43656e747261546f6b656e000000000000000000000000000000000000000000));
        return 0;
        return 0x01;
    }
}