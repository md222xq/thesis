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
    bytes32 public stor_c;
    bytes32 public stor_d;
    bytes32 public stor_e;
    (bool success, bytes public stor_b;
    
    /// @custom:selector    0x552eea49
    /// @custom:name        Unresolved_552eea49
    function Unresolved_552eea49() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0xee2bee59
    /// @custom:name        lastInvestmentTimestamp
    function lastInvestmentTimestamp() public view returns (uint256) {
        return stor_c;
    }
    
    /// @custom:selector    0x51294de7
    /// @custom:name        resetInvestment
    function resetInvestment() public {
        require(!block.timestamp < (stor_c + stor_a));
        (bool success, bytes memory ret0) = address(stor_d).call{ gas: !stor_e * 0x08fc, value: stor_e }(abi.encode());
        (bool success, bytes memory ret0) = address(stor_b).call{ gas: (!(address(this).balance) - 0x0de0b6b3a7640000) * 0x08fc, value: (address(this).balance) - 0x0de0b6b3a7640000 }(abi.encode());
        stor_d = 0 | (uint96(stor_d));
        stor_e = 0x0de0b6b3a7640000;
        stor_c = 0;
    }
    
    /// @custom:selector    0x6b31ee01
    /// @custom:name        jackpot
    function jackpot() public view returns (uint256) {
        return stor_e;
    }
    
    /// @custom:selector    0xb2977aeb
    /// @custom:name        lastInvestor
    function lastInvestor() public view returns (address) {
        address var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0xe8b5e51f
    /// @custom:name        invest
    function invest() public {
        require(0x02);
        require(!msg.value < (stor_e / 0x02));
        stor_d = (address(msg.sender)) | (uint96(stor_d));
        if (0x02) {
            stor_e = stor_e + (msg.value / 0x02);
            stor_c = block.timestamp;
        }
    }
}