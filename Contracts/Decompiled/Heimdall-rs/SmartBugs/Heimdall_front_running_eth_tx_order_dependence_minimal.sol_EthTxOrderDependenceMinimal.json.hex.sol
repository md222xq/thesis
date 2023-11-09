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
    
    /// @custom:selector    0xae169a50
    /// @custom:name        claimReward
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function claimReward(uint256 arg0) public {
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        require(arg0 < 0x0a);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !stor_b * 0x08fc, value: stor_b }(abi.encode());
        stor_a = (0x010000000000000000000000000000000000000000) | (uint248(stor_a));
    }
    
    /// @custom:selector    0x228cb733
    /// @custom:name        reward
    function reward() public view returns (uint256) {
        return stor_b;
    }
    
    /// @custom:selector    0x3eb6a67e
    /// @custom:name        setReward
    function setReward() public payable {
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        require(address(msg.sender) == (address(stor_a)));
        (bool success, bytes memory ret0) = address(stor_a).call{ gas: !stor_b * 0x08fc, value: stor_b }(abi.encode());
        stor_b = msg.value;
    }
    
    /// @custom:selector    0xe834a834
    /// @custom:name        claimed
    function claimed() public view returns (bool) {
        var_a = !(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
}