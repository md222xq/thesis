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
    
    address public stor_a;
    
    event Unpause();
    event Pause();
    
    /// @custom:selector    0x5c975abb
    /// @custom:name        paused
    function paused() public view returns (bool) {
        var_a = !(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
    
    /// @custom:selector    0x3f4ba83a
    /// @custom:name        unpause
    function unpause() public returns (bool) {
        require(address(msg.sender) == (address(stor_a)));
        require(bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        stor_a = (0 * 0x010000000000000000000000000000000000000000) | (uint248(stor_a));
        emit Unpause();
        return 0x01;
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x8456cb59
    /// @custom:name        pause
    function pause() public returns (bool) {
        require(address(msg.sender) == (address(stor_a)));
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        stor_a = (0x010000000000000000000000000000000000000000) | (uint248(stor_a));
        emit Pause();
        return 0x01;
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:name        transferOwnership
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function transferOwnership(address arg0) public {
        if (address(msg.sender) == (address(stor_a))) {
            require(address(msg.sender) == (address(stor_a)));
            stor_a = (address(arg0)) | (uint96(stor_a));
        }
    }
}