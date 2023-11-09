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
    bytes32 public stor_a;
    bytes32 public stor_b;
    bytes32 public stor_c;
    bytes32 public stor_d;
    bytes32 public stor_h;
    bytes32 public stor_k;
    uint256 public stor_j;
    uint256 public stor_m;
    uint256 public stor_n;
    bytes32 public stor_ak;
    bytes32 public stor_al;
    (bool success, bytes public stor_f;
    (bool success, bytes public stor_i;
    mapping(bytes => bytes) public stor_map_aq;
    mapping(bytes => bytes) public stor_map_aw;
    mapping(bytes => bytes) public stor_map_ax;
    mapping(bytes => bytes) public stor_map_ay;
    mapping(bytes => uint16) public stor_map_ar;
    mapping(bytes => bytes32) public stor_map_as;
    mapping(bytes => bytes32) public stor_map_at;
    mapping(bytes => bytes32) public stor_map_au;
    mapping(bytes => bytes32) public stor_map_av;
    mapping(bytes => bytes32) public stor_map_az;
    mapping(bytes => bytes32) public stor_map_ba;
    mapping(bytes => bytes32) public stor_map_bb;
    mapping(uint256 => uint16) public stor_map_p;
    mapping(uint256 => uint16) public stor_map_t;
    mapping(bytes32 => bytes32) public stor_map_g;
    mapping(uint256 => bytes32) public stor_map_l;
    mapping(uint256 => bytes32) public stor_map_o;
    mapping(uint256 => bytes32) public stor_map_q;
    mapping(uint256 => bytes32) public stor_map_r;
    mapping(uint256 => bytes32) public stor_map_s;
    mapping(uint256 => bytes32) public stor_map_w;
    mapping(uint256 => uint16) public stor_map_am;
    mapping(uint256 => uint256) public stor_map_u;
    mapping(uint256 => uint256) public stor_map_v;
    mapping(uint256 => uint256) public stor_map_x;
    mapping(uint256 => uint256) public stor_map_y;
    mapping(uint256 => uint256) public stor_map_z;
    mapping(uint256 => bytes32) public stor_map_ae;
    mapping(uint256 => bytes32) public stor_map_af;
    mapping(uint256 => bytes32) public stor_map_ag;
    mapping(uint256 => bytes32) public stor_map_ah;
    mapping(uint256 => bytes32) public stor_map_ai;
    mapping(uint256 => bytes32) public stor_map_aj;
    mapping(uint256 => bytes32) public stor_map_an;
    mapping(uint256 => bytes32) public stor_map_ao;
    mapping(uint256 => bytes32) public stor_map_ap;
    mapping(uint256 => uint256) public stor_map_aa;
    mapping(uint256 => uint256) public stor_map_ab;
    mapping(uint256 => uint256) public stor_map_ac;
    mapping(uint256 => uint256) public stor_map_ad;
    
    event Transfer(address arg0, address arg1, uint256 arg2);
    event Approval(address arg0, address arg1, uint256 arg2);
    
    /// @custom:selector    0x9b96f3ed
    /// @custom:name        setSaleAuctionERC20Address
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setSaleAuctionERC20Address(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x791fc59d00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(var_b.length);
        stor_b = (address(arg0)) | (uint96(stor_b));
    }
    
    /// @custom:selector    0x4e0a3379
    /// @custom:name        setCFO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCFO(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(!(address(arg0)) == 0);
        stor_c = (address(arg0)) | (uint96(stor_c));
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:name        transfer
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfer(address arg0, uint256 arg1) public {
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        require(!(address(arg0)) == 0);
        require(!(address(arg0)) == (address(this)));
        if (!(address(arg0)) == (address(stor_e))) {
            require(!(address(arg0)) == (address(stor_e)));
            require(!(address(arg0)) == (address(stor_f)));
            address var_a = arg0;
            stor_map_g[var_a] = 0x01 + stor_map_g[var_a];
            var_a = arg1;
            stor_map_g[var_a] = (address(arg0)) | (uint96(stor_map_g[var_a]));
            require(address(stor_map_g[var_a]) == (address(msg.sender)));
            emit Transfer(address(msg.sender), address(arg0), arg1);
            var_a = msg.sender;
            stor_map_g[var_a] = stor_map_g[var_a] - 0x01;
            var_a = arg1;
            uint96 stor_map_g[var_a] = stor_map_g[var_a];
            var_a = arg1;
            stor_map_g[var_a] = stor_map_g[var_a];
        }
    }
    
    /// @custom:selector    0xb0c35c05
    /// @custom:name        autoBirthFee
    function autoBirthFee() public view returns (uint256) {
        return stor_h;
    }
    
    /// @custom:selector    0xb380beac
    /// @custom:name        setTotalWizzPandaOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "bytes32", "bytes4", "int", "int256", "int32", "string", "uint", "uint256", "uint32"]
    function setTotalWizzPandaOf(uint256 arg0, uint256 arg1) public {
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        uint256 var_a = arg0;
        require(stor_map_g[var_a] == 0);
        require(arg1 == (uint32(arg1)));
        stor_map_g[var_a] = arg1;
        if (address(msg.sender) == (address(stor_c))) {
        }
        if (address(msg.sender) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0xf2b47d52
    /// @custom:name        geneScience
    function geneScience() public view returns (address) {
        address var_a = stor_i;
        return var_a;
    }
    
    /// @custom:selector    0x5663896e
    /// @custom:name        setSecondsPerBlock
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setSecondsPerBlock(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(0 < 0x09);
        require(arg0 < (uint32(stor_j)));
        stor_k = arg0;
        if (address(msg.sender) == (address(stor_c))) {
        }
        if (address(msg.sender) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0x7a7d4937
    /// @custom:name        secondsPerBlock
    function secondsPerBlock() public view returns (uint256) {
        return stor_k;
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        balanceOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balanceOf(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_g[var_a];
    }
    
    /// @custom:selector    0x9cca68e2
    /// @custom:name        switchSaleAuctionERC20For
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function switchSaleAuctionERC20For(address arg0, uint256 arg1) public {
        require(address(msg.sender) == (address(stor_d)));
        require(address(stor_b).code.length);
        (bool success, bytes memory ret0) = address(stor_b).call{ value: 0 }(abi.encode(0xc69ec77900000000000000000000000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0x7420d16c
    /// @custom:name        wizzPandaQuota
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function wizzPandaQuota(uint256 arg0) public view returns (uint256) {
        uint256 var_b = arg0;
        return stor_map_l[var_b];
    }
    
    /// @custom:selector    0x9d6fac6f
    /// @custom:name        cooldowns
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function cooldowns(uint256 arg0) public view returns (uint32) {
        if (arg0 < 0x09) {
            uint32 var_a = stor_m / (0x0100 ** (0x04 * (arg0 % 0x08)));
            return var_a;
        }
    }
    
    /// @custom:selector    0x91876e57
    /// @custom:name        withdrawAuctionBalances
    function withdrawAuctionBalances() public {
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(address(stor_e).code.length);
        (bool success, bytes memory ret0) = address(stor_e).call{ value: 0 }(abi.encode(0x5fd8c71000000000000000000000000000000000000000000000000000000000));
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0 }(abi.encode(0x5fd8c71000000000000000000000000000000000000000000000000000000000));
        if (address(msg.sender) == (address(stor_c))) {
        }
        if (address(msg.sender) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0x21717ebf
    /// @custom:name        siringAuction
    function siringAuction() public view returns (address) {
        address var_a = stor_f;
        return var_a;
    }
    
    /// @custom:selector    0x74ea167f
    /// @custom:name        wizzPandaCount
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function wizzPandaCount(uint256 arg0) public view returns (uint256) {
        uint256 var_b = arg0;
        return stor_map_l[var_b];
    }
    
    /// @custom:selector    0x4b85fd55
    /// @custom:name        setAutoBirthFee
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setAutoBirthFee(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_d)));
        stor_h = arg0;
    }
    
    /// @custom:selector    0x3d7d3f5a
    /// @custom:name        createSaleAuction
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg3 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function createSaleAuction(uint256 arg0, uint256 arg1, uint256 arg2, uint256 arg3) public {
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        uint256 var_a = arg0;
        require(address(stor_map_g[var_a]) == (address(msg.sender)));
        require(arg0 > 0);
        require(arg0 < stor_n);
        var_a = 0x07;
        require(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x01000000000000000000000000000000000000000000000000) == 0);
        var_a = arg0;
        stor_map_g[var_a] = (address(stor_e)) | (uint96(stor_map_g[var_a]));
        require(address(stor_e).code.length);
        (bool success, bytes memory ret0) = address(stor_e).call{ value: 0 }(abi.encode(0x27ebe40a00000000000000000000000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0x27d7874c
    /// @custom:name        setCEO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCEO(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(!(address(arg0)) == 0);
        stor_a = (address(arg0)) | (uint96(stor_a));
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
    
    /// @custom:selector    0xd3e6f49f
    /// @custom:name        isReadyToBreed
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function isReadyToBreed(uint256 arg0) public view returns (bool) {
        if (arg0 > 0) {
            if (arg0 < stor_n) {
                var_a = 0x07;
                var_b = var_b + 0x0100;
                var_b = var_b + 0x40;
                if (!0x02) {
                    if (!(uint32(var_k)) == 0) {
                        return !(!(uint32(var_k)) == 0);
                        return !(uint64(var_m) > (uint64(block.number)));
                    }
                    if ((var_b + 0x40) > (0x20 + var_b)) {
                        if (!(uint32(var_k)) == 0) {
                        }
                        if ((var_b + 0x40) > (0x20 + (0x20 + var_b))) {
                            if ((var_b + 0x40) > (0x20 + (0x20 + (0x20 + var_b)))) {
                            }
                            require(arg0 > 0);
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0xe6cbe351
    /// @custom:name        saleAuction
    function saleAuction() public view returns (address) {
        address var_a = stor_e;
        return var_a;
    }
    
    /// @custom:selector    0x14001f4c
    /// @custom:name        setSiringAuctionAddress
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setSiringAuctionAddress(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x76190f8f00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(var_b.length);
        stor_f = (address(arg0)) | (uint96(stor_f));
    }
    
    /// @custom:selector    0x16b64898
    /// @custom:name        GEN0_TOTAL_COUNT
    function GEN0_TOTAL_COUNT() public pure returns (uint256) {
        return 0x3f48;
    }
    
    /// @custom:selector    0x6fbde40d
    /// @custom:name        setSaleAuctionAddress
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setSaleAuctionAddress(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x85b8618800000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(var_b.length);
        stor_e = (address(arg0)) | (uint96(stor_e));
    }
    
    /// @custom:selector    0x4ad8c938
    /// @custom:name        createSiringAuction
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg3 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function createSiringAuction(uint256 arg0, uint256 arg1, uint256 arg2, uint256 arg3) public {
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        uint256 var_a = arg0;
        require(address(stor_map_g[var_a]) == (address(msg.sender)));
        require(arg0 > 0);
        require(arg0 < stor_n);
        var_a = 0x07;
        var_c = var_c + 0x0100;
        var_c = var_c + 0x40;
        require(!0x02);
        require(!(uint32(var_l)) == 0);
        require(uint32(var_l) == 0);
        var_a = arg0;
        stor_map_g[var_a] = (address(stor_f)) | (uint96(stor_map_g[var_a]));
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0 }(abi.encode(0x27ebe40a00000000000000000000000000000000000000000000000000000000));
        if (!(uint64(var_s)) > (uint64(block.number))) {
        }
        if ((var_c + 0x40) > (0x20 + var_c)) {
            if (!(uint32(var_l)) == 0) {
            }
            if ((var_c + 0x40) > (0x20 + (0x20 + var_c))) {
                if ((var_c + 0x40) > (0x20 + (0x20 + (0x20 + var_c)))) {
                }
                if (!(uint32(var_l)) == 0) {
                }
            }
        }
    }
    
    /// @custom:selector    0xed60ade6
    /// @custom:name        bidOnSiringAuction
    /// @param              arg0 ["bytes", "bytes32", "bytes4", "int", "int256", "int32", "string", "uint", "uint256", "uint32"]
    /// @param              arg1 ["bytes", "bytes32", "bytes4", "int", "int256", "int32", "string", "uint", "uint256", "uint32"]
    function bidOnSiringAuction(uint256 arg0, uint256 arg1) public payable {
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        uint256 var_a = arg1;
        require(address(stor_map_g[var_a]) == (address(msg.sender)));
        require(arg1 > 0);
        require(arg1 < stor_n);
        var_a = 0x07;
        var_c = var_c + 0x0100;
        var_c = var_c + 0x40;
        require(!0x02);
        require(!(uint32(var_l)) == 0);
        require(uint32(var_l) == 0);
        require(arg1 < stor_n);
        require(arg0 < stor_n);
        var_a = 0x07;
        require(!arg1 == arg0);
        require(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == arg0);
        require(!(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == arg0);
        require(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == arg1);
        require(!(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == arg1);
        require(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == 0);
        require(!(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == 0);
        require(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == (uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)));
        require(!(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == (uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)));
        require(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000) == (uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)));
        require(!(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == (uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)));
        require(!0x02);
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xe6898a7d00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(!0x02);
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xe6898a7d00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require((var_c.length + var_c.length) == 0x01);
        require(0x01);
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0 }(abi.encode(0xc55d0f5600000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(!msg.value < (var_c.length + stor_h));
        require(address(stor_f).code.length);
        (bool success, bytes memory ret0) = address(stor_f).call{ value: msg.value - stor_h }(abi.encode(0x454a2ab300000000000000000000000000000000000000000000000000000000));
        require(uint32(arg1) < stor_n);
        require(!0x02);
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xe6898a7d00000000000000000000000000000000000000000000000000000000));
        if (!ret0.length < 0x20) {
            if (!var_c.length == 0x01) {
                if (uint32(arg1) < stor_n) {
                    require(!ret0.length < 0x20);
                    var_a = 0x07;
                    stor_map_v[(0x03 * (uint32(arg0))) + keccak256(var_a)] = (uint32(arg1) * 0x01000000000000000000000000000000000000000000000000) | (uint224(stor_map_v[(0x03 * (uint32(arg0))) + keccak256(var_a)]));
                    require(!var_c.length == 0x01);
                    require(uint32(arg1) < stor_n);
                    stor_map_w[(0x03 * (uint32(arg1))) + keccak256(var_a)] = (uint64((uint32(uint32(stor_map_x[uint16(uint16(stor_map_w[(0x03 * (uint32(arg1))) + keccak256(var_a)] / 0x0100000000000000000000000000000000000000000000000000000000)) / 0x08] / (0x0100 ** (0x04 * (uint16(uint16(stor_map_w[(0x03 * (uint32(arg1))) + keccak256(var_a)] / 0x0100000000000000000000000000000000000000000000000000000000)) % 0x08))))) / stor_k) + block.number) * 0x010000000000000000) | (uint192(stor_map_w[(0x03 * (uint32(arg1))) + keccak256(var_a)]));
                    require(uint32(arg0) < stor_n);
                    require(uint16(stor_map_w[(0x03 * (uint32(arg1))) + keccak256(var_a)] / 0x0100000000000000000000000000000000000000000000000000000000) < 0x09);
                    require(stor_k);
                }
                stor_map_w[(0x03 * (uint32(arg1))) + keccak256(var_a)] = (uint16((stor_map_w[(0x03 * (uint32(arg1))) + keccak256(var_a)] / 0x0100000000000000000000000000000000000000000000000000000000) + 0x01) * 0x0100000000000000000000000000000000000000000000000000000000) | (uint240(stor_map_w[(0x03 * (uint32(arg1))) + keccak256(var_a)]));
                require(!(uint16(stor_map_w[(0x03 * (uint32(arg1))) + keccak256(var_a)] / 0x0100000000000000000000000000000000000000000000000000000000)) < 0x08);
            }
        }
        require(!0x02);
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0x7c59f82800000000000000000000000000000000000000000000000000000000));
        if (!ret0.length < 0x20) {
            require(!ret0.length < 0x20);
        }
        require(((0x04 + var_c) + 0x40) > (0x20 + (0x04 + var_c)));
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0x7c59f82800000000000000000000000000000000000000000000000000000000));
        if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x04 + var_c)))) {
            if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_c))))) {
            }
            if (address(stor_i).code.length) {
            }
        }
        if (uint32(arg0) < stor_n) {
        }
        require(((0x04 + var_c) + 0x40) > (0x20 + (0x04 + var_c)));
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0x7c59f82800000000000000000000000000000000000000000000000000000000));
        if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x04 + var_c)))) {
            if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_c))))) {
            }
            if (address(stor_i).code.length) {
            }
        }
        if (0) {
            require(0);
        }
        require(((0x04 + var_c) + 0x40) > (0x20 + (0x04 + var_c)));
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xc55d0f5600000000000000000000000000000000000000000000000000000000));
        if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x04 + var_c)))) {
            if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_c))))) {
            }
            if (address(stor_i).code.length) {
            }
        }
        require(((0x04 + var_c) + 0x40) > (0x20 + (0x04 + var_c)));
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xc55d0f5600000000000000000000000000000000000000000000000000000000));
        if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x04 + var_c)))) {
            if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_c))))) {
            }
            if (address(stor_i).code.length) {
            }
        }
        if (0) {
        }
        if (!(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == (uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000))) {
        }
        if (0) {
        }
        if (!(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == (uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000))) {
        }
        if (0x01) {
        }
        if (!(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == 0) {
        }
        if (0) {
        }
        if (!(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == arg1) {
        }
        if (0) {
        }
        if (!(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == arg0) {
        }
        if (0) {
        }
        if (!(uint64(var_q)) > (uint64(block.number))) {
        }
        if ((var_c + 0x40) > (0x20 + var_c)) {
            if (!(uint32(var_l)) == 0) {
            }
            if ((var_c + 0x40) > (0x20 + (0x20 + var_c))) {
                if ((var_c + 0x40) > (0x20 + (0x20 + (0x20 + var_c)))) {
                }
                if (!(uint32(var_l)) == 0) {
                }
            }
        }
    }
    
    /// @custom:selector    0x18160ddd
    /// @custom:name        totalSupply
    function totalSupply() public view returns (uint256) {
        var_a = stor_n - 0x01;
        return var_a;
    }
    
    /// @custom:selector    0x2ba73c15
    /// @custom:name        setCOO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCOO(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(!(address(arg0)) == 0);
        stor_d = (address(arg0)) | (uint96(stor_d));
    }
    
    /// @custom:selector    0xd0774f74
    /// @custom:name        GENSIS_TOTAL_COUNT
    function GENSIS_TOTAL_COUNT() public pure returns (uint256) {
        return 0x64;
    }
    
    /// @custom:selector    0x24e7a38a
    /// @custom:name        setGeneScienceAddress
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setGeneScienceAddress(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x54c15b8200000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(var_b.length);
        stor_i = (address(arg0)) | (uint96(stor_i));
    }
    
    /// @custom:selector    0x8462151c
    /// @custom:name        tokensOfOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function tokensOfOwner(address arg0) public view returns (bytes memory) {
        address var_a = arg0;
        if (!stor_map_g[var_a] == 0) {
            address var_d = var_d + (0x20 + (0x20 * stor_map_g[var_a]));
            if (!stor_map_g[var_a]) {
                if (0x01 > (stor_n - 0x01)) {
                    if (!0 < (0x20 * var_d.length)) {
                        if (!0x20 < (0x20 * var_d.length)) {
                        }
                        return abi.encodePacked((0x20 + var_d) - var_d, var_d.length);
                    }
                    var_a = 0x01;
                    if (!(address(stor_map_g[var_a])) == (address(arg0))) {
                        if (0x02 > (stor_n - 0x01)) {
                        }
                        if (0x02 > (stor_n - 0x01)) {
                        }
                    }
                }
                if (0x01 > (stor_n - 0x01)) {
                }
            }
            var_d = var_d + 0x20;
            if (!0) {
                if (!0 < (0x20 * var_d.length)) {
                }
                if (!0 < (0x20 * var_d.length)) {
                }
            }
        }
    }
    
    /// @custom:selector    0x6352211e
    /// @custom:name        ownerOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function ownerOf(uint256 arg0) public view returns (address) {
        uint256 var_a = arg0;
        require(!(address(stor_map_g[var_a])) == 0);
        address var_c = stor_map_g[var_a];
        return var_c;
    }
    
    /// @custom:selector    0x1c338644
    /// @custom:name        withdrawERC20Balance
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function withdrawERC20Balance(address arg0, address arg1) public {
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(!(address(stor_b)) == 0);
        require(address(stor_b).code.length);
        (bool success, bytes memory ret0) = address(stor_b).call{ value: 0 }(abi.encode(0x1c33864400000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        if (address(msg.sender) == (address(stor_c))) {
        }
        if (address(msg.sender) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0x01ffc9a7
    /// @custom:name        supportsInterface
    /// @param              arg0 ["bytes", "bytes32", "bytes4", "int", "int256", "int32", "string", "uint", "uint256", "uint32"]
    function supportsInterface(bytes4 arg0) public pure returns (bool) {
        if (uint32(arg0) == (uint32(keccak256(var_b)))) {
            return !(!(uint32(arg0)) == (uint32(keccak256(var_b))));
            return !(!(uint32(arg0)) == (uint32(keccak256(var_b) ^ keccak256(var_b) ^ keccak256(var_b) ^ keccak256(var_b) ^ keccak256(var_b) ^ keccak256(var_b) ^ keccak256(var_b) ^ keccak256(var_b) ^ keccak256(var_b) ^ keccak256(var_b))));
        }
    }
    
    /// @custom:selector    0xb047fb50
    /// @custom:name        cooAddress
    function cooAddress() public view returns (address) {
        address var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0x88524780
    /// @custom:name        saleAuctionERC20
    function saleAuctionERC20() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0x5c975abb
    /// @custom:name        paused
    function paused() public view returns (bool) {
        var_a = !(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
    
    /// @custom:selector    0x756d77fc
    /// @custom:name        pandaIndexToOwner
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function pandaIndexToOwner(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_l[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x0a0f8168
    /// @custom:name        ceoAddress
    function ceoAddress() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x0519ce79
    /// @custom:name        cfoAddress
    function cfoAddress() public view returns (address) {
        address var_a = stor_c;
        return var_a;
    }
    
    /// @custom:selector    0x8456cb59
    /// @custom:name        pause
    function pause() public {
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        stor_d = (0x010000000000000000000000000000000000000000) | (uint248(stor_d));
        if (address(msg.sender) == (address(stor_c))) {
        }
        if (address(msg.sender) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0xc2124452
    /// @custom:name        pandaIndexToApproved
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function pandaIndexToApproved(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_l[var_b];
        return var_c;
    }
    
    /// @custom:selector    0xf3817b23
    /// @custom:name        getWizzPandaCountOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getWizzPandaCountOf(uint256 arg0) public view returns (uint256) {
        uint256 var_a = arg0;
        return stor_map_g[var_a];
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
    
    /// @custom:selector    0x3f4ba83a
    /// @custom:name        unpause
    function unpause() public {
        require(address(msg.sender) == (address(stor_a)));
        require(bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        stor_d = (0 * 0x010000000000000000000000000000000000000000) | (uint248(stor_d));
    }
    
    /// @custom:selector    0x095ea7b3
    /// @custom:name        approve
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approve(address arg0, uint256 arg1) public {
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        uint256 var_a = arg1;
        require(address(stor_map_g[var_a]) == (address(msg.sender)));
        var_a = arg1;
        stor_map_g[var_a] = (address(arg0)) | (uint96(stor_map_g[var_a]));
        emit Approval(address(msg.sender), address(arg0), arg1);
    }
    
    /// @custom:selector    0xffa40a4c
    /// @custom:name        pregnantPandas
    function pregnantPandas() public view returns (uint256) {
        return stor_ak;
    }
    
    /// @custom:selector    0x818438ca
    /// @custom:name        getWizzPandaQuotaOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getWizzPandaQuotaOf(uint256 arg0) public view returns (uint256) {
        uint256 var_a = arg0;
        return stor_map_g[var_a];
    }
    
    /// @custom:selector    0xf1ca9410
    /// @custom:name        gen0CreatedCount
    function gen0CreatedCount() public view returns (uint256) {
        return stor_al;
    }
    
    /// @custom:selector    0x46116e6f
    /// @custom:name        sireAllowedToAddress
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function sireAllowedToAddress(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_l[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x4e61efc5
    /// @custom:name        getWizzTypeOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getWizzTypeOf(uint256 arg0) public returns (uint256) {
        var_a = var_a + 0x0120;
        var_a = var_a + 0x40;
        require(arg0 < stor_n);
        var_k = 0x07;
        var_a = var_a + 0x0100;
        var_a = var_a + 0x40;
        require(!0x02);
        require(!0 < 0x40);
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0x7c59f82800000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        return var_a.length;
        if (!0x20 < 0x40) {
        }
        if ((var_a + 0x40) > (0x20 + var_a)) {
            if (!0 < 0x40) {
            }
            if ((var_a + 0x40) > (0x20 + (0x20 + var_a))) {
                if ((var_a + 0x40) > (0x20 + (0x20 + (0x20 + var_a)))) {
                }
                if (!0 < 0x40) {
                }
            }
        }
    }
    
    /// @custom:selector    0x46d22c70
    /// @custom:name        canBreedWith
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function canBreedWith(uint256 arg0, uint256 arg1) public returns (bool) {
        require(arg0 > 0);
        require(arg1 > 0);
        require(arg0 < stor_n);
        require(arg1 < stor_n);
        var_a = 0x07;
        require(!arg0 == arg1);
        require(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == arg1);
        require(!(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == arg1);
        require(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == arg0);
        require(!(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == arg0);
        require(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == 0);
        require(!(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == 0);
        require(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == (uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)));
        require(!(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == (uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)));
        require(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000) == (uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)));
        require(!(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == (uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)));
        require(!0x02);
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xe6898a7d00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(!0x02);
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xe6898a7d00000000000000000000000000000000000000000000000000000000));
        if (!ret0.length < 0x20) {
            if ((var_c.length + var_c.length) == 0x01) {
                if (!0x01) {
                    return 0x01;
                    var_a = arg1;
                    if (address(stor_map_g[var_a]) == (address(stor_map_g[var_a]))) {
                        var_a = arg1;
                        uint256 var_b = !(!(address(stor_map_g[var_a])) == (address(stor_map_g[var_a])));
                        return var_b;
                        var_b = !(!(address(stor_map_g[var_a])) == (address(stor_map_g[var_a])));
                        return var_b;
                    }
                }
                if (!0) {
                    var_a = arg1;
                    require(!ret0.length < 0x20);
                }
                return 0;
            }
        }
        require(((0x04 + var_c) + 0x40) > (0x20 + (0x04 + var_c)));
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0));
        if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x04 + var_c)))) {
            if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_c))))) {
            }
            if (address(stor_i).code.length) {
            }
        }
        require(((0x04 + var_c) + 0x40) > (0x20 + (0x04 + var_c)));
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0));
        if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x04 + var_c)))) {
            if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_c))))) {
            }
            if (address(stor_i).code.length) {
            }
        }
        if (!0) {
        }
        if (!(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == (uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000))) {
        }
        if (!0) {
        }
        if (!(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == (uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000))) {
        }
        if (!0x01) {
        }
        if (!(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == 0) {
        }
        if (!0) {
        }
        if (!(uint32(stor_map_u[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == arg0) {
        }
        if (!0) {
        }
        if (!(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == arg1) {
        }
        if (!0) {
        }
    }
    
    /// @custom:selector    0x1940a936
    /// @custom:name        isPregnant
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function isPregnant(uint256 arg0) public view returns (bool) {
        if (arg0 > 0) {
            require(arg0 > 0);
            var_a = 0x07;
            uint256 var_b = !(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x01000000000000000000000000000000000000000000000000) == 0);
            return var_b;
        }
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:name        transferFrom
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transferFrom(address arg0, address arg1, uint256 arg2) public {
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        require(!(address(arg1)) == 0);
        require(!(address(arg1)) == (address(this)));
        uint256 var_a = arg2;
        require(address(stor_map_g[var_a]) == (address(msg.sender)));
        var_a = arg2;
        require(address(stor_map_g[var_a]) == (address(arg0)));
        address var_a = arg1;
        stor_map_g[var_a] = 0x01 + stor_map_g[var_a];
        var_a = arg2;
        stor_map_g[var_a] = (address(arg1)) | (uint96(stor_map_g[var_a]));
        if (address(arg0) == 0) {
            var_a = arg0;
            stor_map_g[var_a] = stor_map_g[var_a] - 0x01;
            var_a = arg2;
            uint96 stor_map_g[var_a] = stor_map_g[var_a];
            var_a = arg2;
            stor_map_g[var_a] = stor_map_g[var_a];
            emit Transfer(address(arg0), address(arg1), arg2);
        }
    }
    
    /// @custom:selector    0xf7d8c883
    /// @custom:name        breedWithAuto
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function breedWithAuto(uint256 arg0, uint256 arg1) public view payable {
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        require(!msg.value < stor_h);
        uint256 var_a = arg0;
        require(address(stor_map_g[var_a]) == (address(msg.sender)));
        var_a = arg1;
        require(address(stor_map_g[var_a]) == (address(stor_map_g[var_a])));
        var_a = arg1;
        require(address(stor_map_g[var_a]) == (address(stor_map_g[var_a])));
        require(arg0 < stor_n);
        var_a = 0x07;
        var_c = var_c + 0x0100;
        var_c = var_c + 0x40;
        require(!0x02);
        require(!(uint32(var_l)) == 0);
        require(uint32(var_l) == 0);
        if (arg1 < stor_n) {
            var_a = 0x07;
            var_c = var_c + 0x0100;
            var_c = var_c + 0x40;
            if (!0x02) {
                if (!(uint32(var_l)) == 0) {
                }
                if ((var_c + 0x40) > (0x20 + var_c)) {
                    if (!(uint32(var_l)) == 0) {
                    }
                    if ((var_c + 0x40) > (0x20 + (0x20 + var_c))) {
                        if ((var_c + 0x40) > (0x20 + (0x20 + (0x20 + var_c)))) {
                        }
                        if (!(uint32(var_l)) == 0) {
                        }
                    }
                }
            }
        }
        if (!(uint64(var_x)) > (uint64(block.number))) {
        }
        if ((var_c + 0x40) > (0x20 + var_c)) {
            if (!(uint32(var_l)) == 0) {
            }
            if ((var_c + 0x40) > (0x20 + (0x20 + var_c))) {
                if ((var_c + 0x40) > (0x20 + (0x20 + (0x20 + var_c)))) {
                }
                if (!(uint32(var_l)) == 0) {
                }
            }
        }
        if (address(stor_map_g[var_a]) == (address(stor_map_g[var_a]))) {
        }
    }
    
    /// @custom:selector    0xf3746947
    /// @custom:name        Unresolved_f3746947
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg3 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg4 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_f3746947(bytes memory arg0, bytes memory arg3, bytes memory arg4) public {
        var_a = var_a + 0x40;
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(address(msg.sender) == (address(stor_d)));
        require(arg0 < stor_n);
        var_c = 0x07;
        require(!(uint64(stor_map_aq[(0x03 * arg0) + keccak256(var_c)])) == 0);
        var_a = var_a + 0x0100;
        var_a = var_a + 0x40;
        require(!0x02);
        require(uint32(var_l) == 0);
        require(!(uint64(var_m)) > (uint64(block.number)));
        require(uint32(stor_map_aq[(0x03 * arg0) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000) < stor_n);
        var_c = 0x07;
        require(!(uint16(stor_map_as[(0x03 * (uint32(uint32(stor_map_aq[(0x03 * arg0) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000)))) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000000000000000)) > (uint16(stor_map_aq[(0x03 * arg0) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000000000000000)));
        var_a = var_a + 0x40;
        require(0 < 0x02);
        require(!0x02);
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(!0x02);
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        if (!ret0.length < 0x20) {
            if (0x02) {
                if (0x01 < 0x02) {
                    if ((((var_a.length + var_a.length) / 0x02) + arg3) < (uint16((stor_map_as[(0x03 * (uint32(uint32(stor_map_aq[(0x03 * arg0) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000)))) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000000000000000) + 0x01) * arg4)) {
                        if (!(uint16(stor_map_as[(0x03 * (uint32(uint32(stor_map_aq[(0x03 * arg0) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000)))) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000000000000000)) == 0) {
                        }
                        if (0x01 < 0x02) {
                            require(!ret0.length < 0x20);
                        }
                    }
                }
            }
        }
        require(((0x04 + var_a) + 0x40) > (0x20 + (0x04 + var_a)));
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        if (((0x04 + var_a) + 0x40) > (0x20 + (0x20 + (0x04 + var_a)))) {
            if (((0x04 + var_a) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_a))))) {
            }
            if (address(stor_i).code.length) {
            }
        }
        require(((0x04 + var_a) + 0x40) > (0x20 + (0x04 + var_a)));
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        if (((0x04 + var_a) + 0x40) > (0x20 + (0x20 + (0x04 + var_a)))) {
            if (((0x04 + var_a) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_a))))) {
            }
            if (address(stor_i).code.length) {
            }
        }
        var_a = var_a + 0x40;
        require(0 < 0x02);
        require(!0x02);
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        require(((0x04 + var_a) + 0x40) > (0x20 + (0x04 + var_a)));
        require(address(stor_i).code.length);
        (bool success, bytes memory ret0) = address(stor_i).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        if (((0x04 + var_a) + 0x40) > (0x20 + (0x20 + (0x04 + var_a)))) {
        }
        if (!(uint32(var_l)) == 0) {
            require(!(uint32(var_l)) == 0);
        }
        if ((var_a + 0x40) > (0x20 + var_a)) {
            if (uint32(var_l) == 0) {
            }
            if ((var_a + 0x40) > (0x20 + (0x20 + var_a))) {
                if ((var_a + 0x40) > (0x20 + (0x20 + (0x20 + var_a)))) {
                }
                if (uint32(var_l) == 0) {
                }
            }
        }
        if (address(msg.sender) == (address(stor_c))) {
        }
        if (address(msg.sender) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0x4dfff04f
    /// @custom:name        approveSiring
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approveSiring(address arg0, uint256 arg1) public {
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        uint256 var_a = arg1;
        require(address(stor_map_g[var_a]) == (address(msg.sender)));
        var_a = arg1;
        stor_map_g[var_a] = (address(arg0)) | (uint96(stor_map_g[var_a]));
    }
    
    /// @custom:selector    0x7d16bef7
    /// @custom:name        createSaleAuctionERC20
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg3 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg4 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function createSaleAuctionERC20(uint256 arg0, address arg1, uint256 arg2, uint256 arg3, uint256 arg4) public {
        require(!bytes1(stor_d / 0x010000000000000000000000000000000000000000));
        uint256 var_a = arg0;
        require(address(stor_map_g[var_a]) == (address(msg.sender)));
        require(arg0 > 0);
        require(arg0 < stor_n);
        var_a = 0x07;
        require(uint32(stor_map_o[(0x03 * arg0) + keccak256(var_a)] / 0x01000000000000000000000000000000000000000000000000) == 0);
        var_a = arg0;
        stor_map_g[var_a] = (address(stor_b)) | (uint96(stor_map_g[var_a]));
        require(address(stor_b).code.length);
        (bool success, bytes memory ret0) = address(stor_b).call{ value: 0 }(abi.encode(0xc82531a300000000000000000000000000000000000000000000000000000000));
    }
}