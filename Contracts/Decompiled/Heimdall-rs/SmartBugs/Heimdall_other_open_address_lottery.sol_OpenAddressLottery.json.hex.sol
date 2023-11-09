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
    bytes32 public stor_c;
    bytes32 public stor_d;
    mapping(bytes32 => bytes32) public stor_map_e;
    
    /// @custom:selector    0x41c0e1b5
    /// @custom:name        kill
    function kill() public {
        require(address(msg.sender) == (address(stor_a)));
    }
    
    /// @custom:selector    0x80ca7aec
    /// @custom:name        forceReseed
    function forceReseed() public {
        require(address(msg.sender) == (address(stor_a)));
        address stor_a = msg.sender;
        stor_b = (blockhash(block.number - 0x01));
        stor_c = block.difficulty * (address(block.coinbase));
        stor_d = tx.gasprice * 0x07;
        stor_b = keccak256(var_n);
        stor_c = block.number;
    }
    
    /// @custom:selector    0xd11711a2
    /// @custom:name        participate
    function participate() public payable {
        require(!msg.value < 0x016345785d8a0000);
        address var_a = msg.sender;
        require((bytes1(stor_map_e[var_a])) == 0);
        require(0 < 0x20);
        require(0x08);
        require(!(((0x0100000000000000000000000000000000000000000000000000000000000000 * keccak256(var_e)) / 0x0100000000000000000000000000000000000000000000000000000000000000) % 0x08) == stor_d);
        var_a = msg.sender;
        stor_map_e[var_a] = (0x01) | (uint248(stor_map_e[var_a]));
        require(!(msg.value * 0x07) > (address(this).balance));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
        if (!(block.number - stor_c) > 0x03e8) {
            stor_b = keccak256(var_e);
            stor_c = block.number;
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!msg.value * 0x07) * 0x08fc, value: msg.value * 0x07 }(abi.encode());
        if (!(block.number - stor_c) > 0x03e8) {
        }
    }
    
    /// @custom:selector    0x37354a68
    /// @custom:name        luckyNumberOfAddress
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function luckyNumberOfAddress(address arg0) public view returns (uint256) {
        if (0 < 0x20) {
            if (0x08) {
                return ((0x0100000000000000000000000000000000000000000000000000000000000000 * keccak256(var_c)) / 0x0100000000000000000000000000000000000000000000000000000000000000) % 0x08;
            }
        }
    }
}