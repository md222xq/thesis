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
    
    bytes32 public stor_b;
    bytes32 public stor_d;
    mapping(bytes32 => bytes32) public stor_map_a;
    mapping(bytes32 => bytes32) public stor_map_c;
    
    /// @custom:selector    0x27e235e3
    /// @custom:name        balances
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balances(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_a[var_b];
    }
    
    /// @custom:selector    0x303b9379
    /// @custom:name        SetLogFile
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function SetLogFile(address arg0) public {
        require(!bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        stor_b = (address(arg0)) | (uint96(stor_b));
    }
    
    /// @custom:selector    0x3fe43822
    /// @custom:name        Collect
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Collect(uint256 arg0) public payable {
        address var_a = msg.sender;
        require(stor_map_c[var_a] < stor_d);
        require(stor_map_c[var_a] < stor_d);
        (bool success, bytes memory ret0) = address(msg.sender).call{ value: arg0 }(abi.encode());
        var_a = msg.sender;
        stor_map_c[var_a] = stor_map_c[var_a] - arg0;
        require(address(stor_b).code.length);
        (bool success, bytes memory ret0) = address(stor_b).call{ value: 0 }(abi.encode(0x4c2f04a400000000000000000000000000000000000000000000000000000000));
        var_a = msg.sender;
        if (stor_map_c[var_a] < arg0) {
        }
    }
    
    /// @custom:selector    0x5daa87a0
    /// @custom:name        Initialized
    function Initialized() public {
        stor_b = (0x010000000000000000000000000000000000000000) | (uint248(stor_b));
    }
    
    /// @custom:selector    0x640d3017
    /// @custom:name        SetMinSum
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function SetMinSum(uint256 arg0) public {
        require(!bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        stor_d = arg0;
    }
    
    /// @custom:selector    0xc2808d1a
    /// @custom:name        MinSum
    function MinSum() public view returns (uint256) {
        return stor_d;
    }
    
    /// @custom:selector    0xed21248c
    /// @custom:name        Deposit
    function Deposit() public payable {
        address var_a = msg.sender;
        stor_map_c[var_a] = stor_map_c[var_a] + msg.value;
        require(address(stor_b).code.length);
        (bool success, bytes memory ret0) = address(stor_b).call{ value: 0 }(abi.encode(0x4c2f04a400000000000000000000000000000000000000000000000000000000));
    }
}