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
    
    address public stor_a;
    
    /// @custom:selector    0x7362377b
    /// @custom:name        withdrawEther
    function withdrawEther() public {
        (bool success, bytes memory ret0) = address(stor_a).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
    
    /// @custom:selector    0x2570e31e
    /// @custom:name        getTokens
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function getTokens(uint256 arg0, address arg1) public {
        if (!0 < arg0) {
            (bool success, bytes memory ret0) = address(arg1).call{ value: 0 }(abi.encode());
            if (!0x01 < arg0) {
            }
        }
    }
    
    /// @custom:selector    0x49df728c
    /// @custom:name        withdrawTokens
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function withdrawTokens(address arg0) public {
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
    }
}