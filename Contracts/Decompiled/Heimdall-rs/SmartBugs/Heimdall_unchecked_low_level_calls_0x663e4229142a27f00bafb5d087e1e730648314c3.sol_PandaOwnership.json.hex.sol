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
    
    address public stor_c;
    address public stor_e;
    bytes32 public stor_a;
    bytes32 public stor_d;
    bytes32 public stor_g;
    bytes32 public stor_i;
    bytes32 public stor_j;
    bytes32 public stor_l;
    bytes32 public stor_q;
    bytes32 public stor_r;
    uint256 public stor_h;
    uint256 public stor_p;
    mapping(uint256 => uint16) public stor_map_k;
    mapping(bytes32 => bytes32) public stor_map_b;
    mapping(bytes32 => bytes32) public stor_map_f;
    mapping(uint256 => bytes32) public stor_map_m;
    mapping(uint256 => bytes32) public stor_map_n;
    mapping(uint256 => bytes32) public stor_map_o;
    
    event Approval(address arg0, address arg1, uint256 arg2);
    event Transfer(address arg0, address arg1, uint256 arg2);
    
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
    
    /// @custom:selector    0x095ea7b3
    /// @custom:name        approve
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approve(address arg0, uint256 arg1) public {
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        uint256 var_a = arg1;
        require(address(stor_map_b[var_a]) == (address(msg.sender)));
        var_a = arg1;
        stor_map_b[var_a] = (address(arg0)) | (uint96(stor_map_b[var_a]));
        emit Approval(address(msg.sender), address(arg0), arg1);
    }
    
    /// @custom:selector    0xe6cbe351
    /// @custom:name        saleAuction
    function saleAuction() public view returns (address) {
        address var_a = stor_c;
        return var_a;
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
    
    /// @custom:selector    0x2ba73c15
    /// @custom:name        setCOO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCOO(address arg0) public {
        require(address(msg.sender) == (address(stor_d)));
        require(!(address(arg0)) == 0);
        stor_a = (address(arg0)) | (uint96(stor_a));
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:name        transferFrom
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transferFrom(address arg0, address arg1, uint256 arg2) public {
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        require(!(address(arg1)) == 0);
        require(!(address(arg1)) == (address(this)));
        uint256 var_a = arg2;
        require(address(stor_map_b[var_a]) == (address(msg.sender)));
        var_a = arg2;
        require(address(stor_map_b[var_a]) == (address(arg0)));
        address var_a = arg1;
        stor_map_b[var_a] = 0x01 + stor_map_b[var_a];
        var_a = arg2;
        stor_map_b[var_a] = (address(arg1)) | (uint96(stor_map_b[var_a]));
        if (address(arg0) == 0) {
            var_a = arg0;
            stor_map_b[var_a] = stor_map_b[var_a] - 0x01;
            var_a = arg2;
            uint96 stor_map_b[var_a] = stor_map_b[var_a];
            var_a = arg2;
            stor_map_b[var_a] = stor_map_b[var_a];
            emit Transfer(address(arg0), address(arg1), arg2);
        }
    }
    
    /// @custom:selector    0x16b64898
    /// @custom:name        GEN0_TOTAL_COUNT
    function GEN0_TOTAL_COUNT() public pure returns (uint256) {
        return 0x3f48;
    }
    
    /// @custom:selector    0x21717ebf
    /// @custom:name        siringAuction
    function siringAuction() public view returns (address) {
        address var_a = stor_e;
        return var_a;
    }
    
    /// @custom:selector    0x756d77fc
    /// @custom:name        pandaIndexToOwner
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function pandaIndexToOwner(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_f[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        balanceOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balanceOf(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_b[var_a];
    }
    
    /// @custom:selector    0x18160ddd
    /// @custom:name        totalSupply
    function totalSupply() public view returns (uint256) {
        var_a = stor_g - 0x01;
        return var_a;
    }
    
    /// @custom:selector    0x6352211e
    /// @custom:name        ownerOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function ownerOf(uint256 arg0) public view returns (address) {
        uint256 var_a = arg0;
        require(!(address(stor_map_b[var_a])) == 0);
        address var_c = stor_map_b[var_a];
        return var_c;
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
    
    /// @custom:selector    0x27d7874c
    /// @custom:name        setCEO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCEO(address arg0) public {
        require(address(msg.sender) == (address(stor_d)));
        require(!(address(arg0)) == 0);
        stor_d = (address(arg0)) | (uint96(stor_d));
    }
    
    /// @custom:selector    0x5663896e
    /// @custom:name        setSecondsPerBlock
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setSecondsPerBlock(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(address(msg.sender) == (address(stor_a)));
        require(address(msg.sender) == (address(stor_a)));
        require(0 < 0x09);
        require(arg0 < (uint32(stor_h)));
        stor_i = arg0;
        if (address(msg.sender) == (address(stor_j))) {
        }
        if (address(msg.sender) == (address(stor_d))) {
        }
    }
    
    /// @custom:selector    0x0519ce79
    /// @custom:name        cfoAddress
    function cfoAddress() public view returns (address) {
        address var_a = stor_j;
        return var_a;
    }
    
    /// @custom:selector    0x3f4ba83a
    /// @custom:name        unpause
    function unpause() public {
        require(address(msg.sender) == (address(stor_d)));
        require(bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        stor_a = (0 * 0x010000000000000000000000000000000000000000) | (uint248(stor_a));
    }
    
    /// @custom:selector    0x5c975abb
    /// @custom:name        paused
    function paused() public view returns (bool) {
        var_a = !(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
    
    /// @custom:selector    0x4e61efc5
    /// @custom:name        getWizzTypeOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getWizzTypeOf(uint256 arg0) public returns (uint256) {
        var_a = var_a + 0x0120;
        var_a = var_a + 0x40;
        require(arg0 < stor_g);
        var_k = 0x07;
        var_a = var_a + 0x0100;
        var_a = var_a + 0x40;
        require(!0x02);
        require(!0 < 0x40);
        require(address(stor_l).code.length);
        (bool success, bytes memory ret0) = address(stor_l).call{ value: 0 }(abi.encode(0x7c59f82800000000000000000000000000000000000000000000000000000000));
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
    
    /// @custom:selector    0x4e0a3379
    /// @custom:name        setCFO
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setCFO(address arg0) public {
        require(address(msg.sender) == (address(stor_d)));
        require(!(address(arg0)) == 0);
        stor_j = (address(arg0)) | (uint96(stor_j));
    }
    
    /// @custom:selector    0xf3817b23
    /// @custom:name        getWizzPandaCountOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getWizzPandaCountOf(uint256 arg0) public view returns (uint256) {
        uint256 var_a = arg0;
        return stor_map_b[var_a];
    }
    
    /// @custom:selector    0x9d6fac6f
    /// @custom:name        cooldowns
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function cooldowns(uint256 arg0) public view returns (uint32) {
        if (arg0 < 0x09) {
            uint32 var_a = stor_p / (0x0100 ** (0x04 * (arg0 % 0x08)));
            return var_a;
        }
    }
    
    /// @custom:selector    0x8462151c
    /// @custom:name        tokensOfOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function tokensOfOwner(address arg0) public view returns (bytes memory) {
        address var_a = arg0;
        if (!stor_map_b[var_a] == 0) {
            address var_d = var_d + (0x20 + (0x20 * stor_map_b[var_a]));
            if (!stor_map_b[var_a]) {
                if (0x01 > (stor_g - 0x01)) {
                    if (!0 < (0x20 * var_d.length)) {
                        if (!0x20 < (0x20 * var_d.length)) {
                        }
                        return abi.encodePacked((0x20 + var_d) - var_d, var_d.length);
                    }
                    var_a = 0x01;
                    if (!(address(stor_map_b[var_a])) == (address(arg0))) {
                        if (0x02 > (stor_g - 0x01)) {
                        }
                        if (0x02 > (stor_g - 0x01)) {
                        }
                    }
                }
                if (0x01 > (stor_g - 0x01)) {
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
    
    /// @custom:selector    0xc2124452
    /// @custom:name        pandaIndexToApproved
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function pandaIndexToApproved(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_f[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x7420d16c
    /// @custom:name        wizzPandaQuota
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function wizzPandaQuota(uint256 arg0) public view returns (uint256) {
        uint256 var_b = arg0;
        return stor_map_f[var_b];
    }
    
    /// @custom:selector    0x818438ca
    /// @custom:name        getWizzPandaQuotaOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getWizzPandaQuotaOf(uint256 arg0) public view returns (uint256) {
        uint256 var_a = arg0;
        return stor_map_b[var_a];
    }
    
    /// @custom:selector    0x8456cb59
    /// @custom:name        pause
    function pause() public {
        require(address(msg.sender) == (address(stor_a)));
        require(address(msg.sender) == (address(stor_a)));
        require(address(msg.sender) == (address(stor_a)));
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        stor_a = (0x010000000000000000000000000000000000000000) | (uint248(stor_a));
        if (address(msg.sender) == (address(stor_j))) {
        }
        if (address(msg.sender) == (address(stor_d))) {
        }
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:name        transfer
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfer(address arg0, uint256 arg1) public {
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        require(!(address(arg0)) == 0);
        require(!(address(arg0)) == (address(this)));
        if (!(address(arg0)) == (address(stor_c))) {
            require(!(address(arg0)) == (address(stor_c)));
            require(!(address(arg0)) == (address(stor_e)));
            address var_a = arg0;
            stor_map_b[var_a] = 0x01 + stor_map_b[var_a];
            var_a = arg1;
            stor_map_b[var_a] = (address(arg0)) | (uint96(stor_map_b[var_a]));
            require(address(stor_map_b[var_a]) == (address(msg.sender)));
            emit Transfer(address(msg.sender), address(arg0), arg1);
            var_a = msg.sender;
            stor_map_b[var_a] = stor_map_b[var_a] - 0x01;
            var_a = arg1;
            uint96 stor_map_b[var_a] = stor_map_b[var_a];
            var_a = arg1;
            stor_map_b[var_a] = stor_map_b[var_a];
        }
    }
    
    /// @custom:selector    0xf2b47d52
    /// @custom:name        geneScience
    function geneScience() public view returns (address) {
        address var_a = stor_l;
        return var_a;
    }
    
    /// @custom:selector    0xf1ca9410
    /// @custom:name        gen0CreatedCount
    function gen0CreatedCount() public view returns (uint256) {
        return stor_q;
    }
    
    /// @custom:selector    0x46116e6f
    /// @custom:name        sireAllowedToAddress
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function sireAllowedToAddress(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_f[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x74ea167f
    /// @custom:name        wizzPandaCount
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function wizzPandaCount(uint256 arg0) public view returns (uint256) {
        uint256 var_b = arg0;
        return stor_map_f[var_b];
    }
    
    /// @custom:selector    0xb047fb50
    /// @custom:name        cooAddress
    function cooAddress() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x88524780
    /// @custom:name        saleAuctionERC20
    function saleAuctionERC20() public view returns (address) {
        address var_a = stor_r;
        return var_a;
    }
    
    /// @custom:selector    0x0a0f8168
    /// @custom:name        ceoAddress
    function ceoAddress() public view returns (address) {
        address var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0x7a7d4937
    /// @custom:name        secondsPerBlock
    function secondsPerBlock() public view returns (uint256) {
        return stor_i;
    }
    
    /// @custom:selector    0xb380beac
    /// @custom:name        setTotalWizzPandaOf
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "bytes32", "bytes4", "int", "int256", "int32", "string", "uint", "uint256", "uint32"]
    function setTotalWizzPandaOf(uint256 arg0, uint256 arg1) public {
        require(address(msg.sender) == (address(stor_a)));
        require(address(msg.sender) == (address(stor_a)));
        require(address(msg.sender) == (address(stor_a)));
        uint256 var_a = arg0;
        require(stor_map_b[var_a] == 0);
        require(arg1 == (uint32(arg1)));
        stor_map_b[var_a] = arg1;
        if (address(msg.sender) == (address(stor_j))) {
        }
        if (address(msg.sender) == (address(stor_d))) {
        }
    }
}