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
    (bool success, bytes public stor_c;
    mapping(bytes32 => bytes32) public stor_map_b;
    mapping(bytes32 => bytes32) public stor_map_d;
    
    /// @custom:selector    0xed21248c
    /// @custom:name        Deposit
    function Deposit() public payable {
        require(msg.value < stor_a);
        address var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] + msg.value;
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).call{ value: 0 }(abi.encode(0x4c2f04a400000000000000000000000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0x11bcd830
    /// @custom:name        MinDeposit
    function MinDeposit() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0x9ffa0711
    /// @custom:name        CashOut
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function CashOut(uint256 arg0) public {
        address var_a = msg.sender;
        require(arg0 > stor_map_b[var_a]);
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: arg0 }(abi.encode());
        var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] - arg0;
        require(address(stor_c).code.length);
        (bool success, bytes memory ret0) = address(stor_c).call{ value: 0 }(abi.encode(0x4c2f04a400000000000000000000000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0x27e235e3
    /// @custom:name        balances
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balances(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_d[var_b];
    }
}