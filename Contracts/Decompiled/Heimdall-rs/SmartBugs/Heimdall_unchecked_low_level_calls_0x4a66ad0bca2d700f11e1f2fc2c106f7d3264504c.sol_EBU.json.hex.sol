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
    
    /// @custom:selector    0xffc3a769
    /// @custom:name        transfer
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfer(address[] memory arg0, uint256[] memory arg1) public returns (bool) {
        address[] memory var_a = var_a + (0x20 + (0x20 * (arg0)));
        var_a = var_a + (0x20 + (0x20 * (arg1)));
        require(address(msg.sender) == 0x9797055b68c5dadde6b3c7d5d80c9cfe2eece6c9);
        require(var_a.length > 0);
        (bool success, bytes memory ret0) = address(stor_b).call{ value: 0 }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_g) / 0x0100000000000000000000000000000000000000000000000000000000)), 0x7432353629000000000000000000000000000000000000000000000000000000));
        return 0x01;
    }
    
    /// @custom:selector    0xb9e722cd
    /// @custom:name        caddress
    function caddress() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0xd5ce3389
    /// @custom:name        from
    function from() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
}