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
    
    mapping(address => address) public stor_map_a;
    mapping(address => address) public stor_map_b;
    
    /// @custom:selector    0xed7f559c
    /// @custom:name        lockInGuess
    /// @param              arg0 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    function lockInGuess(bytes32 arg0) public payable {
        address var_a = msg.sender;
        require(stor_map_a[var_a] == 0);
        require(msg.value == 0x0de0b6b3a7640000);
        uint256 stor_map_b[var_a] = arg0;
        stor_map_a[var_a] = block.number + 0x01;
    }
    
    /// @custom:selector    0x11da60b4
    /// @custom:name        settle
    function settle() public {
        address var_a = msg.sender;
        require(block.number > (stor_map_a[var_a]));
        stor_map_a[var_a] = 0;
        var_a = msg.sender;
        require(!(uint256(stor_map_b[var_a])) == (uint256(blockhash(stor_map_a[var_a]))));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !0x1bc16d674ec80000 * 0x08fc, value: 0x1bc16d674ec80000 }(abi.encode());
    }
}