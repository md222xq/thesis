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
    (bool success, bytes public stor_e;
    
    /// @custom:selector    0x02fb0c5e
    /// @custom:name        active
    function active() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0xbec60bd2
    /// @custom:name        change_token_price
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function change_token_price(uint256 arg0) public returns (bool) {
        require(address(msg.sender) == (address(stor_b)));
        stor_c = arg0;
        return 0x01;
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0x243f6e0c
    /// @custom:name        change_active
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function change_active(uint256 arg0) public returns (bool) {
        require(address(msg.sender) == (address(stor_b)));
        stor_a = arg0;
        return 0x01;
    }
    
    /// @custom:selector    0x2e1a7d4d
    /// @custom:name        withdraw
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function withdraw(uint256 arg0) public returns (bool) {
        if (address(msg.sender) == (address(stor_b))) {
            require(address(msg.sender) == (address(stor_b)));
            (bool success, bytes memory ret0) = address(stor_b).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
            return 0x01;
            (bool success, bytes memory ret0) = address(stor_b).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
            return 0x01;
        }
    }
    
    /// @custom:selector    0xc3da42b8
    /// @custom:name        c
    function c() public view returns (address) {
        address var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0x7b4fd96e
    /// @custom:name        token_price
    function token_price() public view returns (uint256) {
        return stor_c;
    }
    
    /// @custom:selector    0x52709725
    /// @custom:name        owner2
    function owner2() public view returns (address) {
        address var_a = stor_e;
        return var_a;
    }
    
    /// @custom:selector    0x6c675ae6
    /// @custom:name        tokens_buy
    function tokens_buy() public payable returns (bool) {
        require(stor_a > 0);
        require(!msg.value < stor_c);
        if (stor_c) {
            require(stor_c);
            var_f = (msg.value * 0x0de0b6b3a7640000) / stor_c;
            (bool success, bytes memory ret0) = address(stor_d).call{ value: 0 }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_c) / 0x0100000000000000000000000000000000000000000000000000000000)), 0x7432353629000000000000000000000000000000000000000000000000000000));
            return 0;
            require((var_f) > 0);
            (bool success, bytes memory ret0) = address(stor_e).call{ gas: (!(msg.value * 0x03) / 0x0a) * 0x08fc, value: (msg.value * 0x03) / 0x0a }(abi.encode());
            return 0x01;
        }
    }
}