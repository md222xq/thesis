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
    
    address public stor_e;
    address public stor_g;
    address public stor_i;
    bytes32 public stor_b;
    bytes32 public stor_c;
    bytes32 public stor_d;
    bytes32 public stor_f;
    bytes32 public stor_j;
    bytes32 public stor_k;
    bytes32 public stor_l;
    bytes32 public stor_m;
    bytes32 public stor_n;
    bytes32 public stor_o;
    bytes32 public stor_p;
    bytes32 public stor_q;
    bytes32 public stor_u;
    bytes32 public stor_aj;
    mapping(address => bytes32) public stor_map_a;
    mapping(address => bytes32) public stor_map_r;
    mapping(address => bytes32) public stor_map_s;
    mapping(address => bytes32) public stor_map_t;
    mapping(address => bytes32) public stor_map_w;
    mapping(address => bytes32) public stor_map_x;
    mapping(address => bytes32) public stor_map_y;
    mapping(address => bytes32) public stor_map_z;
    mapping(bytes32 => bytes32) public stor_map_h;
    mapping(bytes32 => bytes32) public stor_map_v;
    mapping(address => bytes32) public stor_map_aa;
    mapping(address => bytes32) public stor_map_ab;
    mapping(address => bytes32) public stor_map_ad;
    mapping(address => bytes32) public stor_map_ae;
    mapping(address => bytes32) public stor_map_af;
    mapping(address => bytes32) public stor_map_ag;
    mapping(address => bytes32) public stor_map_al;
    mapping(address => bytes32) public stor_map_am;
    mapping(address => bytes32) public stor_map_an;
    mapping(bytes32 => bytes32) public stor_map_ac;
    mapping(bytes32 => bytes32) public stor_map_ah;
    mapping(bytes32 => bytes32) public stor_map_ai;
    mapping(uint256 => bytes32) public stor_map_ak;
    
    event Transfer(address arg0, address arg1, uint256 arg2);
    event LogInvestment(address arg0, address arg1, uint256 arg2);
    event LogDividend(address arg0, uint256 arg1, uint256 arg2);
    event LogLate(address arg0, uint256 arg1, uint256 arg2);
    event LogRecordWin(address arg0, uint256 arg1);
    event LogLoss(address arg0, uint256 arg1, uint256 arg2);
    event Event_00362509();
    event LogBet(address arg0, uint256 arg1, uint256 arg2, uint256 arg3);
    event Approval(address arg0, address arg1, uint256 arg2);
    
    /// @custom:selector    0x904d2248
    /// @custom:name        betHashOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function betHashOf(address arg0) public view returns (uint32) {
        address var_a = arg0;
        uint32 var_c = stor_map_a[var_a] / 0x01000000000000000000000000000000000000000000000000;
        return var_c;
    }
    
    /// @custom:selector    0xc27509cf
    /// @custom:name        investDirect
    function investDirect() public payable {
        require(!stor_b > 0x01);
        require(!block.number < (stor_b + 0x014000));
        require(block.number < (stor_b + 0x014000));
        require(!msg.value > (stor_c - stor_d));
        stor_d = stor_c;
        stor_b = 0;
        require(!(stor_c - stor_d) > msg.value);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!msg.value - (stor_c - stor_d)) * 0x08fc, value: msg.value - (stor_c - stor_d) }(abi.encode());
        if (address(stor_e) == 0) {
            if (!(address(stor_e)) == (address(stor_e))) {
                if (0x64) {
                    stor_f = stor_f + ((((stor_c - stor_d) * 0x05) / 0x64) * 0x02);
                    if (0x64) {
                        address var_a = stor_e;
                        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + (((stor_c - stor_d) * 0x05) / 0x64))) | (uint48(stor_map_a[var_a]));
                        if (0x64) {
                            var_a = stor_e;
                            stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + (((stor_c - stor_d) * 0x05) / 0x64))) | (uint48(stor_map_a[var_a]));
                            var_a = msg.sender;
                            stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                            if (0x038d7ea4c68000) {
                                if (0x016345785d8a0000) {
                                    if (0x016345785d8a0000) {
                                        var_a = msg.sender;
                                        stor_map_h[var_a] = stor_map_h[var_a] + ((stor_c - stor_d) / 0x038d7ea4c68000);
                                        var_a = stor_e;
                                        stor_map_h[var_a] = stor_map_h[var_a] + (((stor_c - stor_d) * 0x10) / 0x016345785d8a0000);
                                        var_a = stor_i;
                                        stor_map_h[var_a] = stor_map_h[var_a] + (((stor_c - stor_d) * 0x0a) / 0x016345785d8a0000);
                                        stor_j = stor_j + (((stor_c - stor_d) / 0x038d7ea4c68000) + (((stor_c - stor_d) * 0x10) / 0x016345785d8a0000) + (((stor_c - stor_d) * 0x0a) / 0x016345785d8a0000));
                                        var_c = (stor_c - stor_d) / 0x038d7ea4c68000;
                                        emit Transfer(0, address(msg.sender), var_c);
                                        var_c = stor_c - stor_d;
                                        emit LogInvestment(address(msg.sender), address(stor_e), var_c);
                                    }
                                }
                            }
                        }
                    }
                }
                if (0x0a) {
                    stor_f = stor_f + ((var_c) / 0x0a);
                    if (0x0a) {
                        var_a = stor_e;
                        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + ((var_c) / 0x0a))) | (uint48(stor_map_a[var_a]));
                        var_a = msg.sender;
                        stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                        if (0x038d7ea4c68000) {
                        }
                    }
                }
            }
            if (!(var_a) == 0) {
            }
        }
        stor_d = stor_d + msg.value;
        if (var_a == 0) {
            if (!(var_a) == (var_a)) {
                if (0x64) {
                    stor_f = stor_f + (((msg.value * 0x05) / 0x64) * 0x02);
                    if (0x64) {
                        var_a = stor_e;
                        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + ((msg.value * 0x05) / 0x64))) | (uint48(stor_map_a[var_a]));
                        if (0x64) {
                            var_a = stor_e;
                            stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + ((msg.value * 0x05) / 0x64))) | (uint48(stor_map_a[var_a]));
                            var_a = msg.sender;
                            stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                            if (0x038d7ea4c68000) {
                                if (0x016345785d8a0000) {
                                    if (0x016345785d8a0000) {
                                        var_a = msg.sender;
                                        stor_map_h[var_a] = stor_map_h[var_a] + (msg.value / 0x038d7ea4c68000);
                                        var_a = stor_e;
                                        stor_map_h[var_a] = stor_map_h[var_a] + ((msg.value * 0x10) / 0x016345785d8a0000);
                                        var_a = stor_i;
                                        stor_map_h[var_a] = stor_map_h[var_a] + ((msg.value * 0x0a) / 0x016345785d8a0000);
                                        stor_j = stor_j + ((msg.value / 0x038d7ea4c68000) + ((msg.value * 0x10) / 0x016345785d8a0000) + ((msg.value * 0x0a) / 0x016345785d8a0000));
                                    }
                                }
                            }
                        }
                    }
                }
                if (0x0a) {
                    stor_f = stor_f + (msg.value / 0x0a);
                    if (0x0a) {
                        var_a = stor_e;
                        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + (msg.value / 0x0a))) | (uint48(stor_map_a[var_a]));
                        var_a = msg.sender;
                        stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                        if (0x038d7ea4c68000) {
                        }
                    }
                }
            }
            if (!(var_a) == 0) {
            }
        }
        if (stor_d < stor_c) {
            require(stor_d < stor_c);
        }
        if (!stor_b > 0x01) {
            if (stor_d < stor_c) {
            }
            if (stor_b > 0x01) {
            }
        }
    }
    
    /// @custom:selector    0x95d89b41
    /// @custom:name        symbol
    function symbol() public pure returns (bytes memory) {
        var_a = var_a + 0x40;
        if (!var_a.length) {
            return abi.encodePacked((0x20 + var_a) - var_a, var_a.length);
            return abi.encodePacked((0x20 + var_a) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_g));
        }
        if (!var_a.length) {
        }
    }
    
    /// @custom:selector    0x0751076d
    /// @custom:name        setBetMax
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setBetMax(uint256 arg0) public {
        if (address(msg.sender) == (address(stor_e))) {
            stor_k = arg0;
        }
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        balanceOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balanceOf(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_h[var_a];
    }
    
    /// @custom:selector    0x16d190e3
    /// @custom:name        maxWin
    function maxWin() public view returns (uint256) {
        return stor_l;
    }
    
    /// @custom:selector    0x43146f36
    /// @custom:name        resetBet
    function resetBet() public {
        if (address(msg.sender) == (address(stor_e))) {
            stor_m = block.number + 0x03;
            stor_n = 0;
        }
    }
    
    /// @custom:selector    0x66ce3bd2
    /// @custom:name        walletBalanceOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function walletBalanceOf(address arg0) public view returns (uint208) {
        address var_a = arg0;
        uint208 var_c = stor_map_a[var_a];
        return var_c;
    }
    
    /// @custom:selector    0x313ce567
    /// @custom:name        decimals
    function decimals() public pure returns (uint256) {
        return 0;
    }
    
    /// @custom:selector    0x785ce7ca
    /// @custom:name        walletBlockOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function walletBlockOf(address arg0) public view returns (uint32) {
        address var_a = arg0;
        uint32 var_c = stor_map_a[var_a] / 0x0100000000000000000000000000000000000000000000000000000000;
        return var_c;
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:name        transfer
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfer(address arg0, uint256 arg1) public {
        if (!msg.data.length < 0x44) {
            var_a = msg.sender;
            if (stor_map_h[var_a] == 0) {
                if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == 0) {
                    if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == stor_g) {
                        var_a = msg.sender;
                        if (stor_j) {
                            if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) < stor_g) {
                                if (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000) < stor_o) {
                                    var_a = 0x0c;
                                    if (!(0x01 + (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000))) < stor_g) {
                                    }
                                }
                                if (0xffffffff) {
                                    stor_f = stor_f + 0;
                                    var_a = msg.sender;
                                    stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + 0)) | (uint48(stor_map_a[var_a]));
                                    var_a = msg.sender;
                                    stor_map_a[var_a] = (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                                    uint16 var_d = stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000;
                                    emit LogDividend(address(msg.sender), 0, var_d);
                                    var_a = msg.sender;
                                    if (!arg1 > stor_map_h[var_a]) {
                                        var_a = msg.sender;
                                        stor_map_h[var_a] = stor_map_h[var_a] - arg1;
                                        if (!(address(arg0)) == (address(this))) {
                                            var_a = stor_e;
                                            if (stor_map_h[var_a] == 0) {
                                                if (!(var_d) == 0) {
                                                    if (!(var_d) == stor_g) {
                                                        if (stor_j) {
                                                            if (!(var_d) < stor_g) {
                                                            }
                                                        }
                                                        var_a = stor_e;
                                                        if (!(stor_map_h[var_a] + arg1) < stor_map_h[var_a]) {
                                                            var_a = stor_e;
                                                            stor_map_h[var_a] = stor_map_h[var_a] + arg1;
                                                            emit Transfer(address(msg.sender), var_a, arg1);
                                                        }
                                                    }
                                                    var_a = stor_e;
                                                    stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                                                    var_a = stor_e;
                                                    if (!(stor_map_h[var_a]) < stor_map_h[var_a]) {
                                                    }
                                                }
                                                if (!stor_map_h[var_a] == 0) {
                                                }
                                            }
                                            var_a = arg0;
                                            if (stor_map_h[var_a] == 0) {
                                                if (!(var_d) == 0) {
                                                    if (!(var_d) == stor_g) {
                                                        if (stor_j) {
                                                            if (!(var_d) < stor_g) {
                                                            }
                                                        }
                                                        var_a = arg0;
                                                        if (!(stor_map_h[var_a]) < stor_map_h[var_a]) {
                                                            var_a = arg0;
                                                            stor_map_h[var_a] = stor_map_h[var_a] + arg1;
                                                        }
                                                    }
                                                    var_a = arg0;
                                                    stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                                                    var_a = arg0;
                                                    if (!(stor_map_h[var_a]) < stor_map_h[var_a]) {
                                                    }
                                                }
                                                if (!stor_map_h[var_a] == 0) {
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        var_a = msg.sender;
                        if (!arg1 > stor_map_h[var_a]) {
                        }
                    }
                    var_a = msg.sender;
                    stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                    var_a = msg.sender;
                    if (!arg1 > stor_map_h[var_a]) {
                    }
                }
                if (!stor_map_h[var_a] == 0) {
                }
            }
        }
    }
    
    /// @custom:selector    0x70ccd928
    /// @custom:name        hashesLength
    function hashesLength() public view returns (uint256) {
        return stor_p;
    }
    
    /// @custom:selector    0xc4164365
    /// @custom:name        investBalanceMax
    function investBalanceMax() public view returns (uint256) {
        return stor_c;
    }
    
    /// @custom:selector    0x9ce962ca
    /// @custom:name        payWallet
    function payWallet() public {
        address var_a = msg.sender;
        require(!(uint208(stor_map_a[var_a])) > 0);
        var_a = msg.sender;
        require(uint32(stor_map_a[var_a] / 0x0100000000000000000000000000000000000000000000000000000000) > block.number);
        var_a = msg.sender;
        stor_map_a[var_a] = 0 | (uint48(stor_map_a[var_a]));
        stor_f = stor_f - (uint208(stor_map_a[var_a]));
        require(0x02);
        require((address(this).balance / 0x02) < (uint208(stor_map_a[var_a])));
        stor_f = stor_f + (uint208(stor_map_a[var_a]) - (address(this).balance / 0x02));
        var_a = msg.sender;
        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + ((stor_map_a[var_a]) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_a[var_a]));
        var_a = msg.sender;
        stor_map_a[var_a] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_a[var_a]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!uint208(stor_map_a[var_a])) * 0x08fc, value: uint208(stor_map_a[var_a]) }(abi.encode());
        if (!(uint208(stor_map_a[var_a])) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_r[var_a] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            stor_g = 0x01 + stor_g;
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
        }
        if (!(uint208(stor_map_a[var_a])) > 0) {
            var_a = msg.sender;
            stor_map_a[var_a] = 0 | (uint48(stor_map_a[var_a]));
            stor_f = stor_f - (uint208(stor_map_a[var_a]));
            if (0x02) {
            }
        }
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:name        transferFrom
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transferFrom(address arg0, address arg1, uint256 arg2) public {
        if (!msg.data.length < 0x64) {
            var_a = msg.sender;
            var_a = arg0;
            if (stor_map_h[var_a] == 0) {
                if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == 0) {
                    if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == stor_g) {
                        var_a = arg0;
                        if (stor_j) {
                            if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) < stor_g) {
                                if (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000) < stor_o) {
                                    var_a = 0x0c;
                                    if (!(0x01 + (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000))) < stor_g) {
                                    }
                                }
                                if (0xffffffff) {
                                    stor_f = stor_f + 0;
                                    var_a = arg0;
                                    stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + 0)) | (uint48(stor_map_a[var_a]));
                                    var_a = arg0;
                                    stor_map_a[var_a] = (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                                    uint16 var_d = stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000;
                                    emit LogDividend(address(arg0), 0, var_d);
                                    var_a = arg1;
                                    if (stor_map_h[var_a] == 0) {
                                        if (!(var_d) == 0) {
                                            if (!(var_d) == stor_g) {
                                                if (stor_j) {
                                                    if (!(var_d) < stor_g) {
                                                    }
                                                }
                                                var_a = arg1;
                                                if (!(stor_map_h[var_a] + arg2) < stor_map_h[var_a]) {
                                                    var_a = arg1;
                                                    stor_map_h[var_a] = stor_map_h[var_a] + arg2;
                                                    var_a = arg0;
                                                    if (!arg2 > stor_map_h[var_a]) {
                                                        var_a = arg0;
                                                        stor_map_h[var_a] = stor_map_h[var_a] - arg2;
                                                        if (!arg2 > stor_map_h[var_a]) {
                                                            var_a = msg.sender;
                                                            stor_map_h[var_a] = stor_map_h[var_a] - arg2;
                                                            emit Transfer(address(arg0), address(arg1), arg2);
                                                        }
                                                    }
                                                }
                                            }
                                            var_a = arg1;
                                            stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                                            var_a = arg1;
                                            if (!(stor_map_h[var_a] + arg2) < stor_map_h[var_a]) {
                                            }
                                        }
                                        if (!stor_map_h[var_a] == 0) {
                                        }
                                    }
                                }
                            }
                        }
                        var_a = arg1;
                        if (stor_map_h[var_a] == 0) {
                        }
                    }
                    var_a = arg0;
                    stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                    var_a = arg1;
                    if (stor_map_h[var_a] == 0) {
                    }
                }
                if (!stor_map_h[var_a] == 0) {
                }
            }
        }
    }
    
    /// @custom:selector    0x2406e9fa
    /// @custom:name        playRandom
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function playRandom(address arg0) public payable returns (uint256) {
        var_c = var_c + 0x60;
        address var_f = msg.sender;
        var_c = var_c + 0x60;
        require(!(uint32(var_k)) == 0);
        require(uint192(var_l) == 0);
        require(!(uint32(var_k)) == 0x01);
        var_f = msg.sender;
        require(!(uint208(stor_map_t[var_f])) > 0);
        var_f = msg.sender;
        require(uint32(stor_map_t[var_f] / 0x0100000000000000000000000000000000000000000000000000000000) > block.number);
        require(msg.value > 0x0de0b6b3a7640000);
        require(!msg.value > 0x0de0b6b3a7640000);
        if (!msg.value > 0) {
            if (!stor_b == 0) {
                if (address(arg0) == 0) {
                    if (0x64) {
                        stor_f = stor_f + (msg.value / 0x64);
                        var_f = arg0;
                        stor_map_t[var_f] = (uint208((stor_map_t[var_f]) + (msg.value / 0x64))) | (uint48(stor_map_t[var_f]));
                        if (!stor_m < (block.number + 0x03)) {
                            if (!stor_n > stor_k) {
                                stor_m = 0x01 + stor_m;
                                stor_n = msg.value;
                                var_c = var_c + 0x60;
                                var_f = msg.sender;
                                stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                                stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                                stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                                emit LogBet(address(msg.sender), uint24(keccak256(var_o)), stor_m, msg.value);
                                if (stor_u == 0) {
                                    if (block.number > (stor_u + 0x0a)) {
                                        if (!block.number < 0x0100) {
                                            if (!stor_u < (block.number - 0x0100)) {
                                                if (0x0a) {
                                                    if (0x4000) {
                                                        if (0x4000) {
                                                        }
                                                    }
                                                }
                                                if (0x0a) {
                                                    if (0x0a) {
                                                        if (0x4000) {
                                                            if (0x4000) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            if (!stor_u < 0) {
                                                if (0x0a) {
                                                }
                                                if (0x0a) {
                                                }
                                            }
                                        }
                                        return stor_m;
                                    }
                                    if (!stor_u == 0) {
                                    }
                                }
                                stor_n = stor_n + msg.value;
                                var_c = var_c + 0x60;
                                var_f = msg.sender;
                                stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                                stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                                stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                                if (stor_u == 0) {
                                }
                            }
                            stor_m = block.number + 0x03;
                            stor_n = msg.value;
                            var_c = var_c + 0x60;
                            var_f = msg.sender;
                            stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                            stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                            stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                            if (stor_u == 0) {
                            }
                        }
                    }
                    if (!stor_m < (stor_m)) {
                    }
                }
                if (0x14) {
                    if (stor_g < stor_o) {
                        var_f = 0x0c;
                        stor_map_v[var_f] = (stor_map_v[var_f]) + (msg.value / 0x14);
                        if (address(arg0) == 0) {
                        }
                    }
                }
            }
            if (stor_u == 0) {
            }
        }
        if (msg.value < stor_k) {
            require(msg.value < stor_k);
        }
        var_f = msg.sender;
        stor_map_t[var_f] = 0 | (uint48(stor_map_t[var_f]));
        stor_f = stor_f - (uint208(stor_map_t[var_f]));
        require(0x02);
        require((address(this).balance / 0x02) < (uint208(stor_map_t[var_f])));
        stor_f = stor_f + (uint208(stor_map_t[var_f]) - (address(this).balance / 0x02));
        var_f = msg.sender;
        stor_map_t[var_f] = (uint208((stor_map_t[var_f]) + ((stor_map_t[var_f]) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_t[var_f]));
        var_f = msg.sender;
        stor_map_t[var_f] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!uint208(stor_map_t[var_f])) * 0x08fc, value: uint208(stor_map_t[var_f]) }(abi.encode());
        if (!(uint208(stor_map_t[var_f])) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (msg.value > 0x0de0b6b3a7640000) {
                    }
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_w[var_f] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                        if (msg.value > 0x0de0b6b3a7640000) {
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
            if (msg.value > 0x0de0b6b3a7640000) {
            }
        }
        if (!(uint208(stor_map_t[var_f])) > 0) {
            var_f = msg.sender;
            stor_map_t[var_f] = 0 | (uint48(stor_map_t[var_f]));
            stor_f = stor_f - (uint208(stor_map_t[var_f]));
            if (0x02) {
            }
            if (msg.value > 0x0de0b6b3a7640000) {
            }
        }
        require(block.number > (uint32(var_k)));
        if ((uint32(var_k) + 0x028000) > block.number) {
            emit LogLate(address(msg.sender), uint32(var_k), block.number);
            var_c = var_c + 0x60;
            var_f = msg.sender;
            stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
            stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
            stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
            require((uint32(var_k) + 0x028000) > block.number);
        }
        require(!block.number < (uint32(var_k + 0x0100)));
        require(!stor_q > 0);
        require(0x0a);
        require(0x4000);
        require((((uint32(var_k) - stor_q) / 0x0a) % 0x4000) < stor_p);
        var_f = 0x13;
        require(0x4000);
        require((((uint32(var_k) - stor_q) / 0x0a) / 0x4000) == (stor_map_x[var_f] / 0x01000000000000000000000000000000000000000000000000000000000000));
        require(!0x01000000 == 0x01000000);
        require(uint24(uint0(var_w ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_w ^ 0x01000000)) == 0);
        require(uint24(uint0(var_w ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_w ^ 0x01000000)) == 0);
        require(uint24(uint0(var_w ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_w ^ 0x01000000)) == 0);
        require(!0 == 0x06);
        var_c = var_c + 0x60;
        var_f = msg.sender;
        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        require(!(uint192(var_l) * 0x6acfc0) > 0);
        emit Event_00362509(address(msg.sender), uint32(var_w), 0x01000000, (uint192(var_l)) * 0x6acfc0);
        require(!(uint192(var_l) * 0x6acfc0) > stor_l);
        stor_l = (uint192(var_l)) * 0x6acfc0;
        emit LogRecordWin(address(msg.sender), stor_l);
        require(0x02);
        require((address(this).balance / 0x02) < (uint192(var_l) * 0x6acfc0));
        stor_f = stor_f + ((uint192(var_l) * 0x6acfc0) - (address(this).balance / 0x02));
        var_f = msg.sender;
        stor_map_t[var_f] = (uint208((stor_map_t[var_f]) + ((uint192(var_l) * 0x6acfc0) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_t[var_f]));
        var_f = msg.sender;
        stor_map_t[var_f] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!stor_l) * 0x08fc, value: stor_l }(abi.encode());
        if (!(uint192(var_l) * 0x6acfc0) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (msg.value > 0x0de0b6b3a7640000) {
                    }
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_w[var_f] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                        if (msg.value > 0x0de0b6b3a7640000) {
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
            if (msg.value > 0x0de0b6b3a7640000) {
            }
        }
        if (0x02) {
        }
        emit LogLoss(address(msg.sender), uint32(var_w), 0x01000000);
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        if (!0 == 0x05) {
            var_c = var_c + 0x60;
            var_f = msg.sender;
            stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
            stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
            stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
            if (!(uint192(var_l) * 0x4e20) > 0) {
            }
            if (!0 == 0x04) {
                var_c = var_c + 0x60;
                var_f = msg.sender;
                stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                if (!(uint192(var_l) * 0x01f4) > 0) {
                }
                if (!0 == 0x03) {
                    var_c = var_c + 0x60;
                    var_f = msg.sender;
                    stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                    stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                    stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                    if (!(uint192(var_l) * 0x19) > 0) {
                    }
                    if (!0 == 0x02) {
                        var_c = var_c + 0x60;
                        var_f = msg.sender;
                        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                        if (!(uint192(var_l) * 0x03) > 0) {
                        }
                        var_c = var_c + 0x60;
                        var_f = msg.sender;
                        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                        if (!0 > 0) {
                        }
                    }
                }
            }
        }
        if (!0x01 == 0x06) {
        }
        if (uint24(var_w ^ 0x01000000) == 0) {
        }
        if (uint24(uint0(var_w ^ 0x01000000)) == 0) {
        }
        if (uint24(var_w ^ 0x01000000) == 0) {
        }
        if (uint24(uint0(var_w ^ 0x01000000)) == 0) {
        }
        if (uint24(var_w ^ 0x01000000) == 0) {
        }
        var_c = var_c + 0x60;
        var_f = msg.sender;
        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        if (!(uint192(var_l)) > 0) {
        }
        if (0x0a) {
            if (!(uint32(uint24(stor_map_y[var_f] / (0x02 ** (0x18 * ((var_k - stor_q) % 0x0a)))))) == 0x01000000) {
                var_c = var_c + 0x60;
                var_f = msg.sender;
                stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                if (!(uint192(var_l)) > 0) {
                }
                if (uint24(uint0(var_w ^ (stor_map_z[var_f] / (0x02 ** (0x18 * ((uint32(var_k) - stor_q) % 0x0a)))))) == 0) {
                }
            }
        }
        var_c = var_c + 0x60;
        var_f = msg.sender;
        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        if (uint24(uint0(var_w ^ (blockhash(uint32(var_k))))) == 0) {
        }
        if (!(uint192(var_l)) == 0) {
            if (block.number > (uint32(var_k))) {
            }
            var_f = msg.sender;
            if (!(uint208(stor_map_t[var_f])) > 0) {
            }
        }
        var_f = msg.sender;
        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        if (msg.value > 0x0de0b6b3a7640000) {
        }
    }
    
    /// @custom:selector    0x3de8d340
    /// @custom:name        dividendsBlocks
    function dividendsBlocks() public view returns (uint256) {
        if (!stor_b > 0) {
            return 0;
            if (0x028000) {
                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                    return 0;
                    if (0x028000) {
                        var_a = 0x028000 - ((block.number - stor_q) % 0x028000);
                        return var_a;
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_e;
        return var_a;
    }
    
    /// @custom:selector    0x26699576
    /// @custom:name        playSystem
    /// @param              arg0 ["bytes", "bytes3", "bytes32", "int", "int24", "int256", "string", "uint", "uint24", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function playSystem(uint256 arg0, address arg1) public payable returns (uint256) {
        var_a = var_a + 0x60;
        address var_e = msg.sender;
        var_a = var_a + 0x60;
        require(!(uint32(var_j)) == 0);
        require(uint192(var_k) == 0);
        require(!(uint32(var_j)) == 0x01);
        var_e = msg.sender;
        require(!(uint208(stor_map_ab[var_e])) > 0);
        var_e = msg.sender;
        require(uint32(stor_map_ab[var_e] / 0x0100000000000000000000000000000000000000000000000000000000) > block.number);
        require(msg.value > 0x0de0b6b3a7640000);
        require(!msg.value > 0x0de0b6b3a7640000);
        if (!msg.value > 0) {
            if (!stor_b == 0) {
                if (address(arg1) == 0) {
                    if (0x64) {
                        stor_f = stor_f + (msg.value / 0x64);
                        var_e = arg1;
                        stor_map_ab[var_e] = (uint208((stor_map_ab[var_e]) + (msg.value / 0x64))) | (uint48(stor_map_ab[var_e]));
                        if (!stor_m < (block.number + 0x03)) {
                            if (!stor_n > stor_k) {
                                stor_m = 0x01 + stor_m;
                                stor_n = msg.value;
                                var_a = var_a + 0x60;
                                var_e = msg.sender;
                                stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                                stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                                stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                                emit LogBet(address(msg.sender), uint24(arg0), stor_m, msg.value);
                                if (stor_u == 0) {
                                    if (block.number > (stor_u + 0x0a)) {
                                        if (!block.number < 0x0100) {
                                            if (!stor_u < (block.number - 0x0100)) {
                                                if (0x0a) {
                                                    if (0x4000) {
                                                        if (0x4000) {
                                                        }
                                                    }
                                                }
                                                if (0x0a) {
                                                    if (0x0a) {
                                                        if (0x4000) {
                                                            if (0x4000) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            if (!stor_u < 0) {
                                                if (0x0a) {
                                                }
                                                if (0x0a) {
                                                }
                                            }
                                        }
                                        return stor_m;
                                    }
                                    if (!stor_u == 0) {
                                    }
                                }
                                stor_n = stor_n + msg.value;
                                var_a = var_a + 0x60;
                                var_e = msg.sender;
                                stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                                stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                                stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                                if (stor_u == 0) {
                                }
                            }
                            stor_m = block.number + 0x03;
                            stor_n = msg.value;
                            var_a = var_a + 0x60;
                            var_e = msg.sender;
                            stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                            stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                            stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                            if (stor_u == 0) {
                            }
                        }
                    }
                    if (!stor_m < (stor_m)) {
                    }
                }
                if (0x14) {
                    if (stor_g < stor_o) {
                        var_e = 0x0c;
                        stor_map_ac[var_e] = (stor_map_ac[var_e]) + (msg.value / 0x14);
                        if (address(arg1) == 0) {
                        }
                    }
                }
            }
            if (stor_u == 0) {
            }
        }
        if (msg.value < stor_k) {
            require(msg.value < stor_k);
        }
        var_e = msg.sender;
        stor_map_ab[var_e] = 0 | (uint48(stor_map_ab[var_e]));
        stor_f = stor_f - (uint208(stor_map_ab[var_e]));
        require(0x02);
        require((address(this).balance / 0x02) < (uint208(stor_map_ab[var_e])));
        stor_f = stor_f + (uint208(stor_map_ab[var_e]) - (address(this).balance / 0x02));
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint208((stor_map_ab[var_e]) + ((stor_map_ab[var_e]) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_ab[var_e]));
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!uint208(stor_map_ab[var_e])) * 0x08fc, value: uint208(stor_map_ab[var_e]) }(abi.encode());
        if (!(uint208(stor_map_ab[var_e])) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (msg.value > 0x0de0b6b3a7640000) {
                    }
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_ad[var_e] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                        if (msg.value > 0x0de0b6b3a7640000) {
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
            if (msg.value > 0x0de0b6b3a7640000) {
            }
        }
        if (!(uint208(stor_map_ab[var_e])) > 0) {
            var_e = msg.sender;
            stor_map_ab[var_e] = 0 | (uint48(stor_map_ab[var_e]));
            stor_f = stor_f - (uint208(stor_map_ab[var_e]));
            if (0x02) {
            }
            if (msg.value > 0x0de0b6b3a7640000) {
            }
        }
        require(block.number > (uint32(var_j)));
        if ((uint32(var_j) + 0x028000) > block.number) {
            emit LogLate(address(msg.sender), uint32(var_j), block.number);
            var_a = var_a + 0x60;
            var_e = msg.sender;
            stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
            stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
            stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
            require((uint32(var_j) + 0x028000) > block.number);
        }
        require(!block.number < (uint32(var_j + 0x0100)));
        require(!stor_q > 0);
        require(0x0a);
        require(0x4000);
        require((((uint32(var_j) - stor_q) / 0x0a) % 0x4000) < stor_p);
        var_e = 0x13;
        require(0x4000);
        require((((uint32(var_j) - stor_q) / 0x0a) / 0x4000) == (stor_map_ae[var_e] / 0x01000000000000000000000000000000000000000000000000000000000000));
        require(!0x01000000 == 0x01000000);
        require(uint24(uint0(var_u ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_u ^ 0x01000000)) == 0);
        require(uint24(uint0(var_u ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_u ^ 0x01000000)) == 0);
        require(uint24(uint0(var_u ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_u ^ 0x01000000)) == 0);
        require(!0 == 0x06);
        var_a = var_a + 0x60;
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        require(!(uint192(var_k) * 0x6acfc0) > 0);
        emit Event_00362509(address(msg.sender), uint32(var_u), 0x01000000, (uint192(var_k)) * 0x6acfc0);
        require(!(uint192(var_k) * 0x6acfc0) > stor_l);
        stor_l = (uint192(var_k)) * 0x6acfc0;
        emit LogRecordWin(address(msg.sender), stor_l);
        require(0x02);
        require((address(this).balance / 0x02) < (uint192(var_k) * 0x6acfc0));
        stor_f = stor_f + ((uint192(var_k) * 0x6acfc0) - (address(this).balance / 0x02));
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint208((stor_map_ab[var_e]) + ((uint192(var_k) * 0x6acfc0) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_ab[var_e]));
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!stor_l) * 0x08fc, value: stor_l }(abi.encode());
        if (!(uint192(var_k) * 0x6acfc0) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (msg.value > 0x0de0b6b3a7640000) {
                    }
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_ad[var_e] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                        if (msg.value > 0x0de0b6b3a7640000) {
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
            if (msg.value > 0x0de0b6b3a7640000) {
            }
        }
        if (0x02) {
        }
        emit LogLoss(address(msg.sender), uint32(var_u), 0x01000000);
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        if (!0 == 0x05) {
            var_a = var_a + 0x60;
            var_e = msg.sender;
            stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
            stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
            stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
            if (!(uint192(var_k) * 0x4e20) > 0) {
            }
            if (!0 == 0x04) {
                var_a = var_a + 0x60;
                var_e = msg.sender;
                stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                if (!(uint192(var_k) * 0x01f4) > 0) {
                }
                if (!0 == 0x03) {
                    var_a = var_a + 0x60;
                    var_e = msg.sender;
                    stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                    stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                    stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                    if (!(uint192(var_k) * 0x19) > 0) {
                    }
                    if (!0 == 0x02) {
                        var_a = var_a + 0x60;
                        var_e = msg.sender;
                        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                        if (!(uint192(var_k) * 0x03) > 0) {
                        }
                        var_a = var_a + 0x60;
                        var_e = msg.sender;
                        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                        if (!0 > 0) {
                        }
                    }
                }
            }
        }
        if (!0x01 == 0x06) {
        }
        if (uint24(var_u ^ 0x01000000) == 0) {
        }
        if (uint24(uint0(var_u ^ 0x01000000)) == 0) {
        }
        if (uint24(var_u ^ 0x01000000) == 0) {
        }
        if (uint24(uint0(var_u ^ 0x01000000)) == 0) {
        }
        if (uint24(var_u ^ 0x01000000) == 0) {
        }
        var_a = var_a + 0x60;
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        if (!(uint192(var_k)) > 0) {
        }
        if (0x0a) {
            if (!(uint32(uint24(stor_map_af[var_e] / (0x02 ** (0x18 * ((var_j - stor_q) % 0x0a)))))) == 0x01000000) {
                var_a = var_a + 0x60;
                var_e = msg.sender;
                stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                if (!(uint192(var_k)) > 0) {
                }
                if (uint24(uint0(var_u ^ (stor_map_ag[var_e] / (0x02 ** (0x18 * ((uint32(var_j) - stor_q) % 0x0a)))))) == 0) {
                }
            }
        }
        var_a = var_a + 0x60;
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        if (uint24(uint0(var_u ^ (blockhash(uint32(var_j))))) == 0) {
        }
        if (!(uint192(var_k)) == 0) {
            if (block.number > (uint32(var_j))) {
            }
            var_e = msg.sender;
            if (!(uint208(stor_map_ab[var_e])) > 0) {
            }
        }
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        if (msg.value > 0x0de0b6b3a7640000) {
        }
    }
    
    /// @custom:selector    0x06fdde03
    /// @custom:name        name
    function name() public pure returns (bytes memory) {
        var_a = var_a + 0x40;
        if (!var_a.length) {
            return abi.encodePacked((0x20 + var_a) - var_a, var_a.length);
            return abi.encodePacked((0x20 + var_a) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_g));
        }
        if (!var_a.length) {
        }
    }
    
    /// @custom:selector    0x40c73d17
    /// @custom:name        changeAnimator
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeAnimator(address arg0) public {
        if (address(msg.sender) == (address(stor_i))) {
            if (!(address(arg0)) == 0) {
                var_a = msg.sender;
                if (stor_map_h[var_a] == 0) {
                    if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == 0) {
                        if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == stor_g) {
                            var_a = msg.sender;
                            if (stor_j) {
                                if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) < stor_g) {
                                    if (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000) < stor_o) {
                                        var_a = 0x0c;
                                        if (!(0x01 + (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000))) < stor_g) {
                                        }
                                    }
                                    if (0xffffffff) {
                                        stor_f = stor_f + 0;
                                        var_a = msg.sender;
                                        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + 0)) | (uint48(stor_map_a[var_a]));
                                        var_a = msg.sender;
                                        stor_map_a[var_a] = (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                                        uint16 var_d = stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000;
                                        emit LogDividend(address(msg.sender), 0, var_d);
                                        var_a = arg0;
                                        if (stor_map_h[var_a] == 0) {
                                            if (!(var_d) == 0) {
                                                if (!(var_d) == stor_g) {
                                                    if (stor_j) {
                                                        if (!(var_d) < stor_g) {
                                                        }
                                                    }
                                                    stor_i = (address(arg0)) | (uint96(stor_i));
                                                }
                                                var_a = arg0;
                                                stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                                                stor_i = (address(arg0)) | (uint96(stor_i));
                                            }
                                            if (!stor_map_h[var_a] == 0) {
                                            }
                                        }
                                    }
                                }
                            }
                            var_a = arg0;
                            if (stor_map_h[var_a] == 0) {
                            }
                        }
                        var_a = msg.sender;
                        stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                        var_a = arg0;
                        if (stor_map_h[var_a] == 0) {
                        }
                    }
                    if (!stor_map_h[var_a] == 0) {
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x6b486818
    /// @custom:name        hashFirst
    function hashFirst() public view returns (uint256) {
        return stor_q;
    }
    
    /// @custom:selector    0xa367d99a
    /// @custom:name        investStart
    function investStart() public view returns (uint256) {
        return stor_b;
    }
    
    /// @custom:selector    0x12c8052f
    /// @custom:name        won
    function won() public {
        var_a = var_a + 0x60;
        address var_e = msg.sender;
        var_a = var_a + 0x60;
        require(!(uint32(var_j)) == 0);
        require(uint192(var_k) == 0);
        require(!(uint32(var_j)) == 0x01);
        var_e = msg.sender;
        require(!(uint208(stor_map_ab[var_e])) > 0);
        var_e = msg.sender;
        require(uint32(stor_map_ab[var_e] / 0x0100000000000000000000000000000000000000000000000000000000) > block.number);
        var_e = msg.sender;
        stor_map_ab[var_e] = 0 | (uint48(stor_map_ab[var_e]));
        stor_f = stor_f - (uint208(stor_map_ab[var_e]));
        require(0x02);
        require((address(this).balance / 0x02) < (uint208(stor_map_ab[var_e])));
        stor_f = stor_f + (uint208(stor_map_ab[var_e]) - (address(this).balance / 0x02));
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint208((stor_map_ab[var_e]) + ((stor_map_ab[var_e]) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_ab[var_e]));
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!uint208(stor_map_ab[var_e])) * 0x08fc, value: uint208(stor_map_ab[var_e]) }(abi.encode());
        if (!(uint208(stor_map_ab[var_e])) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_ad[var_e] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            stor_g = 0x01 + stor_g;
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
        }
        if (!(uint208(stor_map_ab[var_e])) > 0) {
            var_e = msg.sender;
            stor_map_ab[var_e] = 0 | (uint48(stor_map_ab[var_e]));
            stor_f = stor_f - (uint208(stor_map_ab[var_e]));
            if (0x02) {
            }
        }
        require(block.number > (uint32(var_j)));
        require((uint32(var_j) + 0x028000) > block.number);
        emit LogLate(address(msg.sender), uint32(var_j), block.number);
        var_a = var_a + 0x60;
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        require(!block.number < (uint32(var_j + 0x0100)));
        require(!stor_q > 0);
        require(0x0a);
        require(0x4000);
        require((((uint32(var_j) - stor_q) / 0x0a) % 0x4000) < stor_p);
        var_e = 0x13;
        require(0x4000);
        require((((uint32(var_j) - stor_q) / 0x0a) / 0x4000) == (stor_map_ae[var_e] / 0x01000000000000000000000000000000000000000000000000000000000000));
        require(!0x01000000 == 0x01000000);
        require(uint24(uint0(var_r ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_r ^ 0x01000000)) == 0);
        require(uint24(uint0(var_r ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_r ^ 0x01000000)) == 0);
        require(uint24(uint0(var_r ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_r ^ 0x01000000)) == 0);
        require(!0 == 0x06);
        var_a = var_a + 0x60;
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        require(!(uint192(var_k) * 0x6acfc0) > 0);
        emit Event_00362509(address(msg.sender), uint32(var_r), 0x01000000, (uint192(var_k)) * 0x6acfc0);
        require(!(uint192(var_k) * 0x6acfc0) > stor_l);
        stor_l = (uint192(var_k)) * 0x6acfc0;
        emit LogRecordWin(address(msg.sender), stor_l);
        require(0x02);
        require((address(this).balance / 0x02) < (uint192(var_k) * 0x6acfc0));
        stor_f = stor_f + ((uint192(var_k) * 0x6acfc0) - (address(this).balance / 0x02));
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint208((stor_map_ab[var_e]) + ((uint192(var_k) * 0x6acfc0) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_ab[var_e]));
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!stor_l) * 0x08fc, value: stor_l }(abi.encode());
        if (!(uint192(var_k) * 0x6acfc0) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_ad[var_e] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            stor_g = 0x01 + stor_g;
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
        }
        if (0x02) {
        }
        emit LogLoss(address(msg.sender), uint32(var_r), 0x01000000);
        if (!0 == 0x05) {
            var_a = var_a + 0x60;
            var_e = msg.sender;
            stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
            stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
            stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
            if (!(uint192(var_k) * 0x4e20) > 0) {
            }
            if (!0 == 0x04) {
                var_a = var_a + 0x60;
                var_e = msg.sender;
                stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                if (!(uint192(var_k) * 0x01f4) > 0) {
                }
                if (!0 == 0x03) {
                    var_a = var_a + 0x60;
                    var_e = msg.sender;
                    stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                    stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                    stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                    if (!(uint192(var_k) * 0x19) > 0) {
                    }
                    if (!0 == 0x02) {
                        var_a = var_a + 0x60;
                        var_e = msg.sender;
                        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                        if (!(uint192(var_k) * 0x03) > 0) {
                        }
                        var_a = var_a + 0x60;
                        var_e = msg.sender;
                        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                        if (!0 > 0) {
                        }
                    }
                }
            }
        }
        if (!0x01 == 0x06) {
        }
        if (uint24(var_r ^ 0x01000000) == 0) {
        }
        if (uint24(uint0(var_r ^ 0x01000000)) == 0) {
        }
        if (uint24(var_r ^ 0x01000000) == 0) {
        }
        if (uint24(uint0(var_r ^ 0x01000000)) == 0) {
        }
        if (uint24(var_r ^ 0x01000000) == 0) {
        }
        var_a = var_a + 0x60;
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        if (!(uint192(var_k)) > 0) {
        }
        if (0x0a) {
            if (!(uint32(uint24(stor_map_af[var_e] / (0x02 ** (0x18 * ((var_j - stor_q) % 0x0a)))))) == 0x01000000) {
                var_a = var_a + 0x60;
                var_e = msg.sender;
                stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
                stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
                if (!(uint192(var_k)) > 0) {
                }
                if (uint24(uint0(var_r ^ (stor_map_ag[var_e] / (0x02 ** (0x18 * ((uint32(var_j) - stor_q) % 0x0a)))))) == 0) {
                }
            }
        }
        var_a = var_a + 0x60;
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        if (uint24(uint0(var_r ^ (blockhash(uint32(var_j))))) == 0) {
        }
        if (!(uint192(var_k)) == 0) {
            if (block.number > (uint32(var_j))) {
            }
            var_e = msg.sender;
            if (!(uint208(stor_map_ab[var_e])) > 0) {
            }
        }
        var_e = msg.sender;
        stor_map_ab[var_e] = (uint192(var_o)) | (uint64(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_p) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
        stor_map_ab[var_e] = (uint32(var_q) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_ab[var_e]));
    }
    
    /// @custom:selector    0xa6f9dae1
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0) public {
        if (address(msg.sender) == (address(stor_e))) {
            if (!(address(arg0)) == 0) {
                var_a = msg.sender;
                if (stor_map_h[var_a] == 0) {
                    if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == 0) {
                        if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == stor_g) {
                            var_a = msg.sender;
                            if (stor_j) {
                                if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) < stor_g) {
                                    if (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000) < stor_o) {
                                        var_a = 0x0c;
                                        if (!(0x01 + (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000))) < stor_g) {
                                        }
                                    }
                                    if (0xffffffff) {
                                        stor_f = stor_f + 0;
                                        var_a = msg.sender;
                                        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + 0)) | (uint48(stor_map_a[var_a]));
                                        var_a = msg.sender;
                                        stor_map_a[var_a] = (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                                        uint16 var_d = stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000;
                                        emit LogDividend(address(msg.sender), 0, var_d);
                                        var_a = arg0;
                                        if (stor_map_h[var_a] == 0) {
                                            if (!(var_d) == 0) {
                                                if (!(var_d) == stor_g) {
                                                    if (stor_j) {
                                                        if (!(var_d) < stor_g) {
                                                        }
                                                    }
                                                    stor_e = (address(arg0)) | (uint96(stor_e));
                                                }
                                                var_a = arg0;
                                                stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                                                stor_e = (address(arg0)) | (uint96(stor_e));
                                            }
                                            if (!stor_map_h[var_a] == 0) {
                                            }
                                        }
                                    }
                                }
                            }
                            var_a = arg0;
                            if (stor_map_h[var_a] == 0) {
                            }
                        }
                        var_a = msg.sender;
                        stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                        var_a = arg0;
                        if (stor_map_h[var_a] == 0) {
                        }
                    }
                    if (!stor_map_h[var_a] == 0) {
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0xbc851718
    /// @custom:name        hashLast
    function hashLast() public view returns (uint256) {
        return stor_u;
    }
    
    /// @custom:selector    0xbe1eefbf
    /// @custom:name        hotStore
    function hotStore() public payable {
        if (!stor_b > 0x01) {
            if (block.number < (stor_b + 0x014000)) {
                stor_b = 0;
                if (!stor_q > 0) {
                    if (0x028000) {
                        if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                            stor_o = stor_o + 0x01;
                            stor_map_r[var_a] = 0;
                            if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                if (!stor_b == 0) {
                                    if (!stor_b == 0) {
                                        stor_g = 0x01 + stor_g;
                                    }
                                    if (!stor_g < (stor_o - 0x01)) {
                                        stor_g = 0x01 + stor_g;
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_g < (stor_o - 0x01)) {
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    }
                                }
                            }
                            if (!((block.number - stor_q) / 0x028000) > stor_g) {
                            }
                        }
                    }
                }
            }
            if (!stor_b > 0x01) {
            }
        }
    }
    
    /// @custom:selector    0x37c43088
    /// @custom:name        hashesSize
    function hashesSize() public pure returns (uint256) {
        return 0x4000;
    }
    
    /// @custom:selector    0xb3470e97
    /// @custom:name        addHashes128
    function addHashes128() public returns (uint256) {
        require(!stor_q == 0);
        require(!stor_q == 0);
        require(stor_q == 0);
        if (!(stor_p + 0x80) > 0x4000) {
            stor_p = 0x4000;
            if (!stor_p > 0x4000) {
                var_a = 0x13;
                if (!(keccak256(var_a) + stor_p) > (keccak256(var_a) + 0x4000)) {
                    stor_map_ah[var_a] = 0;
                    if (!(keccak256(var_a) + stor_p) > (0x01 + (keccak256(var_a) + 0x4000))) {
                    }
                    if (!stor_p < stor_p) {
                        if (stor_p < 0x4000) {
                            return stor_p;
                            if (0x0a) {
                                stor_q = block.number - (block.number % 0x0a);
                                stor_u = stor_q;
                                return stor_p;
                            }
                        }
                        if (stor_p < stor_p) {
                            stor_map_ai[var_a] = 0x01;
                            if (!(0x01 + stor_p) < stor_p) {
                            }
                        }
                    }
                }
                if (!stor_p < stor_p) {
                }
            }
            stor_p = stor_p + 0x80;
            if (!stor_p > (stor_p)) {
            }
        }
        if (!0x80 > 0x4000) {
        }
        if (!0x80 > 0) {
        }
    }
    
    /// @custom:selector    0xbfba9029
    /// @custom:name        hashBetMax
    function hashBetMax() public view returns (uint256) {
        return stor_k;
    }
    
    /// @custom:selector    0xcd88333e
    /// @custom:name        coldStore
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function coldStore(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_e)));
        require(!stor_b > 0x01);
        require(block.number < (stor_b + 0x014000));
        stor_b = 0;
        require(!arg0 > 0);
        require(0x0a);
        require(!(address(this).balance) < ((((stor_d * 0x09) / 0x0a) + stor_f) + arg0));
        require(0x02);
        require(stor_d < (stor_c / 0x02));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
        stor_aj = block.number;
        require(0x0190);
        require(arg0 > (address(this).balance / 0x0190));
        require(!arg0 > (address(this).balance / 0x0190));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
        require(!(stor_aj + 0x9d80) > block.number);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
        if (arg0 > 0) {
            require(arg0 > 0);
        }
        if (!stor_q > 0) {
            if (0x028000) {
                if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                    stor_o = stor_o + 0x01;
                    stor_map_r[var_a] = 0;
                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                        if (!stor_b == 0) {
                            if (!stor_b == 0) {
                                if (!arg0 > 0) {
                                }
                                stor_g = 0x01 + stor_g;
                                if (!arg0 > 0) {
                                }
                            }
                            if (!stor_g < (stor_o - 0x01)) {
                                stor_g = 0x01 + stor_g;
                                if (!arg0 > 0) {
                                }
                                if (!arg0 > 0) {
                                }
                            }
                        }
                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                            if (!stor_g < (stor_o - 0x01)) {
                            }
                            if (!((block.number - stor_q) / 0x028000) > stor_g) {
                            }
                        }
                    }
                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                    }
                }
            }
            if (!arg0 > 0) {
            }
        }
        if (!stor_b > 0x01) {
        }
    }
    
    /// @custom:selector    0xd6d25008
    /// @custom:name        coldStoreLast
    function coldStoreLast() public view returns (uint256) {
        return stor_aj;
    }
    
    /// @custom:selector    0xd9fa9335
    /// @custom:name        houseKeeping
    function houseKeeping() public {
        if (!stor_b > 0x01) {
            if (block.number < (stor_b + 0x014000)) {
                stor_b = 0;
                if (!stor_q > 0) {
                    if (0x028000) {
                        if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                            stor_o = stor_o + 0x01;
                            stor_map_r[var_a] = 0;
                            if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                if (!stor_b == 0) {
                                    if (!stor_b == 0) {
                                        stor_g = 0x01 + stor_g;
                                    }
                                    if (!stor_g < (stor_o - 0x01)) {
                                        stor_g = 0x01 + stor_g;
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_g < (stor_o - 0x01)) {
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    }
                                }
                            }
                            if (!((block.number - stor_q) / 0x028000) > stor_g) {
                            }
                        }
                    }
                }
            }
            if (!stor_b > 0x01) {
            }
        }
    }
    
    /// @custom:selector    0xde469071
    /// @custom:name        hashBetSum
    function hashBetSum() public view returns (uint256) {
        return stor_n;
    }
    
    /// @custom:selector    0xcd0a314b
    /// @custom:name        walletBalance
    function walletBalance() public view returns (uint256) {
        return stor_f;
    }
    
    /// @custom:selector    0xdd62ed3e
    /// @custom:name        allowance
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function allowance(address arg0, address arg1) public view returns (uint256) {
        var_a = arg1;
        return stor_map_h[var_a];
    }
    
    /// @custom:selector    0x93e84cd9
    /// @custom:name        play
    function play() public payable returns (uint256) {
        var_c = var_c + 0x60;
        address var_f = msg.sender;
        var_c = var_c + 0x60;
        require(!(uint32(var_k)) == 0);
        require(uint192(var_l) == 0);
        require(!(uint32(var_k)) == 0x01);
        var_f = msg.sender;
        require(!(uint208(stor_map_t[var_f])) > 0);
        var_f = msg.sender;
        require(uint32(stor_map_t[var_f] / 0x0100000000000000000000000000000000000000000000000000000000) > block.number);
        require(msg.value > 0x0de0b6b3a7640000);
        require(!msg.value > 0x0de0b6b3a7640000);
        if (!msg.value > 0) {
            if (!stor_b == 0) {
                if (0 == 0) {
                    if (0x64) {
                        stor_f = stor_f + (msg.value / 0x64);
                        var_f = 0;
                        stor_map_t[var_f] = (uint208((stor_map_t[var_f]) + (msg.value / 0x64))) | (uint48(stor_map_t[var_f]));
                        if (!stor_m < (block.number + 0x03)) {
                            if (!stor_n > stor_k) {
                                stor_m = 0x01 + stor_m;
                                stor_n = msg.value;
                                var_c = var_c + 0x60;
                                var_f = msg.sender;
                                stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                                stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                                stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                                emit LogBet(address(msg.sender), uint24(keccak256(var_o)), stor_m, msg.value);
                                if (stor_u == 0) {
                                    if (block.number > (stor_u + 0x0a)) {
                                        if (!block.number < 0x0100) {
                                            if (!stor_u < (block.number - 0x0100)) {
                                                if (0x0a) {
                                                    if (0x4000) {
                                                        if (0x4000) {
                                                        }
                                                    }
                                                }
                                                if (0x0a) {
                                                    if (0x0a) {
                                                        if (0x4000) {
                                                            if (0x4000) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            if (!stor_u < 0) {
                                                if (0x0a) {
                                                }
                                                if (0x0a) {
                                                }
                                            }
                                        }
                                        return stor_m;
                                    }
                                    if (!stor_u == 0) {
                                    }
                                }
                                stor_n = stor_n + msg.value;
                                var_c = var_c + 0x60;
                                var_f = msg.sender;
                                stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                                stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                                stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                                if (stor_u == 0) {
                                }
                            }
                            stor_m = block.number + 0x03;
                            stor_n = msg.value;
                            var_c = var_c + 0x60;
                            var_f = msg.sender;
                            stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                            stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                            stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                            if (stor_u == 0) {
                            }
                        }
                    }
                    if (!stor_m < (stor_m)) {
                    }
                }
                if (0x14) {
                    if (stor_g < stor_o) {
                        var_f = 0x0c;
                        stor_map_v[var_f] = (stor_map_v[var_f]) + (msg.value / 0x14);
                        if (0 == 0) {
                        }
                    }
                }
            }
            if (stor_u == 0) {
            }
        }
        if (msg.value < stor_k) {
            require(msg.value < stor_k);
        }
        var_f = msg.sender;
        stor_map_t[var_f] = 0 | (uint48(stor_map_t[var_f]));
        stor_f = stor_f - (uint208(stor_map_t[var_f]));
        require(0x02);
        require((address(this).balance / 0x02) < (uint208(stor_map_t[var_f])));
        stor_f = stor_f + (uint208(stor_map_t[var_f]) - (address(this).balance / 0x02));
        var_f = msg.sender;
        stor_map_t[var_f] = (uint208((stor_map_t[var_f]) + ((stor_map_t[var_f]) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_t[var_f]));
        var_f = msg.sender;
        stor_map_t[var_f] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!uint208(stor_map_t[var_f])) * 0x08fc, value: uint208(stor_map_t[var_f]) }(abi.encode());
        if (!(uint208(stor_map_t[var_f])) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (msg.value > 0x0de0b6b3a7640000) {
                    }
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_w[var_f] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                        if (msg.value > 0x0de0b6b3a7640000) {
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
            if (msg.value > 0x0de0b6b3a7640000) {
            }
        }
        if (!(uint208(stor_map_t[var_f])) > 0) {
            var_f = msg.sender;
            stor_map_t[var_f] = 0 | (uint48(stor_map_t[var_f]));
            stor_f = stor_f - (uint208(stor_map_t[var_f]));
            if (0x02) {
            }
            if (msg.value > 0x0de0b6b3a7640000) {
            }
        }
        require(block.number > (uint32(var_k)));
        if ((uint32(var_k) + 0x028000) > block.number) {
            emit LogLate(address(msg.sender), uint32(var_k), block.number);
            var_c = var_c + 0x60;
            var_f = msg.sender;
            stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
            stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
            stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
            require((uint32(var_k) + 0x028000) > block.number);
        }
        require(!block.number < (uint32(var_k + 0x0100)));
        require(!stor_q > 0);
        require(0x0a);
        require(0x4000);
        require((((uint32(var_k) - stor_q) / 0x0a) % 0x4000) < stor_p);
        var_f = 0x13;
        require(0x4000);
        require((((uint32(var_k) - stor_q) / 0x0a) / 0x4000) == (stor_map_x[var_f] / 0x01000000000000000000000000000000000000000000000000000000000000));
        require(!0x01000000 == 0x01000000);
        require(uint24(uint0(var_w ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_w ^ 0x01000000)) == 0);
        require(uint24(uint0(var_w ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_w ^ 0x01000000)) == 0);
        require(uint24(uint0(var_w ^ 0x01000000)) == 0);
        require(uint24(bytes1(var_w ^ 0x01000000)) == 0);
        require(!0 == 0x06);
        var_c = var_c + 0x60;
        var_f = msg.sender;
        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        require(!(uint192(var_l) * 0x6acfc0) > 0);
        emit Event_00362509(address(msg.sender), uint32(var_w), 0x01000000, (uint192(var_l)) * 0x6acfc0);
        require(!(uint192(var_l) * 0x6acfc0) > stor_l);
        stor_l = (uint192(var_l)) * 0x6acfc0;
        emit LogRecordWin(address(msg.sender), stor_l);
        require(0x02);
        require((address(this).balance / 0x02) < (uint192(var_l) * 0x6acfc0));
        stor_f = stor_f + ((uint192(var_l) * 0x6acfc0) - (address(this).balance / 0x02));
        var_f = msg.sender;
        stor_map_t[var_f] = (uint208((stor_map_t[var_f]) + ((uint192(var_l) * 0x6acfc0) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_t[var_f]));
        var_f = msg.sender;
        stor_map_t[var_f] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!stor_l) * 0x08fc, value: stor_l }(abi.encode());
        if (!(uint192(var_l) * 0x6acfc0) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (msg.value > 0x0de0b6b3a7640000) {
                    }
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_w[var_f] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                            if (msg.value > 0x0de0b6b3a7640000) {
                                            }
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                        if (msg.value > 0x0de0b6b3a7640000) {
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
            if (msg.value > 0x0de0b6b3a7640000) {
            }
        }
        if (0x02) {
        }
        emit LogLoss(address(msg.sender), uint32(var_w), 0x01000000);
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        if (!0 == 0x05) {
            var_c = var_c + 0x60;
            var_f = msg.sender;
            stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
            stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
            stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
            if (!(uint192(var_l) * 0x4e20) > 0) {
            }
            if (!0 == 0x04) {
                var_c = var_c + 0x60;
                var_f = msg.sender;
                stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                if (!(uint192(var_l) * 0x01f4) > 0) {
                }
                if (!0 == 0x03) {
                    var_c = var_c + 0x60;
                    var_f = msg.sender;
                    stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                    stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                    stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                    if (!(uint192(var_l) * 0x19) > 0) {
                    }
                    if (!0 == 0x02) {
                        var_c = var_c + 0x60;
                        var_f = msg.sender;
                        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                        if (!(uint192(var_l) * 0x03) > 0) {
                        }
                        var_c = var_c + 0x60;
                        var_f = msg.sender;
                        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                        if (!0 > 0) {
                        }
                    }
                }
            }
        }
        if (!0x01 == 0x06) {
        }
        if (uint24(var_w ^ 0x01000000) == 0) {
        }
        if (uint24(uint0(var_w ^ 0x01000000)) == 0) {
        }
        if (uint24(var_w ^ 0x01000000) == 0) {
        }
        if (uint24(uint0(var_w ^ 0x01000000)) == 0) {
        }
        if (uint24(var_w ^ 0x01000000) == 0) {
        }
        var_c = var_c + 0x60;
        var_f = msg.sender;
        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        if (!(uint192(var_l)) > 0) {
        }
        if (0x0a) {
            if (!(uint32(uint24(stor_map_y[var_f] / (0x02 ** (0x18 * ((var_k - stor_q) % 0x0a)))))) == 0x01000000) {
                var_c = var_c + 0x60;
                var_f = msg.sender;
                stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
                stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
                if (!(uint192(var_l)) > 0) {
                }
                if (uint24(uint0(var_w ^ (stor_map_z[var_f] / (0x02 ** (0x18 * ((uint32(var_k) - stor_q) % 0x0a)))))) == 0) {
                }
            }
        }
        var_c = var_c + 0x60;
        var_f = msg.sender;
        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        if (msg.value > 0x0de0b6b3a7640000) {
        }
        if (uint24(uint0(var_w ^ (blockhash(uint32(var_k))))) == 0) {
        }
        if (!(uint192(var_l)) == 0) {
            if (block.number > (uint32(var_k))) {
            }
            var_f = msg.sender;
            if (!(uint208(stor_map_t[var_f])) > 0) {
            }
        }
        var_f = msg.sender;
        stor_map_t[var_f] = (uint192(var_q)) | (uint64(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_r) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        stor_map_t[var_f] = (uint32(var_s) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_t[var_f]));
        if (msg.value > 0x0de0b6b3a7640000) {
        }
    }
    
    /// @custom:selector    0x8eecddcf
    /// @custom:name        betBlockNumberOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function betBlockNumberOf(address arg0) public view returns (uint32) {
        address var_a = arg0;
        uint32 var_c = stor_map_a[var_a] / 0x0100000000000000000000000000000000000000000000000000000000;
        return var_c;
    }
    
    /// @custom:selector    0x18160ddd
    /// @custom:name        totalSupply
    function totalSupply() public view returns (uint256) {
        return stor_j;
    }
    
    /// @custom:selector    0xe73cc2eb
    /// @custom:name        walletPeriodOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function walletPeriodOf(address arg0) public view returns (uint16) {
        address var_a = arg0;
        uint16 var_c = stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000;
        return var_c;
    }
    
    /// @custom:selector    0xe76ece01
    /// @custom:name        setInvestStart
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setInvestStart(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_e)));
        require(!stor_b == 0x01);
        require(!stor_q > 0);
        require(block.number < arg0);
        stor_b = arg0;
        if (stor_q > 0) {
        }
        if (!stor_b == 0x01) {
        }
    }
    
    /// @custom:selector    0x380f3087
    /// @custom:name        addHashes
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function addHashes(uint256 arg0) public returns (uint256) {
        require(!stor_q == 0);
        require(!stor_q == 0);
        require(stor_q == 0);
        if (!(stor_p + arg0) > 0x4000) {
            stor_p = 0x4000;
            if (!stor_p > 0x4000) {
                var_a = 0x13;
                if (!(keccak256(var_a) + stor_p) > (keccak256(var_a) + 0x4000)) {
                    stor_map_ah[var_a] = 0;
                    if (!(keccak256(var_a) + stor_p) > (0x01 + (keccak256(var_a) + 0x4000))) {
                    }
                    if (!stor_p < stor_p) {
                        if (stor_p < 0x4000) {
                            return stor_p;
                            if (0x0a) {
                                stor_q = block.number - (block.number % 0x0a);
                                stor_u = stor_q;
                                return stor_p;
                            }
                        }
                        if (stor_p < stor_p) {
                            stor_map_ai[var_a] = 0x01;
                            if (!(0x01 + stor_p) < stor_p) {
                            }
                        }
                    }
                }
                if (!stor_p < stor_p) {
                }
            }
            stor_p = stor_p + arg0;
            if (!stor_p > (stor_p)) {
            }
        }
        if (!arg0 > 0x4000) {
        }
        if (!arg0 > 0) {
            if (!arg0 > 0x4000) {
            }
            require(!arg0 > 0);
            require(arg0 > 0);
        }
    }
    
    /// @custom:selector    0x095ea7b3
    /// @custom:name        approve
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approve(address arg0, uint256 arg1) public {
        if (arg1 == 0) {
            var_a = arg0;
            if (stor_map_h[var_a] == 0) {
                var_a = arg0;
                stor_map_h[var_a] = arg1;
                emit Approval(address(msg.sender), address(arg0), arg1);
            }
            if (arg1 == 0) {
            }
        }
    }
    
    /// @custom:selector    0xdf1ead82
    /// @custom:name        disinvest
    function disinvest() public {
        require(stor_b == 0);
        var_a = msg.sender;
        if (stor_map_h[var_a] == 0) {
            if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == 0) {
                require(stor_map_h[var_a] == 0);
                var_a = msg.sender;
                require(!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == 0);
                require(!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == stor_g);
                require(stor_j);
                var_a = 0x0c;
                require(!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) < stor_g);
            }
        }
        require(0xffffffff);
        stor_f = stor_f + 0;
        var_a = msg.sender;
        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + 0)) | (uint48(stor_map_a[var_a]));
        var_a = msg.sender;
        stor_map_a[var_a] = (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
        uint16 var_d = stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000;
        emit LogDividend(address(msg.sender), 0, var_d);
        var_a = msg.sender;
        emit Transfer(address(msg.sender), 0, stor_map_h[var_a]);
        stor_map_h[var_a] = 0;
        stor_d = stor_d - (stor_map_h[var_a] * 0x038d7ea4c68000);
        require(0x0a);
        var_a = msg.sender;
        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + (((stor_map_h[var_a] * 0x038d7ea4c68000) * 0x09) / 0x0a))) | (uint48(stor_map_a[var_a]));
        var_a = msg.sender;
        require(!(uint208(stor_map_a[var_a])) > 0);
        var_a = msg.sender;
        require(uint32(stor_map_a[var_a] / 0x0100000000000000000000000000000000000000000000000000000000) > block.number);
        var_a = msg.sender;
        stor_map_a[var_a] = 0 | (uint48(stor_map_a[var_a]));
        stor_f = stor_f - (uint208(stor_map_a[var_a]));
        require(0x02);
        require((address(this).balance / 0x02) < (uint208(stor_map_a[var_a])));
        stor_f = stor_f + (uint208(stor_map_a[var_a]) - (address(this).balance / 0x02));
        var_a = msg.sender;
        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + ((stor_map_a[var_a]) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_a[var_a]));
        var_a = msg.sender;
        stor_map_a[var_a] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_a[var_a]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!uint208(stor_map_a[var_a])) * 0x08fc, value: uint208(stor_map_a[var_a]) }(abi.encode());
        if (!(uint208(stor_map_a[var_a])) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_r[var_a] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            stor_g = 0x01 + stor_g;
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
        }
        if (!(uint208(stor_map_a[var_a])) > 0) {
            var_a = msg.sender;
            stor_map_a[var_a] = 0 | (uint48(stor_map_a[var_a]));
            stor_f = stor_f - (uint208(stor_map_a[var_a]));
            if (0x02) {
            }
        }
        var_a = msg.sender;
        stor_map_h[var_a] = 0;
        stor_d = stor_d - (stor_map_h[var_a] * 0x038d7ea4c68000);
        if (0x0a) {
        }
        var_a = msg.sender;
        stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
        var_a = msg.sender;
        stor_map_h[var_a] = 0;
        stor_d = stor_d - (stor_map_h[var_a] * 0x038d7ea4c68000);
        if (0x0a) {
        }
        if (!stor_map_h[var_a] == 0) {
        }
    }
    
    /// @custom:selector    0xe4cc98a5
    /// @custom:name        dividendPeriod
    function dividendPeriod() public view returns (uint256) {
        return stor_g;
    }
    
    /// @custom:selector    0x13e4b51f
    /// @custom:name        putHash
    function putHash() public view returns (bool) {
        if (stor_u == 0) {
            if (block.number > (stor_u + 0x0a)) {
                if (!block.number < 0x0100) {
                    if (!stor_u < (block.number - 0x0100)) {
                        if (0x0a) {
                            if (0x4000) {
                                if (0x4000) {
                                }
                            }
                        }
                        if (0x0a) {
                            if (0x0a) {
                                if (0x4000) {
                                    if (0x4000) {
                                    }
                                }
                            }
                        }
                    }
                    if (!stor_u < 0) {
                        if (0x0a) {
                        }
                        if (0x0a) {
                        }
                    }
                }
                return 0;
            }
            if (!stor_u == 0) {
            }
        }
    }
    
    /// @custom:selector    0x413e90e7
    /// @custom:name        putHashes
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function putHashes(uint256 arg0) public view {
        if (!0 < arg0) {
            if (stor_u == 0) {
                if (block.number > (stor_u + 0x0a)) {
                    if (!block.number < 0x0100) {
                        if (!stor_u < (block.number - 0x0100)) {
                            if (0x0a) {
                                if (0x4000) {
                                    if (0x4000) {
                                    }
                                }
                            }
                            if (0x0a) {
                                if (0x0a) {
                                    if (0x4000) {
                                        if (0x4000) {
                                        }
                                    }
                                }
                            }
                        }
                        if (!stor_u < 0) {
                            if (0x0a) {
                            }
                            if (0x0a) {
                            }
                        }
                    }
                    if (0) {
                        if (!0x01 < arg0) {
                        }
                    }
                }
                if (!stor_u == 0) {
                }
            }
        }
    }
    
    /// @custom:selector    0x31c2b6e6
    /// @custom:name        animator
    function animator() public view returns (address) {
        address var_a = stor_i;
        return var_a;
    }
    
    /// @custom:selector    0x501895ae
    /// @custom:name        hashes
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function hashes(uint256 arg0) public view returns (uint256) {
        if (arg0 < stor_p) {
            var_a = 0x13;
            return stor_map_ak[var_a];
        }
    }
    
    /// @custom:selector    0x814b3fe0
    /// @custom:name        dividends
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function dividends(uint256 arg0) public view returns (uint256) {
        if (arg0 < stor_o) {
            var_a = 0x0c;
            return stor_map_ak[var_a];
        }
    }
    
    /// @custom:selector    0x4288d759
    /// @custom:name        betOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function betOf(address arg0) public view returns (uint192) {
        var_a = var_a + 0x60;
        address var_e = arg0;
        if (uint192(var_j) == 0) {
            if (!(uint32(var_k)) > 0x01) {
                if (block.number < (uint32(var_k))) {
                    if (!block.number < (uint32(var_k))) {
                        return 0;
                        if (!block.number < (uint32(var_k + 0x0100))) {
                            if (!stor_q > 0) {
                                if (0x0a) {
                                    if (0x4000) {
                                        if ((((uint32(var_k) - stor_q) / 0x0a) % 0x4000) < stor_p) {
                                            var_e = 0x13;
                                            if (0x4000) {
                                                if ((((uint32(var_k) - stor_q) / 0x0a) / 0x4000) == (stor_map_al[var_e] / 0x01000000000000000000000000000000000000000000000000000000000000)) {
                                                    if (!0x01000000 == 0x01000000) {
                                                        if (uint24(uint0(var_m ^ 0x01000000)) == 0) {
                                                            if (uint24(var_m ^ 0x01000000) == 0) {
                                                                if (uint24(uint0(var_m ^ 0x01000000)) == 0) {
                                                                    if (uint24(var_m ^ 0x01000000) == 0) {
                                                                        if (uint24(uint0(var_m ^ 0x01000000)) == 0) {
                                                                            if (uint24(var_m ^ 0x01000000) == 0) {
                                                                                if (!0 == 0x06) {
                                                                                    return (uint192(var_j)) * 0x6acfc0;
                                                                                    if (!0 == 0x05) {
                                                                                        return (uint192(var_j)) * 0x4e20;
                                                                                        if (!0 == 0x04) {
                                                                                            return (uint192(var_j)) * 0x01f4;
                                                                                            if (!0 == 0x03) {
                                                                                                return (uint192(var_j)) * 0x19;
                                                                                                if (!0 == 0x02) {
                                                                                                    return (uint192(var_j)) * 0x03;
                                                                                                    return 0;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                if (!0x01 == 0x06) {
                                                                                }
                                                                            }
                                                                            if (uint24(var_m ^ 0x01000000) == 0) {
                                                                            }
                                                                        }
                                                                        if (uint24(uint0(var_m ^ 0x01000000)) == 0) {
                                                                        }
                                                                    }
                                                                    if (uint24(var_m ^ 0x01000000) == 0) {
                                                                    }
                                                                }
                                                                if (uint24(uint0(var_m ^ 0x01000000)) == 0) {
                                                                }
                                                            }
                                                            if (uint24(var_m ^ 0x01000000) == 0) {
                                                            }
                                                        }
                                                        return uint192(var_j);
                                                    }
                                                    if (0x0a) {
                                                        if (!(uint32(uint24(stor_map_am[var_e] / (0x02 ** (0x18 * ((var_k - stor_q) % 0x0a)))))) == 0x01000000) {
                                                            return uint192(var_j);
                                                            if (uint24(uint0(var_m ^ (stor_map_an[var_e] / (0x02 ** (0x18 * ((uint32(var_k) - stor_q) % 0x0a)))))) == 0) {
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                return 0;
                            }
                            if (uint24(uint0(var_m ^ (blockhash(uint32(var_k))))) == 0) {
                            }
                        }
                    }
                    if (block.number < (uint32(var_k) + 0x028000)) {
                    }
                }
                if (!(uint32(var_k)) > 0x01) {
                    if (block.number < (uint32(var_k) + 0x028000)) {
                    }
                    if (uint32(var_k) > 0x01) {
                        if (!block.number < (uint32(var_k + 0x0100))) {
                        }
                        return 0;
                    }
                }
            }
            if (uint192(var_j) == 0) {
            }
        }
    }
    
    /// @custom:selector    0x3e43b652
    /// @custom:name        betValueOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function betValueOf(address arg0) public view returns (uint192) {
        address var_a = arg0;
        uint192 var_c = stor_map_a[var_a];
        return var_c;
    }
    
    /// @custom:selector    0x7227c7ce
    /// @custom:name        hashNext
    function hashNext() public view returns (uint256) {
        return stor_m;
    }
    
    /// @custom:selector    0xde88a342
    /// @custom:name        payDividends
    function payDividends() public {
        require(stor_b == 0);
        var_a = msg.sender;
        if (stor_map_h[var_a] == 0) {
            if (!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == 0) {
                require(stor_map_h[var_a] == 0);
                var_a = msg.sender;
                require(!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == 0);
                require(!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) == stor_g);
                require(stor_j);
                var_a = 0x0c;
                require(!(uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000)) < stor_g);
            }
        }
        require(0xffffffff);
        stor_f = stor_f + 0;
        var_a = msg.sender;
        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + 0)) | (uint48(stor_map_a[var_a]));
        var_a = msg.sender;
        stor_map_a[var_a] = (uint16(stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
        uint16 var_d = stor_map_a[var_a] / 0x010000000000000000000000000000000000000000000000000000;
        emit LogDividend(address(msg.sender), 0, var_d);
        var_a = msg.sender;
        require(!(uint208(stor_map_a[var_a])) > 0);
        var_a = msg.sender;
        require(uint32(stor_map_a[var_a] / 0x0100000000000000000000000000000000000000000000000000000000) > block.number);
        var_a = msg.sender;
        stor_map_a[var_a] = 0 | (uint48(stor_map_a[var_a]));
        stor_f = stor_f - (uint208(stor_map_a[var_a]));
        require(0x02);
        require((address(this).balance / 0x02) < (uint208(stor_map_a[var_a])));
        stor_f = stor_f + (uint208(stor_map_a[var_a]) - (address(this).balance / 0x02));
        var_a = msg.sender;
        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + ((stor_map_a[var_a]) - (address(address(address(this))).balance / 0x02)))) | (uint48(stor_map_a[var_a]));
        var_a = msg.sender;
        stor_map_a[var_a] = (uint32(block.number + 0x02a300) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint224(stor_map_a[var_a]));
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!uint208(stor_map_a[var_a])) * 0x08fc, value: uint208(stor_map_a[var_a]) }(abi.encode());
        if (!(uint208(stor_map_a[var_a])) > 0x038d7ea4c68000) {
            if (!stor_b > 0x01) {
                if (block.number < (stor_b + 0x014000)) {
                    stor_b = 0;
                    if (!stor_q > 0) {
                        if (0x028000) {
                            if (!((block.number - stor_q) / 0x028000) > (stor_o - 0x02)) {
                                stor_o = stor_o + 0x01;
                                stor_map_r[var_a] = 0;
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                    if (!stor_b == 0) {
                                        if (!stor_b == 0) {
                                            stor_g = 0x01 + stor_g;
                                        }
                                        if (!stor_g < (stor_o - 0x01)) {
                                            stor_g = 0x01 + stor_g;
                                        }
                                    }
                                    if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        if (!stor_g < (stor_o - 0x01)) {
                                        }
                                        if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                        }
                                    }
                                }
                                if (!((block.number - stor_q) / 0x028000) > stor_g) {
                                }
                            }
                        }
                    }
                }
                if (!stor_b > 0x01) {
                }
            }
        }
        if (!(uint208(stor_map_a[var_a])) > 0) {
            var_a = msg.sender;
            stor_map_a[var_a] = 0 | (uint48(stor_map_a[var_a]));
            stor_f = stor_f - (uint208(stor_map_a[var_a]));
            if (0x02) {
            }
        }
        var_a = msg.sender;
        if (!(uint208(stor_map_a[var_a])) > 0) {
        }
        var_a = msg.sender;
        stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
        var_a = msg.sender;
        if (!(uint208(stor_map_a[var_a])) > 0) {
        }
        if (!stor_map_h[var_a] == 0) {
        }
    }
    
    /// @custom:selector    0xdf12b94e
    /// @custom:name        investBalance
    function investBalance() public view returns (uint256) {
        return stor_d;
    }
    
    /// @custom:selector    0x03f9c793
    /// @custom:name        invest
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function invest(address arg0) public payable {
        require(!stor_b > 0x01);
        require(!block.number < (stor_b + 0x014000));
        require(block.number < (stor_b + 0x014000));
        require(!msg.value > (stor_c - stor_d));
        stor_d = stor_c;
        stor_b = 0;
        require(!(stor_c - stor_d) > msg.value);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!msg.value - (stor_c - stor_d)) * 0x08fc, value: msg.value - (stor_c - stor_d) }(abi.encode());
        if (address(arg0) == 0) {
            if (!(address(arg0)) == (address(stor_e))) {
                if (0x64) {
                    stor_f = stor_f + ((((stor_c - stor_d) * 0x05) / 0x64) * 0x02);
                    if (0x64) {
                        address var_a = stor_e;
                        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + (((stor_c - stor_d) * 0x05) / 0x64))) | (uint48(stor_map_a[var_a]));
                        if (0x64) {
                            var_a = arg0;
                            stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + (((stor_c - stor_d) * 0x05) / 0x64))) | (uint48(stor_map_a[var_a]));
                            var_a = msg.sender;
                            stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                            if (0x038d7ea4c68000) {
                                if (0x016345785d8a0000) {
                                    if (0x016345785d8a0000) {
                                        var_a = msg.sender;
                                        stor_map_h[var_a] = stor_map_h[var_a] + ((stor_c - stor_d) / 0x038d7ea4c68000);
                                        var_a = stor_e;
                                        stor_map_h[var_a] = stor_map_h[var_a] + (((stor_c - stor_d) * 0x10) / 0x016345785d8a0000);
                                        var_a = stor_i;
                                        stor_map_h[var_a] = stor_map_h[var_a] + (((stor_c - stor_d) * 0x0a) / 0x016345785d8a0000);
                                        stor_j = stor_j + (((stor_c - stor_d) / 0x038d7ea4c68000) + (((stor_c - stor_d) * 0x10) / 0x016345785d8a0000) + (((stor_c - stor_d) * 0x0a) / 0x016345785d8a0000));
                                        var_c = (stor_c - stor_d) / 0x038d7ea4c68000;
                                        emit Transfer(0, address(msg.sender), var_c);
                                        var_c = stor_c - stor_d;
                                        emit LogInvestment(address(msg.sender), address(arg0), var_c);
                                    }
                                }
                            }
                        }
                    }
                }
                if (0x0a) {
                    stor_f = stor_f + ((var_c) / 0x0a);
                    if (0x0a) {
                        var_a = stor_e;
                        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + ((var_c) / 0x0a))) | (uint48(stor_map_a[var_a]));
                        var_a = msg.sender;
                        stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                        if (0x038d7ea4c68000) {
                        }
                    }
                }
            }
            if (!(address(arg0)) == 0) {
            }
        }
        stor_d = stor_d + msg.value;
        if (address(arg0) == 0) {
            if (!(address(arg0)) == (var_a)) {
                if (0x64) {
                    stor_f = stor_f + (((msg.value * 0x05) / 0x64) * 0x02);
                    if (0x64) {
                        var_a = stor_e;
                        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + ((msg.value * 0x05) / 0x64))) | (uint48(stor_map_a[var_a]));
                        if (0x64) {
                            var_a = arg0;
                            stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + ((msg.value * 0x05) / 0x64))) | (uint48(stor_map_a[var_a]));
                            var_a = msg.sender;
                            stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                            if (0x038d7ea4c68000) {
                                if (0x016345785d8a0000) {
                                    if (0x016345785d8a0000) {
                                        var_a = msg.sender;
                                        stor_map_h[var_a] = stor_map_h[var_a] + (msg.value / 0x038d7ea4c68000);
                                        var_a = stor_e;
                                        stor_map_h[var_a] = stor_map_h[var_a] + ((msg.value * 0x10) / 0x016345785d8a0000);
                                        var_a = stor_i;
                                        stor_map_h[var_a] = stor_map_h[var_a] + ((msg.value * 0x0a) / 0x016345785d8a0000);
                                        stor_j = stor_j + ((msg.value / 0x038d7ea4c68000) + ((msg.value * 0x10) / 0x016345785d8a0000) + ((msg.value * 0x0a) / 0x016345785d8a0000));
                                    }
                                }
                            }
                        }
                    }
                }
                if (0x0a) {
                    stor_f = stor_f + (msg.value / 0x0a);
                    if (0x0a) {
                        var_a = stor_e;
                        stor_map_a[var_a] = (uint208((stor_map_a[var_a]) + (msg.value / 0x0a))) | (uint48(stor_map_a[var_a]));
                        var_a = msg.sender;
                        stor_map_a[var_a] = (uint16(stor_g) * 0x010000000000000000000000000000000000000000000000000000) | (uint240(stor_map_a[var_a]));
                        if (0x038d7ea4c68000) {
                        }
                    }
                }
            }
            if (!(address(arg0)) == 0) {
            }
        }
        if (stor_d < stor_c) {
            require(stor_d < stor_c);
        }
        if (!stor_b > 0x01) {
            if (stor_d < stor_c) {
            }
            if (stor_b > 0x01) {
            }
        }
    }
}