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
    bytes32 public stor_f;
    bytes32 public stor_g;
    mapping(bytes32 => bytes32) public stor_map_h;
    mapping(bytes32 => bytes32) public stor_map_i;
    mapping(uint256 => uint256) public stor_map_d;
    mapping(uint256 => uint256) public stor_map_e;
    
    /// @custom:selector    0x41c0e1b5
    /// @custom:name        kill
    function kill() public {
        if (!(address(msg.sender)) == (address(stor_a))) {
            if (!block.timestamp > (stor_b + 0x015180)) {
            }
            if (!(address(msg.sender)) == (address(stor_a))) {
            }
        }
    }
    
    /// @custom:selector    0x382cf0a6
    /// @custom:name        gamesPlayed
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function gamesPlayed(uint256 arg0) public view returns (bytes memory) {
        if (arg0 < stor_c) {
            var_a = 0x04;
            address var_b = stor_map_d[(0x02 * arg0) + keccak256(var_a)];
            uint256 var_c = stor_map_e[(0x02 * arg0) + keccak256(var_a)];
            return abi.encodePacked(var_b, var_c);
        }
    }
    
    /// @custom:selector    0x9c675eaa
    /// @custom:name        ownerAddr
    function ownerAddr() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0xc5339132
    /// @custom:name        lastPlayed
    function lastPlayed() public view returns (uint256) {
        return stor_b;
    }
    
    /// @custom:selector    0x6898f82b
    /// @custom:name        play
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function play(uint256 arg0) public payable {
        require(msg.value < stor_f);
        require(!msg.value < stor_f);
        stor_g = (address(msg.sender)) | (uint96(stor_g));
        stor_b = arg0;
        stor_c = stor_c + 0x01;
        var_a = 0x04;
        require(!arg0 == stor_g);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
        if (0x14) {
            bytes1 stor_g = ((keccak256(var_d)) % 0x14) + 0x01;
            stor_b = block.timestamp;
        }
        if (0x14) {
        }
        if (!arg0 > 0x0a) {
        }
    }
    
    /// @custom:selector    0xcfd8a175
    /// @custom:name        betPrice
    function betPrice() public view returns (uint256) {
        return stor_f;
    }
}