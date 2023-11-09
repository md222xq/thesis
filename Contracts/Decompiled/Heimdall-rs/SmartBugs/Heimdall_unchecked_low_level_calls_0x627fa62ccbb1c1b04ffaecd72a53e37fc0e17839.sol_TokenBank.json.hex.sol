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
    
    address public stor_f;
    bytes32 public stor_b;
    bytes32 public stor_c;
    bytes32 public stor_d;
    mapping(bytes32 => bytes32) public stor_map_a;
    mapping(bytes32 => bytes32) public stor_map_e;
    
    /// @custom:selector    0xeec0ddd7
    /// @custom:name        Holders
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Holders(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_a[var_b];
    }
    
    /// @custom:selector    0x290b1e5f
    /// @custom:name        initTokenBank
    function initTokenBank() public {
        stor_b = (address(msg.sender)) | (uint96(stor_b));
        stor_c = 0x0de0b6b3a7640000;
    }
    
    /// @custom:selector    0x2e2a51bd
    /// @custom:name        WitdrawTokenToHolder
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function WitdrawTokenToHolder(address arg0, address arg1, uint256 arg2) public {
        if (!(address(stor_d)) == (address(msg.sender))) {
            address var_a = arg0;
            if (!stor_map_e[var_a] > 0) {
                stor_map_e[var_a] = 0;
                if (!(address(stor_d)) == (address(msg.sender))) {
                    (bool success, bytes memory ret0) = address(arg1).call{ value: 0 }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_d) / 0x0100000000000000000000000000000000000000000000000000000000))));
                }
            }
        }
    }
    
    /// @custom:selector    0x11bcd830
    /// @custom:name        MinDeposit
    function MinDeposit() public view returns (uint256) {
        return stor_c;
    }
    
    /// @custom:selector    0xc7de2d13
    /// @custom:name        WithdrawToken
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function WithdrawToken(address arg0, uint256 arg1, address arg2) public {
        if (!(address(stor_d)) == (address(msg.sender))) {
            (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_b) / 0x0100000000000000000000000000000000000000000000000000000000))));
        }
    }
    
    /// @custom:selector    0xbd9b6d86
    /// @custom:name        confirmOwner
    function confirmOwner() public {
        if (!(address(msg.sender)) == (address(stor_f))) {
            stor_d = (address(stor_f)) | (uint96(stor_d));
        }
    }
    
    /// @custom:selector    0xed21248c
    /// @custom:name        Deposit
    function Deposit() public payable {
        if (!msg.value > stor_c) {
            address var_a = msg.sender;
            stor_map_e[var_a] = stor_map_e[var_a] + msg.value;
        }
    }
    
    /// @custom:selector    0xa6f9dae1
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0) public {
        if (!(address(stor_d)) == (address(msg.sender))) {
            stor_f = (address(arg0)) | (uint96(stor_f));
        }
    }
    
    /// @custom:selector    0xf8ff612e
    /// @custom:name        WithdrawToHolder
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function WithdrawToHolder(address arg0, uint256 arg1) public payable {
        if (!(address(stor_d)) == (address(msg.sender))) {
            address var_a = arg0;
            if (!stor_map_e[var_a] > 0) {
                (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode());
                var_a = arg0;
                stor_map_e[var_a] = stor_map_e[var_a] - arg1;
            }
        }
    }
}