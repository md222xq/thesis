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
    
    bytes32 public stor_a;
    bytes32 public stor_b;
    bytes32 public stor_c;
    
    /// @custom:selector    0x931c9b99
    /// @custom:name        Unresolved_931c9b99
    function Unresolved_931c9b99() public view payable returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        Unresolved_8da5cb5b
    function Unresolved_8da5cb5b() public view payable returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0x92801230
    /// @custom:name        Unresolved_92801230
    function Unresolved_92801230() public view payable returns (address) {
        address var_a = stor_c;
        return var_a;
    }
    
    /// @custom:selector    0xa6b206bf
    /// @custom:name        Unresolved_a6b206bf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_a6b206bf(bytes memory arg0) public payable {
        require(arg0 == arg0);
        var_c = (0x24 + var_c) + 0x20;
        (bool success, bytes memory ret0) = address(stor_c).delegatecall(abi.encode());
        if (ret0.length == 0) {
        }
    }
}