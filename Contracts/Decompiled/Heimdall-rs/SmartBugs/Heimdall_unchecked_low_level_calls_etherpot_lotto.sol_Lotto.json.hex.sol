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
    
    mapping(address => bytes32) public stor_map_d;
    mapping(address => bytes32) public stor_map_e;
    mapping(address => uint256) public stor_map_c;
    mapping(bytes32 => bytes32) public stor_map_a;
    mapping(uint256 => bytes32) public stor_map_b;
    
    /// @custom:selector    0x6e4ed796
    /// @custom:name        blocksPerRound
    function blocksPerRound() public pure returns (uint256) {
        return 0x1a90;
    }
    
    /// @custom:selector    0x358d5dc2
    /// @custom:name        getIsCashed
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getIsCashed(uint256 arg0, uint256 arg1) public view returns (bool) {
        var_a = arg1;
        uint256 var_c = !(!bytes1(stor_map_a[var_a]));
        return var_c;
    }
    
    /// @custom:selector    0x87bb7ae0
    /// @custom:name        getTicketPrice
    function getTicketPrice() public pure returns (uint256) {
        return 0x016345785d8a0000;
    }
    
    /// @custom:selector    0x28d3ad3f
    /// @custom:name        getPot
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getPot(uint256 arg0) public view returns (uint256) {
        uint256 var_a = arg0;
        return stor_map_b[var_a];
    }
    
    /// @custom:selector    0xce5566c5
    /// @custom:name        cash
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function cash(uint256 arg0, uint256 arg1) public {
        if (0x4563918244f40000) {
            var_a = arg0;
            if (0x4563918244f40000) {
                if (!(stor_map_b[var_a] % 0x4563918244f40000) > 0) {
                    if (arg1 < (0x01 + (stor_map_b[var_a] / 0x4563918244f40000))) {
                        if (!(((arg0 + 0x01) * 0x1a90) + arg1) > block.number) {
                            var_a = arg1;
                            if (!stor_map_a[var_a]) {
                                if (!(((arg0 + 0x01) * 0x1a90) + arg1) > block.number) {
                                    var_a = arg0;
                                    if (stor_map_c[var_a]) {
                                        var_a = arg0;
                                        if (!0 < (stor_map_d[var_a])) {
                                            var_a = arg0;
                                            if (0 < (stor_map_d[var_a])) {
                                                var_a = arg0;
                                                address var_a = stor_map_e[var_a];
                                                if (!(0 + stor_map_a[var_a]) > ((blockhash(((arg0 + 0x01) * 0x1a90) + arg1)) % (stor_map_c[var_a]))) {
                                                    if (0x4563918244f40000) {
                                                        var_a = arg0;
                                                        if (0x4563918244f40000) {
                                                            if (!(stor_map_b[var_a] % 0x4563918244f40000) > 0) {
                                                                var_a = arg0;
                                                                if (0x01 + (stor_map_b[var_a] / 0x4563918244f40000)) {
                                                                    (bool success, bytes memory ret0) = var_a.call{ gas: (!(stor_map_b[var_a]) / (0x01 + (stor_map_b[var_a] / 0x4563918244f40000))) * 0x08fc, value: (stor_map_b[var_a]) / (0x01 + (stor_map_b[var_a] / 0x4563918244f40000)) }(abi.encode());
                                                                    var_a = arg1;
                                                                    stor_map_a[var_a] = (0x01) | (uint248(stor_map_a[var_a]));
                                                                }
                                                                var_a = arg0;
                                                                if (stor_map_b[var_a] / 0x4563918244f40000) {
                                                                    (bool success, bytes memory ret0) = var_a.call{ gas: (!(stor_map_b[var_a]) / (stor_map_b[var_a] / 0x4563918244f40000)) * 0x08fc, value: (stor_map_b[var_a]) / (stor_map_b[var_a] / 0x4563918244f40000) }(abi.encode());
                                                                    var_a = arg1;
                                                                    stor_map_a[var_a] = (0x01) | (uint248(stor_map_a[var_a]));
                                                                }
                                                            }
                                                        }
                                                    }
                                                    var_a = arg0;
                                                    if (!0x01 < (stor_map_d[var_a])) {
                                                    }
                                                }
                                            }
                                            if (0x4563918244f40000) {
                                            }
                                        }
                                    }
                                    var_a = arg0;
                                    if (0x4563918244f40000) {
                                    }
                                }
                            }
                        }
                    }
                    if (arg1 < (stor_map_b[var_a] / 0x4563918244f40000)) {
                        if (!(((arg0 + 0x01) * 0x1a90) + arg1) > block.number) {
                            var_a = arg1;
                            if (!stor_map_a[var_a]) {
                            }
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x46a2679a
    /// @custom:name        getSubpotsCount
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getSubpotsCount(uint256 arg0) public view returns (uint256) {
        if (0x4563918244f40000) {
            var_a = arg0;
            if (0x4563918244f40000) {
                if (!(stor_map_b[var_a] % 0x4563918244f40000) > 0) {
                    uint256 var_c = 0x01 + (stor_map_b[var_a] / 0x4563918244f40000);
                    return var_c;
                    var_c = (stor_map_b[var_a]) / 0x4563918244f40000;
                    return var_c;
                }
            }
        }
    }
    
    /// @custom:selector    0x1209b1f6
    /// @custom:name        ticketPrice
    function ticketPrice() public pure returns (uint256) {
        return 0x016345785d8a0000;
    }
    
    /// @custom:selector    0xdf2f0a4a
    /// @custom:name        getDecisionBlockNumber
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getDecisionBlockNumber(uint256 arg0, uint256 arg1) public pure returns (uint256) {
        return ((arg0 + 0x01) * 0x1a90) + arg1;
    }
    
    /// @custom:selector    0x0ac168a1
    /// @custom:name        blockReward
    function blockReward() public pure returns (uint256) {
        return 0x4563918244f40000;
    }
    
    /// @custom:selector    0x459f93f7
    /// @custom:name        getBuyers
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function getBuyers(uint256 arg0, address arg1) public view returns (bytes memory) {
        uint256 var_a = arg0;
        uint256 var_c = var_c + (0x20 + (0x20 * (stor_map_d[var_a])));
        if (!stor_map_d[var_a]) {
            var_a = 0 + keccak256(var_a);
            if ((0x20 + var_c) + (0x20 * (stor_map_d[var_a])) > (0x20 + (0x20 + var_c))) {
                if ((0x20 + var_c) + (0x20 * (stor_map_d[var_a])) > (0x20 + (0x20 + (0x20 + var_c)))) {
                }
                if (!0 < (0x20 * var_c.length)) {
                    if (!0x20 < (0x20 * var_c.length)) {
                    }
                    return abi.encodePacked((0x20 + var_c) - var_c, var_c.length);
                }
            }
            if (!0 < (0x20 * var_c.length)) {
            }
        }
    }
    
    /// @custom:selector    0x93dafba2
    /// @custom:name        getSubpot
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getSubpot(uint256 arg0) public view returns (uint256) {
        if (0x4563918244f40000) {
            var_a = arg0;
            if (0x4563918244f40000) {
                if (!(stor_map_b[var_a] % 0x4563918244f40000) > 0) {
                    var_a = arg0;
                    if (0x01 + (stor_map_b[var_a] / 0x4563918244f40000)) {
                        uint256 var_c = (stor_map_b[var_a]) / (0x01 + (stor_map_b[var_a] / 0x4563918244f40000));
                        return var_c;
                    }
                    var_a = arg0;
                    if (stor_map_b[var_a] / 0x4563918244f40000) {
                        var_c = (stor_map_b[var_a]) / (stor_map_b[var_a] / 0x4563918244f40000);
                        return var_c;
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x6572ae13
    /// @custom:name        calculateWinner
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function calculateWinner(uint256 arg0, uint256 arg1) public view returns (address) {
        if (!(((arg0 + 0x01) * 0x1a90) + arg1) > block.number) {
            uint256 var_a = arg0;
            if (stor_map_c[var_a]) {
                var_a = arg0;
                if (!0 < (stor_map_d[var_a])) {
                    var_a = arg0;
                    if (0 < (stor_map_d[var_a])) {
                        var_a = arg0;
                        address var_a = stor_map_e[var_a];
                        if (!(0 + stor_map_a[var_a]) > ((blockhash(((arg0 + 0x01) * 0x1a90) + arg1)) % (stor_map_c[var_a]))) {
                            return var_a;
                            var_a = arg0;
                            if (!0x01 < (stor_map_d[var_a])) {
                            }
                        }
                    }
                    return 0;
                }
            }
            return 0;
        }
    }
    
    /// @custom:selector    0x8089d001
    /// @custom:name        getHashOfBlock
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getHashOfBlock(uint256 arg0) public view returns (uint256) {
        return blockhash(arg0);
    }
    
    /// @custom:selector    0x305a762a
    /// @custom:name        getTicketsCountByBuyer
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function getTicketsCountByBuyer(uint256 arg0, address arg1) public view returns (uint256) {
        address var_a = arg1;
        return stor_map_a[var_a];
    }
    
    /// @custom:selector    0x86bb7121
    /// @custom:name        getBlocksPerRound
    function getBlocksPerRound() public pure returns (uint256) {
        return 0x1a90;
    }
    
    /// @custom:selector    0x67af1c81
    /// @custom:name        getRoundIndex
    function getRoundIndex() public view returns (uint256) {
        if (0x1a90) {
            return block.number / 0x1a90;
        }
    }
}