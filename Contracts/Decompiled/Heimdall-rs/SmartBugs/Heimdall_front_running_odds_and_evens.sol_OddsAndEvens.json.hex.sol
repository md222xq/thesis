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
    bytes32 public stor_c;
    bytes32 public stor_d;
    bytes32 public stor_e;
    bytes32 public stor_f;
    bytes32 public stor_g;
    bytes32 public stor_h;
    uint256 public stor_i;
    uint256 public stor_j;
    
    /// @custom:selector    0x6898f82b
    /// @custom:name        play
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function play(uint256 arg0) public payable {
        if (msg.value == 0x0de0b6b3a7640000) {
            if ((stor_a) < 0x02) {
                stor_b = (address(var_d)) | (uint96(stor_c));
                stor_d = var_e;
                stor_a = (bytes1(0x01 + (stor_a))) | (uint248(stor_a));
                if (!(stor_a) == 0x02) {
                    if (0x01 < 0x02) {
                        if (0 < 0x02) {
                            if (0x02) {
                                if (!((stor_e + stor_f) % 0x02) == 0) {
                                    if (0x01 < 0x02) {
                                        (bool success, bytes memory ret0) = address(stor_g).call{ gas: !0x18fae27693b40000 * 0x08fc, value: 0x18fae27693b40000 }(abi.encode());
                                        uint96 stor_h = stor_h;
                                        stor_e = 0;
                                        uint96 stor_g = stor_g;
                                        stor_f = 0;
                                        stor_a = 0 | (uint248(stor_a));
                                    }
                                    require(msg.value == 0x0de0b6b3a7640000);
                                    (bool success, bytes memory ret0) = address(stor_h).call{ gas: !0x18fae27693b40000 * 0x08fc, value: 0x18fae27693b40000 }(abi.encode());
                                    stor_h = stor_h;
                                    stor_e = 0;
                                    stor_g = stor_g;
                                    stor_f = 0;
                                    stor_a = 0 | (uint248(stor_a));
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x679dffb4
    /// @custom:name        getProfit
    function getProfit() public {
        require(address(msg.sender) == (address(stor_a / 0x0100)));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
    
    /// @custom:selector    0xf71d96cb
    /// @custom:name        players
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function players(uint256 arg0) public view returns (bytes memory) {
        if (arg0 < 0x02) {
            address var_a = stor_i;
            return abi.encodePacked(var_a, stor_j);
        }
    }
}