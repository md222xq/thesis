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
    
    address public stor_c;
    bytes32 public stor_a;
    bytes32 public stor_b;
    
    /// @custom:selector    0x27d7874c
    /// @custom:name        setCEO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCEO(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(!(address(arg0)) == 0);
        stor_a = (address(arg0)) | (uint96(stor_a));
    }
    
    /// @custom:selector    0xb047fb50
    /// @custom:name        cooAddress
    function cooAddress() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0x0a0f8168
    /// @custom:name        ceoAddress
    function ceoAddress() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x5c975abb
    /// @custom:name        paused
    function paused() public view returns (bool) {
        var_a = !(!bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
    
    /// @custom:selector    0x8456cb59
    /// @custom:name        pause
    function pause() public {
        require(address(msg.sender) == (address(stor_b)));
        require(address(msg.sender) == (address(stor_b)));
        require(address(msg.sender) == (address(stor_b)));
        require(!bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        stor_b = (0x010000000000000000000000000000000000000000) | (uint248(stor_b));
        if (address(msg.sender) == (address(stor_c))) {
        }
        if (address(msg.sender) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0x0519ce79
    /// @custom:name        cfoAddress
    function cfoAddress() public view returns (address) {
        address var_a = stor_c;
        return var_a;
    }
    
    /// @custom:selector    0x2ba73c15
    /// @custom:name        setCOO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCOO(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(!(address(arg0)) == 0);
        stor_b = (address(arg0)) | (uint96(stor_b));
    }
    
    /// @custom:selector    0x3f4ba83a
    /// @custom:name        unpause
    function unpause() public {
        require(address(msg.sender) == (address(stor_a)));
        require(bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        stor_b = (0 * 0x010000000000000000000000000000000000000000) | (uint248(stor_b));
    }
    
    /// @custom:selector    0x4e0a3379
    /// @custom:name        setCFO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCFO(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(!(address(arg0)) == 0);
        stor_c = (address(arg0)) | (uint96(stor_c));
    }
}