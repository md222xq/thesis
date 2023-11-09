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
    bytes32 public stor_h;
    bytes32 public stor_i;
    bytes32 public stor_j;
    mapping(uint256 => bytes32) public stor_map_b;
    mapping(uint256 => bytes32) public stor_map_c;
    mapping(uint256 => bytes32) public stor_map_d;
    mapping(uint256 => bytes32) public stor_map_e;
    mapping(uint256 => bytes32) public stor_map_f;
    mapping(uint256 => bytes32) public stor_map_g;
    mapping(uint256 => bytes32) public stor_map_k;
    mapping(uint256 => bytes32) public stor_map_l;
    mapping(uint256 => bytes32) public stor_map_m;
    
    event AuctionSuccessful(uint256 arg0, uint256 arg1, address arg2);
    event Unpause();
    event AuctionCancelled(uint256 arg0);
    event AuctionCreated(uint256 arg0, uint256 arg1, uint256 arg2, uint256 arg3);
    event Pause();
    
    /// @custom:selector    0xdd1b7a0f
    /// @custom:name        nonFungibleContract
    function nonFungibleContract() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x454a2ab3
    /// @custom:name        bid
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function bid(uint256 arg0) public payable {
        require(address(msg.sender) == (address(stor_a)));
        var_a = arg0;
        require(uint64(stor_map_b[var_a] / 0x010000000000000000) > 0);
        require(!block.timestamp > (uint64(stor_map_b[var_a] / 0x010000000000000000)));
        require(0 < (uint64(stor_map_b[var_a])));
        require(uint64(stor_map_b[var_a]));
        require(!msg.value < (uint128(stor_map_c[var_a]) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a])))));
        var_a = arg0;
        uint96 stor_map_d[var_a] = stor_map_d[var_a];
        uint128 stor_map_e[var_a] = stor_map_e[var_a];
        stor_map_e[var_a] = stor_map_e[var_a];
        uint192 stor_map_f[var_a] = stor_map_f[var_a];
        stor_map_f[var_a] = stor_map_f[var_a];
        stor_map_f[var_a] = stor_map_f[var_a];
        if (!(uint128(stor_map_c[var_a]) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a])))) > 0) {
            require(!(uint128(stor_map_c[var_a]) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a])))) > 0);
            (bool success, bytes memory ret0) = address(stor_map_g[var_a]).call{ gas: (!(uint128(stor_map_c[var_a]) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a])))) - ((uint128(stor_map_c[var_a]) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a]))) * stor_h) / 0x2710)) * 0x08fc, value: (uint128(stor_map_c[var_a]) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a])))) - ((uint128(stor_map_c[var_a]) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a]))) * stor_h) / 0x2710) }(abi.encode());
        }
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!msg.value - (uint128(stor_map_c[var_a]) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a]))))) * 0x08fc, value: msg.value - (uint128(stor_map_c[var_a]) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a])))) }(abi.encode());
        uint256 var_d = (uint128(stor_map_c[var_a])) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a])));
        emit AuctionSuccessful(arg0, var_d, address(msg.sender));
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000, var_d, address(msg.sender)));
        if (!msg.value < (uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000))) {
        }
        if ((block.timestamp - (uint64(stor_map_b[var_a] / 0x010000000000000000))) < (uint64(stor_map_b[var_a]))) {
        }
    }
    
    /// @custom:selector    0x5fd8c710
    /// @custom:name        withdrawBalance
    function withdrawBalance() public {
        require(address(msg.sender) == (address(stor_i)));
        require(address(msg.sender) == (address(stor_i)));
        (bool success, bytes memory ret0) = address(stor_a).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
        if (address(msg.sender) == (address(stor_a))) {
        }
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_i;
        return var_a;
    }
    
    /// @custom:selector    0x78bd7935
    /// @custom:name        getAuction
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getAuction(uint256 arg0) public view returns (bytes memory) {
        uint256 var_a = arg0;
        require(uint64(stor_map_b[var_a] / 0x010000000000000000) > 0);
        address var_c = stor_map_g[var_a];
        uint128 var_d = stor_map_c[var_a];
        uint128 var_e = stor_map_c[var_a] / 0x0100000000000000000000000000000000;
        uint64 var_f = stor_map_b[var_a];
        uint64 var_g = stor_map_b[var_a] / 0x010000000000000000;
        return abi.encodePacked(var_c, var_d, var_e, var_f, var_g);
    }
    
    /// @custom:selector    0x3f4ba83a
    /// @custom:name        unpause
    function unpause() public returns (bool) {
        require(address(msg.sender) == (address(stor_i)));
        require(bytes1(stor_i / 0x010000000000000000000000000000000000000000));
        stor_i = (0 * 0x010000000000000000000000000000000000000000) | (uint248(stor_i));
        emit Unpause();
        return 0x01;
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
                        uint256 var_c = (uint128(stor_map_c[var_a])) + ((uint128(stor_map_c[var_a] / 0x0100000000000000000000000000000000) - (uint128(stor_map_c[var_a])) * 0) / (uint64(stor_map_b[var_a])));
                        return var_c;
                    }
                    uint128 var_c = stor_map_c[var_a] / 0x0100000000000000000000000000000000;
                    return var_c;
                }
                require(uint64(stor_map_b[var_a] / 0x010000000000000000) > 0);
            }
        }
    }
    
    /// @custom:selector    0x83b5ff8b
    /// @custom:name        ownerCut
    function ownerCut() public view returns (uint256) {
        return stor_h;
    }
    
    /// @custom:selector    0x96b5a755
    /// @custom:name        cancelAuction
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function cancelAuction(uint256 arg0) public {
        uint256 var_a = arg0;
        require(uint64(stor_map_b[var_a] / 0x010000000000000000) > 0);
        require(address(msg.sender) == (address(stor_map_g[var_a])));
        var_a = arg0;
        uint96 stor_map_d[var_a] = stor_map_d[var_a];
        uint128 stor_map_e[var_a] = stor_map_e[var_a];
        stor_map_e[var_a] = stor_map_e[var_a];
        uint192 stor_map_f[var_a] = stor_map_f[var_a];
        stor_map_f[var_a] = stor_map_f[var_a];
        stor_map_f[var_a] = stor_map_f[var_a];
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        emit AuctionCancelled(arg0);
    }
    
    /// @custom:selector    0x878eb368
    /// @custom:name        cancelAuctionWhenPaused
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function cancelAuctionWhenPaused(uint256 arg0) public {
        require(bytes1(stor_i / 0x010000000000000000000000000000000000000000));
        require(address(msg.sender) == (address(stor_i)));
        uint256 var_a = arg0;
        require(uint64(stor_map_b[var_a] / 0x010000000000000000) > 0);
        var_a = arg0;
        uint96 stor_map_d[var_a] = stor_map_d[var_a];
        uint128 stor_map_e[var_a] = stor_map_e[var_a];
        stor_map_e[var_a] = stor_map_e[var_a];
        uint192 stor_map_f[var_a] = stor_map_f[var_a];
        stor_map_f[var_a] = stor_map_f[var_a];
        stor_map_f[var_a] = stor_map_f[var_a];
        require(address(stor_a).code.length);
        (bool success, bytes memory ret0) = address(stor_a).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        emit AuctionCancelled(arg0);
    }
    
    /// @custom:selector    0x76190f8f
    /// @custom:name        isSiringClockAuction
    function isSiringClockAuction() public view returns (bool) {
        var_a = !(!bytes1(stor_j));
        return var_a;
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
        stor_map_k[var_r] = (address(var_t)) | (uint96(stor_map_k[var_r]));
        stor_map_l[var_r] = (uint128(var_u)) | (uint128(stor_map_l[var_r]));
        stor_map_l[var_r] = (uint128(var_v) * 0x0100000000000000000000000000000000) | (uint128(stor_map_l[var_r]));
        stor_map_m[var_r] = (uint64(var_w)) | (uint192(stor_map_m[var_r]));
        stor_map_m[var_r] = (uint64(var_x) * 0x010000000000000000) | (uint192(stor_map_m[var_r]));
        stor_map_m[var_r] = (uint64(var_y) * 0x0100000000000000000000000000000000) | (uint192(stor_map_m[var_r]));
        emit AuctionCreated(arg0, uint128(var_ab), uint128(var_ad), uint64(var_q));
    }
    
    /// @custom:selector    0x8456cb59
    /// @custom:name        pause
    function pause() public returns (bool) {
        require(address(msg.sender) == (address(stor_i)));
        require(!bytes1(stor_i / 0x010000000000000000000000000000000000000000));
        stor_i = (0x010000000000000000000000000000000000000000) | (uint248(stor_i));
        emit Pause();
        return 0x01;
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:name        transferOwnership
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function transferOwnership(address arg0) public {
        if (address(msg.sender) == (address(stor_i))) {
            require(address(msg.sender) == (address(stor_i)));
            stor_i = (address(arg0)) | (uint96(stor_i));
        }
    }
    
    /// @custom:selector    0x5c975abb
    /// @custom:name        paused
    function paused() public view returns (bool) {
        var_a = !(!bytes1(stor_i / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
}