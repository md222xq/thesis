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
    bytes32 public stor_i;
    bytes32 public stor_k;
    bytes32 public stor_m;
    bytes32 public stor_n;
    bytes32 public stor_t;
    bytes32 public stor_v;
    uint256 public stor_o;
    uint256 public stor_p;
    uint256 public stor_u;
    mapping(bytes32 => uint256) public stor_map_j;
    mapping(bytes32 => uint256) public stor_map_l;
    mapping(uint256 => bytes32) public stor_map_b;
    mapping(uint256 => bytes32) public stor_map_d;
    mapping(uint256 => bytes32) public stor_map_f;
    mapping(uint256 => bytes32) public stor_map_g;
    mapping(uint256 => bytes32) public stor_map_h;
    mapping(uint256 => bytes32) public stor_map_q;
    mapping(uint256 => bytes32) public stor_map_r;
    mapping(uint256 => bytes32) public stor_map_s;
    mapping(uint256 => uint256) public stor_map_c;
    
    event AuctionCancelled(uint256 arg0);
    event Pause();
    event AuctionCreated(uint256 arg0, uint256 arg1, uint256 arg2, uint256 arg3);
    event AuctionSuccessful(uint256 arg0, uint256 arg1, address arg2);
    event Unpause();
    
    /// @custom:selector    0xdd1b7a0f
    /// @custom:name        nonFungibleContract
    function nonFungibleContract() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x78bd7935
    /// @custom:name        getAuction
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getAuction(uint256 arg0) public view returns (bytes memory) {
        uint256 var_a = arg0;
        require(uint64(stor_map_b[var_a] / 0x010000000000000000) > 0);
        address var_c = stor_map_c[var_a];
        uint128 var_d = stor_map_d[var_a];
        uint128 var_e = stor_map_d[var_a] / 0x0100000000000000000000000000000000;
        uint64 var_f = stor_map_b[var_a];
        uint64 var_g = stor_map_b[var_a] / 0x010000000000000000;
        return abi.encodePacked(var_c, var_d, var_e, var_f, var_g);
    }
    
    /// @custom:selector    0x878eb368
    /// @custom:name        cancelAuctionWhenPaused
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function cancelAuctionWhenPaused(uint256 arg0) public {
        require(bytes1(stor_e / 0x010000000000000000000000000000000000000000));
        require(address(msg.sender) == (address(stor_e)));
        uint256 var_a = arg0;
        require(uint64(stor_map_b[var_a] / 0x010000000000000000) > 0);
        var_a = arg0;
        uint96 stor_map_f[var_a] = stor_map_f[var_a];
        uint128 stor_map_g[var_a] = stor_map_g[var_a];
        stor_map_g[var_a] = stor_map_g[var_a];
        uint192 stor_map_h[var_a] = stor_map_h[var_a];
        stor_map_h[var_a] = stor_map_h[var_a];
        stor_map_h[var_a] = stor_map_h[var_a];
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        emit AuctionCancelled(arg0);
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_e;
        return var_a;
    }
    
    /// @custom:selector    0x42577935
    /// @custom:name        createPanda
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function createPanda(uint256 arg0, uint256 arg1) public {
        if (address(msg.sender) == (address(stor_a))) {
            require(address(msg.sender) == (address(stor_a)));
            stor_i = stor_i + 0x01;
            stor_map_j[var_a] = arg0;
            stor_k = stor_k + 0x01;
            stor_map_l[var_a] = arg0;
        }
    }
    
    /// @custom:selector    0x5c975abb
    /// @custom:name        paused
    function paused() public view returns (bool) {
        var_a = !(!bytes1(stor_e / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
    
    /// @custom:selector    0x20caea39
    /// @custom:name        surprisePanda
    function surprisePanda() public payable {
        require(0x19 < 0x20);
        require(!(bytes1(0x0100000000000000000000000000000000000000000000000000000000000000 * keccak256(var_c))) > 0xc800000000000000000000000000000000000000000000000000000000000000);
        require(!stor_i < stor_m);
        stor_m = 0x01 + stor_m;
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000, uint256(blockhash(block.number - 0x01))));
        require(!stor_k < stor_n);
        stor_n = 0x01 + stor_n;
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000, uint256(blockhash(block.number - 0x01))));
    }
    
    /// @custom:selector    0x484eccb4
    /// @custom:name        lastGen0SalePrices
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function lastGen0SalePrices(uint256 arg0) public view returns (uint256) {
        if (arg0 < 0x05) {
            return stor_o;
        }
    }
    
    /// @custom:selector    0x6108ceb6
    /// @custom:name        Unresolved_6108ceb6
    function Unresolved_6108ceb6() public pure returns (uint256) {
        return 0x2386f26fc10000;
    }
    
    /// @custom:selector    0x83b5ff8b
    /// @custom:name        ownerCut
    function ownerCut() public view returns (uint256) {
        return stor_p;
    }
    
    /// @custom:selector    0x8456cb59
    /// @custom:name        pause
    function pause() public returns (bool) {
        require(address(msg.sender) == (address(stor_e)));
        require(!bytes1(stor_e / 0x010000000000000000000000000000000000000000));
        stor_e = (0x010000000000000000000000000000000000000000) | (uint248(stor_e));
        emit Pause();
        return 0x01;
    }
    
    /// @custom:selector    0x96b5a755
    /// @custom:name        cancelAuction
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function cancelAuction(uint256 arg0) public {
        uint256 var_a = arg0;
        require(uint64(stor_map_b[var_a] / 0x010000000000000000) > 0);
        require(address(msg.sender) == (address(stor_map_c[var_a])));
        var_a = arg0;
        uint96 stor_map_f[var_a] = stor_map_f[var_a];
        uint128 stor_map_g[var_a] = stor_map_g[var_a];
        stor_map_g[var_a] = stor_map_g[var_a];
        uint192 stor_map_h[var_a] = stor_map_h[var_a];
        stor_map_h[var_a] = stor_map_h[var_a];
        stor_map_h[var_a] = stor_map_h[var_a];
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        emit AuctionCancelled(arg0);
    }
    
    /// @custom:selector    0xf40e28f2
    /// @custom:name        createGen0Auction
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "bytes16", "bytes32", "int", "int128", "int256", "string", "uint", "uint128", "uint256"]
    /// @param              arg2 ["bytes", "bytes16", "bytes32", "int", "int128", "int256", "string", "uint", "uint128", "uint256"]
    /// @param              arg3 ["bytes", "bytes32", "bytes8", "int", "int256", "int64", "string", "uint", "uint256", "uint64"]
    /// @param              arg4 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function createGen0Auction(uint256 arg0, uint256 arg1, uint256 arg2, uint256 arg3, address arg4) public {
        var_a = var_a + 0xc0;
        require(arg1 == (uint128(arg1)));
        require(arg2 == (uint128(arg2)));
        require(arg3 == (uint64(arg3)));
        require(address(msg.sender) == (address(stor_a)));
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0x23b872dd00000000000000000000000000000000000000000000000000000000));
        var_a = var_a + 0xc0;
        require(!(uint64(var_q)) < 0x3c);
        uint256 var_r = arg0;
        stor_map_q[var_r] = (address(var_t)) | (uint96(stor_map_q[var_r]));
        stor_map_r[var_r] = (uint128(var_u)) | (uint128(stor_map_r[var_r]));
        stor_map_r[var_r] = (uint128(var_v) * 0x0100000000000000000000000000000000) | (uint128(stor_map_r[var_r]));
        stor_map_s[var_r] = (uint64(var_w)) | (uint192(stor_map_s[var_r]));
        stor_map_s[var_r] = (uint64(var_x) * 0x010000000000000000) | (uint192(stor_map_s[var_r]));
        stor_map_s[var_r] = (uint64(var_y) * 0x0100000000000000000000000000000000) | (uint192(stor_map_s[var_r]));
        emit AuctionCreated(arg0, uint128(var_ab), uint128(var_ad), uint64(var_q));
    }
    
    /// @custom:selector    0x27ebe40a
    /// @custom:name        createAuction
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "bytes16", "bytes32", "int", "int128", "int256", "string", "uint", "uint128", "uint256"]
    /// @param              arg2 ["bytes", "bytes16", "bytes32", "int", "int128", "int256", "string", "uint", "uint128", "uint256"]
    /// @param              arg3 ["bytes", "bytes32", "bytes8", "int", "int256", "int64", "string", "uint", "uint256", "uint64"]
    /// @param              arg4 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function createAuction(uint256 arg0, uint256 arg1, uint256 arg2, uint256 arg3, address arg4) public {
        var_a = var_a + 0xc0;
        require(arg1 == (uint128(arg1)));
        require(arg2 == (uint128(arg2)));
        require(arg3 == (uint64(arg3)));
        require(address(msg.sender) == (address(stor_a)));
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0x23b872dd00000000000000000000000000000000000000000000000000000000));
        var_a = var_a + 0xc0;
        require(!(uint64(var_q)) < 0x3c);
        uint256 var_r = arg0;
        stor_map_q[var_r] = (address(var_t)) | (uint96(stor_map_q[var_r]));
        stor_map_r[var_r] = (uint128(var_u)) | (uint128(stor_map_r[var_r]));
        stor_map_r[var_r] = (uint128(var_v) * 0x0100000000000000000000000000000000) | (uint128(stor_map_r[var_r]));
        stor_map_s[var_r] = (uint64(var_w)) | (uint192(stor_map_s[var_r]));
        stor_map_s[var_r] = (uint64(var_x) * 0x010000000000000000) | (uint192(stor_map_s[var_r]));
        stor_map_s[var_r] = (uint64(var_y) * 0x0100000000000000000000000000000000) | (uint192(stor_map_s[var_r]));
        emit AuctionCreated(arg0, uint128(var_ab), uint128(var_ad), uint64(var_q));
    }
    
    /// @custom:selector    0x454a2ab3
    /// @custom:name        bid
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function bid(uint256 arg0) public payable {
        var_a = arg0;
        require(uint64(stor_map_b[var_a] / 0x010000000000000000) > 0);
        require(!block.timestamp > (uint64(stor_map_b[var_a] / 0x010000000000000000)));
        require(0 < (uint64(stor_map_b[var_a])));
        require(uint64(stor_map_b[var_a]));
        require(!msg.value < (uint128(stor_map_d[var_a]) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a])))));
        var_a = arg0;
        uint96 stor_map_f[var_a] = stor_map_f[var_a];
        uint128 stor_map_g[var_a] = stor_map_g[var_a];
        stor_map_g[var_a] = stor_map_g[var_a];
        uint192 stor_map_h[var_a] = stor_map_h[var_a];
        stor_map_h[var_a] = stor_map_h[var_a];
        stor_map_h[var_a] = stor_map_h[var_a];
        if (!(uint128(stor_map_d[var_a]) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a])))) > 0) {
            require(!(uint128(stor_map_d[var_a]) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a])))) > 0);
            (bool success, bytes memory ret0) = address(stor_map_c[var_a]).call{ gas: (!(uint128(stor_map_d[var_a]) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a])))) - ((uint128(stor_map_d[var_a]) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a]))) * stor_p) / 0x2710)) * 0x08fc, value: (uint128(stor_map_d[var_a]) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a])))) - ((uint128(stor_map_d[var_a]) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a]))) * stor_p) / 0x2710) }(abi.encode());
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!msg.value - (uint128(stor_map_d[var_a]) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a]))))) * 0x08fc, value: msg.value - (uint128(stor_map_d[var_a]) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a])))) }(abi.encode());
        uint256 var_d = (uint128(stor_map_d[var_a])) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a])));
        emit AuctionSuccessful(arg0, var_d, address(msg.sender));
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000, var_d, address(msg.sender)));
        if (!(uint64(stor_map_b[var_a] / 0x0100000000000000000000000000000000)) == 0x01) {
            if (0x05) {
                if ((stor_t % 0x05) < 0x05) {
                    stor_u = var_d;
                    stor_t = 0x01 + stor_t;
                }
            }
        }
        if (!msg.value < (uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000))) {
        }
        if ((block.timestamp - (uint64(stor_map_b[var_a] / 0x010000000000000000))) < (uint64(stor_map_b[var_a]))) {
        }
    }
    
    /// @custom:selector    0xeac9d94c
    /// @custom:name        averageGen0SalePrice
    function averageGen0SalePrice() public view returns (uint256) {
        if (!0 < 0x05) {
            if (0x05) {
                return 0;
            }
            if (0 < 0x05) {
                if (!0x01 < 0x05) {
                }
            }
        }
    }
    
    /// @custom:selector    0x3f4ba83a
    /// @custom:name        unpause
    function unpause() public returns (bool) {
        require(address(msg.sender) == (address(stor_e)));
        require(bytes1(stor_e / 0x010000000000000000000000000000000000000000));
        stor_e = (0 * 0x010000000000000000000000000000000000000000) | (uint248(stor_e));
        emit Unpause();
        return 0x01;
    }
    
    /// @custom:selector    0xee0ebe0c
    /// @custom:name        packageCount
    function packageCount() public view returns (bytes memory) {
        var_a = (stor_k + 0x01) - stor_n;
        var_b = (stor_i + 0x01) - stor_m;
        return abi.encodePacked(var_a, var_b);
    }
    
    /// @custom:selector    0x85b86188
    /// @custom:name        isSaleClockAuction
    function isSaleClockAuction() public view returns (bool) {
        var_a = !(!bytes1(stor_v));
        return var_a;
    }
    
    /// @custom:selector    0x5fd8c710
    /// @custom:name        withdrawBalance
    function withdrawBalance() public {
        require(address(msg.sender) == (address(stor_e)));
        require(address(msg.sender) == (address(stor_e)));
        (bool success, bytes memory ret0) = address(stor_a).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
        if (address(msg.sender) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0xc55d0f56
    /// @custom:name        getCurrentPrice
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getCurrentPrice(uint256 arg0) public view returns (uint128) {
        uint256 var_a = arg0;
        if (uint64(stor_map_b[var_a] / 0x010000000000000000) > 0) {
            if (!block.timestamp > (uint64(stor_map_b[var_a] / 0x010000000000000000))) {
                if (0 < (uint64(stor_map_b[var_a]))) {
                    if (uint64(stor_map_b[var_a])) {
                        uint256 var_c = (uint128(stor_map_d[var_a])) + ((uint128(stor_map_d[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_d[var_a])) * 0) / (uint64(stor_map_b[var_a])));
                        return var_c;
                    }
                    uint128 var_c = stor_map_d[var_a] / 0x0100000000000000000000000000000000;
                    return var_c;
                }
                require(uint64(stor_map_b[var_a] / 0x010000000000000000) > 0);
            }
        }
    }
    
    /// @custom:selector    0x8a98a9cc
    /// @custom:name        gen0SaleCount
    function gen0SaleCount() public view returns (uint256) {
        return stor_t;
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:name        transferOwnership
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function transferOwnership(address arg0) public {
        if (address(msg.sender) == (address(stor_e))) {
            require(address(msg.sender) == (address(stor_e)));
            stor_e = (address(arg0)) | (uint96(stor_e));
        }
    }
}