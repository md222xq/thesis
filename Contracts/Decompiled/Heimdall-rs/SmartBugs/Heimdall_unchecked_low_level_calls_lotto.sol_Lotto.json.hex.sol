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
    
    /// @custom:selector    0x1846f51a
    /// @custom:name        withdrawLeftOver
    function withdrawLeftOver() public {
        require(bytes1(stor_a));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
    
    /// @custom:selector    0xdecb3a90
    /// @custom:name        winAmount
    function winAmount() public view returns (uint256) {
        return stor_b;
    }
    
    /// @custom:selector    0xff15a452
    /// @custom:name        payedOut
    function payedOut() public view returns (bool) {
        var_a = !(!bytes1(stor_a));
        return var_a;
    }
    
    /// @custom:selector    0x8f1c0585
    /// @custom:name        sendToWinner
    function sendToWinner() public {
        require(!bytes1(stor_a));
        (bool success, bytes memory ret0) = address(stor_a / 0x0100).call{ gas: !stor_b * 0x08fc, value: stor_b }(abi.encode());
        stor_a = (0x01) | (uint248(stor_a));
    }
    
    /// @custom:selector    0xdfbf53ae
    /// @custom:name        winner
    function winner() public view returns (address) {
        address var_a = stor_a / 0x0100;
        return var_a;
    }
}