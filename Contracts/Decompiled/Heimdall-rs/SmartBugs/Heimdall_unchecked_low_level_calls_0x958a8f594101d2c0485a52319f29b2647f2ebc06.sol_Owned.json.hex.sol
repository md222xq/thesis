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
    bytes32 public stor_b;
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0xa6f9dae1
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        stor_b = (address(arg0)) | (uint96(stor_b));
    }
    
    /// @custom:selector    0xb61d27f6
    /// @custom:name        execute
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function execute(address arg0, uint256 arg1, bytes memory arg2) public {
        bytes memory var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        if (address(msg.sender) == (address(stor_a))) {
            require(address(msg.sender) == (address(stor_a)));
            (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode(~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01) & (var_f)));
            (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode());
        }
    }
    
    /// @custom:selector    0xd4ee1d90
    /// @custom:name        newOwner
    function newOwner() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0x79ba5097
    /// @custom:name        acceptOwnership
    function acceptOwnership() public {
        if (!(address(msg.sender)) == (address(stor_b))) {
            stor_a = (address(stor_b)) | (uint96(stor_a));
        }
    }
}