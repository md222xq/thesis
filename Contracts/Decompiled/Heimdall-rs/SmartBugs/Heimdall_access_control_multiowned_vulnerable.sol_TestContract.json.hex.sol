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
    
    bytes32 public stor_c;
    mapping(address => bytes32) public stor_map_a;
    mapping(bytes32 => bytes32) public stor_map_b;
    
    /// @custom:selector    0x022914a7
    /// @custom:name        owners
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function owners(address arg0) public view returns (address) {
        address var_b = arg0;
        address var_c = stor_map_a[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x853828b6
    /// @custom:name        withdrawAll
    function withdrawAll() public {
        address var_a = msg.sender;
        require(!(address(stor_map_b[var_a])) == 0);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
    
    /// @custom:selector    0xcd5c4c70
    /// @custom:name        deleteOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function deleteOwner(address arg0) public returns (bool) {
        address var_a = msg.sender;
        require(!(address(stor_map_b[var_a])) == 0);
        var_a = arg0;
        require(address(stor_map_b[var_a]) == (address(msg.sender)));
        require(address(stor_map_b[var_a]) == (address(msg.sender)));
        var_a = arg0;
        stor_map_b[var_a] = 0 | (uint96(stor_map_b[var_a]));
        return 0x01;
        var_a = arg0;
        if (address(stor_map_b[var_a]) == 0) {
            if (address(msg.sender) == (address(stor_c))) {
            }
            if (!(address(stor_map_b[var_a])) == 0) {
            }
        }
    }
    
    /// @custom:selector    0xebf0c717
    /// @custom:name        root
    function root() public view returns (address) {
        address var_a = stor_c;
        return var_a;
    }
    
    /// @custom:selector    0x85952454
    /// @custom:name        newOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function newOwner(address arg0) public returns (bool) {
        require(!(address(arg0)) == 0);
        address var_a = arg0;
        stor_map_b[var_a] = (address(msg.sender)) | (uint96(stor_map_b[var_a]));
        return 0x01;
    }
}