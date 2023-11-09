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
    address public stor_d;
    address public stor_g;
    address public stor_h;
    bytes32 public stor_c;
    bytes32 public stor_f;
    bytes32 public stor_v;
    uint256 public stor_i;
    bytes32 public stor_aa;
    bytes32 public stor_ad;
    bytes32 public stor_av;
    uint256 public stor_ab;
    uint256 public stor_ac;
    uint256 public stor_au;
    mapping(bytes => bytes) public stor_map_j;
    mapping(bytes => bytes) public stor_map_p;
    mapping(bytes => bytes) public stor_map_q;
    mapping(bytes => bytes) public stor_map_r;
    mapping(bytes => uint16) public stor_map_k;
    mapping(bytes => bytes32) public stor_map_l;
    mapping(bytes => bytes32) public stor_map_m;
    mapping(bytes => bytes32) public stor_map_n;
    mapping(bytes => bytes32) public stor_map_o;
    mapping(bytes => bytes32) public stor_map_s;
    mapping(bytes => bytes32) public stor_map_t;
    mapping(bytes => bytes32) public stor_map_u;
    mapping(uint256 => uint16) public stor_map_w;
    mapping(bytes32 => bytes32) public stor_map_b;
    mapping(bytes32 => bytes32) public stor_map_e;
    mapping(uint256 => bytes32) public stor_map_x;
    mapping(uint256 => bytes32) public stor_map_y;
    mapping(uint256 => bytes32) public stor_map_z;
    mapping(uint256 => uint16) public stor_map_ae;
    mapping(uint256 => uint16) public stor_map_af;
    mapping(uint256 => bytes32) public stor_map_ag;
    mapping(uint256 => bytes32) public stor_map_ah;
    mapping(uint256 => bytes32) public stor_map_ai;
    mapping(uint256 => bytes32) public stor_map_aj;
    mapping(uint256 => bytes32) public stor_map_ak;
    mapping(uint256 => bytes32) public stor_map_al;
    mapping(uint256 => bytes32) public stor_map_am;
    mapping(uint256 => bytes32) public stor_map_ao;
    mapping(uint256 => bytes32) public stor_map_ap;
    mapping(uint256 => bytes32) public stor_map_aq;
    mapping(uint256 => uint256) public stor_map_an;
    mapping(uint256 => uint256) public stor_map_ar;
    mapping(uint256 => uint256) public stor_map_as;
    mapping(uint256 => uint256) public stor_map_at;
    
    event Transfer(address arg0, address arg1, uint256 arg2);
    event Approval(address arg0, address arg1, uint256 arg2);
    
    /// @custom:selector    0xf2b47d52
    /// @custom:name        geneScience
    function geneScience() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x756d77fc
    /// @custom:name        pandaIndexToOwner
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function pandaIndexToOwner(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_b[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x0a0f8168
    /// @custom:name        ceoAddress
    function ceoAddress() public view returns (address) {
        address var_a = stor_c;
        return var_a;
    }
    
    /// @custom:selector    0x16b64898
    /// @custom:name        GEN0_TOTAL_COUNT
    function GEN0_TOTAL_COUNT() public pure returns (uint256) {
        return 0x3f48;
    }
    
    /// @custom:selector    0x21717ebf
    /// @custom:name        siringAuction
    function siringAuction() public view returns (address) {
        address var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0x818438ca
    /// @custom:name        getWizzPandaQuotaOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getWizzPandaQuotaOf(uint256 arg0) public view returns (uint256) {
        uint256 var_a = arg0;
        return stor_map_e[var_a];
    }
    
    /// @custom:selector    0x8456cb59
    /// @custom:name        pause
    function pause() public {
        require(address(msg.sender) == (address(stor_f)));
        require(address(msg.sender) == (address(stor_f)));
        require(address(msg.sender) == (address(stor_f)));
        require(!bytes1(stor_f / 0x010000000000000000000000000000000000000000));
        stor_f = (0x010000000000000000000000000000000000000000) | (uint248(stor_f));
        if (address(msg.sender) == (address(stor_g))) {
        }
        if (address(msg.sender) == (address(stor_c))) {
        }
    }
    
    /// @custom:selector    0xf3817b23
    /// @custom:name        getWizzPandaCountOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getWizzPandaCountOf(uint256 arg0) public view returns (uint256) {
        uint256 var_a = arg0;
        return stor_map_e[var_a];
    }
    
    /// @custom:selector    0xd0774f74
    /// @custom:name        GENSIS_TOTAL_COUNT
    function GENSIS_TOTAL_COUNT() public pure returns (uint256) {
        return 0x64;
    }
    
    /// @custom:selector    0x6352211e
    /// @custom:name        ownerOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function ownerOf(uint256 arg0) public view returns (address) {
        uint256 var_a = arg0;
        require(!(address(stor_map_e[var_a])) == 0);
        address var_c = stor_map_e[var_a];
        return var_c;
    }
    
    /// @custom:selector    0xe6cbe351
    /// @custom:name        saleAuction
    function saleAuction() public view returns (address) {
        address var_a = stor_h;
        return var_a;
    }
    
    /// @custom:selector    0x74ea167f
    /// @custom:name        wizzPandaCount
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function wizzPandaCount(uint256 arg0) public view returns (uint256) {
        uint256 var_b = arg0;
        return stor_map_b[var_b];
    }
    
    /// @custom:selector    0x18160ddd
    /// @custom:name        totalSupply
    function totalSupply() public view returns (uint256) {
        var_a = stor_i - 0x01;
        return var_a;
    }
    
    /// @custom:selector    0x2ba73c15
    /// @custom:name        setCOO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCOO(address arg0) public {
        require(address(msg.sender) == (address(stor_c)));
        require(!(address(arg0)) == 0);
        stor_f = (address(arg0)) | (uint96(stor_f));
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
    
    /// @custom:selector    0x46116e6f
    /// @custom:name        sireAllowedToAddress
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function sireAllowedToAddress(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_b[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x8462151c
    /// @custom:name        tokensOfOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function tokensOfOwner(address arg0) public view returns (bytes memory) {
        address var_a = arg0;
        if (!stor_map_e[var_a] == 0) {
            address var_d = var_d + (0x20 + (0x20 * stor_map_e[var_a]));
            if (!stor_map_e[var_a]) {
                if (0x01 > (stor_i - 0x01)) {
                    if (!0 < (0x20 * var_d.length)) {
                        if (!0x20 < (0x20 * var_d.length)) {
                        }
                        return abi.encodePacked((0x20 + var_d) - var_d, var_d.length);
                    }
                    var_a = 0x01;
                    if (!(address(stor_map_e[var_a])) == (address(arg0))) {
                        if (0x02 > (stor_i - 0x01)) {
                        }
                        if (0x02 > (stor_i - 0x01)) {
                        }
                    }
                }
                if (0x01 > (stor_i - 0x01)) {
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
    
    /// @custom:selector    0xf3746947
    /// @custom:name        Unresolved_f3746947
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg3 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg4 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_f3746947(bytes memory arg0, bytes memory arg3, bytes memory arg4) public {
        var_a = var_a + 0x40;
        require(!bytes1(stor_f / 0x010000000000000000000000000000000000000000));
        require(address(msg.sender) == (address(stor_f)));
        require(address(msg.sender) == (address(stor_f)));
        require(address(msg.sender) == (address(stor_f)));
        require(arg0 < stor_i);
        var_c = 0x07;
        require(!(uint64(stor_map_j[(0x03 * arg0) + keccak256(var_c)])) == 0);
        var_a = var_a + 0x0100;
        var_a = var_a + 0x40;
        require(!0x02);
        require(uint32(var_l) == 0);
        require(!(uint64(var_m)) > (uint64(block.number)));
        require(uint32(stor_map_j[(0x03 * arg0) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000) < stor_i);
        var_c = 0x07;
        require(!(uint16(stor_map_l[(0x03 * (uint32(uint32(stor_map_j[(0x03 * arg0) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000)))) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000000000000000)) > (uint16(stor_map_j[(0x03 * arg0) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000000000000000)));
        var_a = var_a + 0x40;
        require(0 < 0x02);
        require(!0x02);
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(!0x02);
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        if (!ret0.length < 0x20) {
            if (0x02) {
                if (0x01 < 0x02) {
                    if ((((var_a.length + var_a.length) / 0x02) + arg3) < (uint16((stor_map_l[(0x03 * (uint32(uint32(stor_map_j[(0x03 * arg0) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000)))) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000000000000000) + 0x01) * arg4)) {
                        if (!(uint16(stor_map_l[(0x03 * (uint32(uint32(stor_map_j[(0x03 * arg0) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000)))) + keccak256(var_c)] / 0x01000000000000000000000000000000000000000000000000000000000000)) == 0) {
                        }
                        if (0x01 < 0x02) {
                            require(!ret0.length < 0x20);
                        }
                    }
                }
            }
        }
        require(((0x04 + var_a) + 0x40) > (0x20 + (0x04 + var_a)));
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        if (((0x04 + var_a) + 0x40) > (0x20 + (0x20 + (0x04 + var_a)))) {
            if (((0x04 + var_a) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_a))))) {
            }
            if (address(stor_a).code.length) {
            }
        }
        require(((0x04 + var_a) + 0x40) > (0x20 + (0x04 + var_a)));
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        if (((0x04 + var_a) + 0x40) > (0x20 + (0x20 + (0x04 + var_a)))) {
            if (((0x04 + var_a) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_a))))) {
            }
            if (address(stor_a).code.length) {
            }
        }
        var_a = var_a + 0x40;
        require(0 < 0x02);
        require(!0x02);
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
        require(((0x04 + var_a) + 0x40) > (0x20 + (0x04 + var_a)));
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xdc1279d400000000000000000000000000000000000000000000000000000000));
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
        if (address(msg.sender) == (address(stor_g))) {
        }
        if (address(msg.sender) == (address(stor_c))) {
        }
    }
    
    /// @custom:selector    0xffa40a4c
    /// @custom:name        pregnantPandas
    function pregnantPandas() public view returns (uint256) {
        return stor_v;
    }
    
    /// @custom:selector    0x4e61efc5
    /// @custom:name        getWizzTypeOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getWizzTypeOf(uint256 arg0) public returns (uint256) {
        var_a = var_a + 0x0120;
        var_a = var_a + 0x40;
        require(arg0 < stor_i);
        var_k = 0x07;
        var_a = var_a + 0x0100;
        var_a = var_a + 0x40;
        require(!0x02);
        require(!0 < 0x40);
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0x7c59f82800000000000000000000000000000000000000000000000000000000));
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
    
    /// @custom:selector    0xa9059cbb
    /// @custom:name        transfer
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfer(address arg0, uint256 arg1) public {
        require(!bytes1(stor_f / 0x010000000000000000000000000000000000000000));
        require(!(address(arg0)) == 0);
        require(!(address(arg0)) == (address(this)));
        if (!(address(arg0)) == (address(stor_h))) {
            require(!(address(arg0)) == (address(stor_h)));
            require(!(address(arg0)) == (address(stor_d)));
            address var_a = arg0;
            stor_map_e[var_a] = 0x01 + stor_map_e[var_a];
            var_a = arg1;
            stor_map_e[var_a] = (address(arg0)) | (uint96(stor_map_e[var_a]));
            require(address(stor_map_e[var_a]) == (address(msg.sender)));
            emit Transfer(address(msg.sender), address(arg0), arg1);
            var_a = msg.sender;
            stor_map_e[var_a] = stor_map_e[var_a] - 0x01;
            var_a = arg1;
            uint96 stor_map_e[var_a] = stor_map_e[var_a];
            var_a = arg1;
            stor_map_e[var_a] = stor_map_e[var_a];
        }
    }
    
    /// @custom:selector    0xb047fb50
    /// @custom:name        cooAddress
    function cooAddress() public view returns (address) {
        address var_a = stor_f;
        return var_a;
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
    
    /// @custom:selector    0xb0c35c05
    /// @custom:name        autoBirthFee
    function autoBirthFee() public view returns (uint256) {
        return stor_aa;
    }
    
    /// @custom:selector    0xc2124452
    /// @custom:name        pandaIndexToApproved
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function pandaIndexToApproved(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_b[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x7a7d4937
    /// @custom:name        secondsPerBlock
    function secondsPerBlock() public view returns (uint256) {
        return stor_ab;
    }
    
    /// @custom:selector    0x0519ce79
    /// @custom:name        cfoAddress
    function cfoAddress() public view returns (address) {
        address var_a = stor_g;
        return var_a;
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        balanceOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balanceOf(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_e[var_a];
    }
    
    /// @custom:selector    0x4b85fd55
    /// @custom:name        setAutoBirthFee
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setAutoBirthFee(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_f)));
        stor_aa = arg0;
    }
    
    /// @custom:selector    0x5663896e
    /// @custom:name        setSecondsPerBlock
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setSecondsPerBlock(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_f)));
        require(address(msg.sender) == (address(stor_f)));
        require(address(msg.sender) == (address(stor_f)));
        require(0 < 0x09);
        require(arg0 < (uint32(stor_ac)));
        stor_ab = arg0;
        if (address(msg.sender) == (address(stor_g))) {
        }
        if (address(msg.sender) == (address(stor_c))) {
        }
    }
    
    /// @custom:selector    0x5c975abb
    /// @custom:name        paused
    function paused() public view returns (bool) {
        var_a = !(!bytes1(stor_f / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
    
    /// @custom:selector    0x88524780
    /// @custom:name        saleAuctionERC20
    function saleAuctionERC20() public view returns (address) {
        address var_a = stor_ad;
        return var_a;
    }
    
    /// @custom:selector    0xf7d8c883
    /// @custom:name        breedWithAuto
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function breedWithAuto(uint256 arg0, uint256 arg1) public view payable {
        require(!bytes1(stor_f / 0x010000000000000000000000000000000000000000));
        require(!msg.value < stor_aa);
        uint256 var_a = arg0;
        require(address(stor_map_e[var_a]) == (address(msg.sender)));
        var_a = arg1;
        require(address(stor_map_e[var_a]) == (address(stor_map_e[var_a])));
        var_a = arg1;
        require(address(stor_map_e[var_a]) == (address(stor_map_e[var_a])));
        require(arg0 < stor_i);
        var_a = 0x07;
        var_c = var_c + 0x0100;
        var_c = var_c + 0x40;
        require(!0x02);
        require(!(uint32(var_l)) == 0);
        require(uint32(var_l) == 0);
        if (arg1 < stor_i) {
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
        if (address(stor_map_e[var_a]) == (address(stor_map_e[var_a]))) {
        }
    }
    
    /// @custom:selector    0x46d22c70
    /// @custom:name        canBreedWith
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function canBreedWith(uint256 arg0, uint256 arg1) public returns (bool) {
        require(arg0 > 0);
        require(arg1 > 0);
        require(arg0 < stor_i);
        require(arg1 < stor_i);
        var_a = 0x07;
        require(!arg0 == arg1);
        require(uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == arg1);
        require(!(uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == arg1);
        require(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == arg0);
        require(!(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == arg0);
        require(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == 0);
        require(!(uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == 0);
        require(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000) == (uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)));
        require(!(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == (uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)));
        require(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000) == (uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)));
        require(!(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == (uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)));
        require(!0x02);
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xe6898a7d00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(!0x02);
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xe6898a7d00000000000000000000000000000000000000000000000000000000));
        if (!ret0.length < 0x20) {
            if ((var_c.length + var_c.length) == 0x01) {
                if (!0x01) {
                    return 0x01;
                    var_a = arg1;
                    if (address(stor_map_e[var_a]) == (address(stor_map_e[var_a]))) {
                        var_a = arg1;
                        uint256 var_b = !(!(address(stor_map_e[var_a])) == (address(stor_map_e[var_a])));
                        return var_b;
                        var_b = !(!(address(stor_map_e[var_a])) == (address(stor_map_e[var_a])));
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
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0));
        if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x04 + var_c)))) {
            if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_c))))) {
            }
            if (address(stor_a).code.length) {
            }
        }
        require(((0x04 + var_c) + 0x40) > (0x20 + (0x04 + var_c)));
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0));
        if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x04 + var_c)))) {
            if (((0x04 + var_c) + 0x40) > (0x20 + (0x20 + (0x20 + (0x04 + var_c))))) {
            }
            if (address(stor_a).code.length) {
            }
        }
        if (!0) {
        }
        if (!(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x010000000000000000000000000000000000000000)) == (uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000))) {
        }
        if (!0) {
        }
        if (!(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == (uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000))) {
        }
        if (!0x01) {
        }
        if (!(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == 0) {
        }
        if (!0) {
        }
        if (!(uint32(stor_map_an[(0x03 * arg1) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == arg0) {
        }
        if (!0) {
        }
        if (!(uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x0100000000000000000000000000000000)) == arg1) {
        }
        if (!0) {
        }
    }
    
    /// @custom:selector    0x095ea7b3
    /// @custom:name        approve
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approve(address arg0, uint256 arg1) public {
        require(!bytes1(stor_f / 0x010000000000000000000000000000000000000000));
        uint256 var_a = arg1;
        require(address(stor_map_e[var_a]) == (address(msg.sender)));
        var_a = arg1;
        stor_map_e[var_a] = (address(arg0)) | (uint96(stor_map_e[var_a]));
        emit Approval(address(msg.sender), address(arg0), arg1);
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:name        transferFrom
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transferFrom(address arg0, address arg1, uint256 arg2) public {
        require(!bytes1(stor_f / 0x010000000000000000000000000000000000000000));
        require(!(address(arg1)) == 0);
        require(!(address(arg1)) == (address(this)));
        uint256 var_a = arg2;
        require(address(stor_map_e[var_a]) == (address(msg.sender)));
        var_a = arg2;
        require(address(stor_map_e[var_a]) == (address(arg0)));
        address var_a = arg1;
        stor_map_e[var_a] = 0x01 + stor_map_e[var_a];
        var_a = arg2;
        stor_map_e[var_a] = (address(arg1)) | (uint96(stor_map_e[var_a]));
        if (address(arg0) == 0) {
            var_a = arg0;
            stor_map_e[var_a] = stor_map_e[var_a] - 0x01;
            var_a = arg2;
            uint96 stor_map_e[var_a] = stor_map_e[var_a];
            var_a = arg2;
            stor_map_e[var_a] = stor_map_e[var_a];
            emit Transfer(address(arg0), address(arg1), arg2);
        }
    }
    
    /// @custom:selector    0x3f4ba83a
    /// @custom:name        unpause
    function unpause() public {
        require(address(msg.sender) == (address(stor_c)));
        require(bytes1(stor_f / 0x010000000000000000000000000000000000000000));
        stor_f = (0 * 0x010000000000000000000000000000000000000000) | (uint248(stor_f));
    }
    
    /// @custom:selector    0xb380beac
    /// @custom:name        setTotalWizzPandaOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "bytes32", "bytes4", "int", "int256", "int32", "string", "uint", "uint256", "uint32"]
    function setTotalWizzPandaOf(uint256 arg0, uint256 arg1) public {
        require(address(msg.sender) == (address(stor_f)));
        require(address(msg.sender) == (address(stor_f)));
        require(address(msg.sender) == (address(stor_f)));
        uint256 var_a = arg0;
        require(stor_map_e[var_a] == 0);
        require(arg1 == (uint32(arg1)));
        stor_map_e[var_a] = arg1;
        if (address(msg.sender) == (address(stor_g))) {
        }
        if (address(msg.sender) == (address(stor_c))) {
        }
    }
    
    /// @custom:selector    0xd3e6f49f
    /// @custom:name        isReadyToBreed
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function isReadyToBreed(uint256 arg0) public view returns (bool) {
        if (arg0 > 0) {
            if (arg0 < stor_i) {
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
    
    /// @custom:selector    0x27d7874c
    /// @custom:name        setCEO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCEO(address arg0) public {
        require(address(msg.sender) == (address(stor_c)));
        require(!(address(arg0)) == 0);
        stor_c = (address(arg0)) | (uint96(stor_c));
    }
    
    /// @custom:selector    0x9d6fac6f
    /// @custom:name        cooldowns
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function cooldowns(uint256 arg0) public view returns (uint32) {
        if (arg0 < 0x09) {
            uint32 var_a = stor_au / (0x0100 ** (0x04 * (arg0 % 0x08)));
            return var_a;
        }
    }
    
    /// @custom:selector    0xf1ca9410
    /// @custom:name        gen0CreatedCount
    function gen0CreatedCount() public view returns (uint256) {
        return stor_av;
    }
    
    /// @custom:selector    0x7420d16c
    /// @custom:name        wizzPandaQuota
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function wizzPandaQuota(uint256 arg0) public view returns (uint256) {
        uint256 var_b = arg0;
        return stor_map_b[var_b];
    }
    
    /// @custom:selector    0x4e0a3379
    /// @custom:name        setCFO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCFO(address arg0) public {
        require(address(msg.sender) == (address(stor_c)));
        require(!(address(arg0)) == 0);
        stor_g = (address(arg0)) | (uint96(stor_g));
    }
    
    /// @custom:selector    0x1940a936
    /// @custom:name        isPregnant
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function isPregnant(uint256 arg0) public view returns (bool) {
        if (arg0 > 0) {
            require(arg0 > 0);
            var_a = 0x07;
            uint256 var_b = !(uint32(stor_map_am[(0x03 * arg0) + keccak256(var_a)] / 0x01000000000000000000000000000000000000000000000000) == 0);
            return var_b;
        }
    }
    
    /// @custom:selector    0x4dfff04f
    /// @custom:name        approveSiring
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approveSiring(address arg0, uint256 arg1) public {
        require(!bytes1(stor_f / 0x010000000000000000000000000000000000000000));
        uint256 var_a = arg1;
        require(address(stor_map_e[var_a]) == (address(msg.sender)));
        var_a = arg1;
        stor_map_e[var_a] = (address(arg0)) | (uint96(stor_map_e[var_a]));
    }
    
    /// @custom:selector    0x24e7a38a
    /// @custom:name        setGeneScienceAddress
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setGeneScienceAddress(address arg0) public {
        require(address(msg.sender) == (address(stor_c)));
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x54c15b8200000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(var_b.length);
        stor_a = (address(arg0)) | (uint96(stor_a));
    }
}