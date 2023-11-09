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
    bytes32 public stor_f;
    bytes32 public stor_h;
    mapping(bytes32 => bytes32) public stor_map_b;
    mapping(bytes32 => bytes32) public stor_map_g;
    
    event Approval(address arg0, address arg1, uint256 arg2);
    event Transfer(address arg0, address arg1, uint256 arg2);
    event OwnershipTransferred(address arg0, address arg1);
    event Unpause();
    event Pause();
    
    /// @custom:selector    0x5c975abb
    /// @custom:name        paused
    function paused() public view returns (bool) {
        var_a = !(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        balanceOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balanceOf(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_b[var_a];
    }
    
    /// @custom:selector    0x095ea7b3
    /// @custom:name        approve
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approve(address arg0, uint256 arg1) public returns (bool) {
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        var_a = arg0;
        stor_map_b[var_a] = arg1;
        emit Approval(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0x313ce567
    /// @custom:name        decimals
    function decimals() public view returns (bool) {
        bytes1 var_a = stor_c;
        return var_a;
    }
    
    /// @custom:selector    0x06fdde03
    /// @custom:name        name
    function name() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_d));
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:name        transfer
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfer(address arg0, uint256 arg1) public returns (bool) {
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        require(!(address(arg0)) == 0);
        require(!arg1 > 0);
        address var_a = msg.sender;
        require(!arg1 > stor_map_b[var_a]);
        var_a = msg.sender;
        require(!arg1 > stor_map_b[var_a]);
        var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] - arg1;
        var_a = arg0;
        require(!(stor_map_b[var_a] + arg1) < stor_map_b[var_a]);
        var_a = arg0;
        stor_map_b[var_a] = stor_map_b[var_a] + arg1;
        emit Transfer(address(msg.sender), address(arg0), arg1);
        return 0x01;
        if (arg1 > 0) {
            require(arg1 > 0);
        }
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:name        transferOwnership
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function transferOwnership(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        require(!(address(arg0)) == 0);
        emit OwnershipTransferred(address(stor_a), address(arg0));
        stor_a = (address(arg0)) | (uint96(stor_a));
    }
    
    /// @custom:selector    0x95d89b41
    /// @custom:name        symbol
    function symbol() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_e));
    }
    
    /// @custom:selector    0x3f4ba83a
    /// @custom:name        unpause
    function unpause() public {
        require(address(msg.sender) == (address(stor_a)));
        require(bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        stor_a = (0 * 0x010000000000000000000000000000000000000000) | (uint248(stor_a));
        emit Unpause();
    }
    
    /// @custom:selector    0x18160ddd
    /// @custom:name        totalSupply
    function totalSupply() public view returns (uint256) {
        return stor_f;
    }
    
    /// @custom:selector    0x83f12fec
    /// @custom:name        batchTransfer
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function batchTransfer(address[] memory arg0, uint256 arg1) public returns (bool) {
        address[] memory var_a = var_a + (0x20 + (0x20 * (arg0)));
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        require(!var_a.length > 0);
        require(!var_a.length > 0x14);
        require(!arg1 > 0);
        address var_d = msg.sender;
        require(!stor_map_g[var_d] < (var_a.length * arg1));
        var_d = msg.sender;
        require(!(var_a.length * arg1) > stor_map_g[var_d]);
        var_d = msg.sender;
        stor_map_g[var_d] = stor_map_g[var_d] - (var_a.length * arg1);
        var_d = var_f;
        require(!(stor_map_g[var_d] + arg1) < stor_map_g[var_d]);
        var_d = var_f;
        stor_map_g[var_d] = stor_map_g[var_d] + arg1;
        emit Transfer(address(msg.sender), address(var_f), arg1);
        return 0x01;
        if (arg1 > 0) {
            require(arg1 > 0);
        }
        if (var_a.length > 0) {
            require(var_a.length > 0);
        }
    }
    
    /// @custom:selector    0xdd62ed3e
    /// @custom:name        allowance
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function allowance(address arg0, address arg1) public view returns (uint256) {
        var_a = arg1;
        return stor_map_b[var_a];
    }
    
    /// @custom:selector    0x54fd4d50
    /// @custom:name        version
    function version() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_h));
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x8456cb59
    /// @custom:name        pause
    function pause() public {
        require(address(msg.sender) == (address(stor_a)));
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        stor_a = (0x010000000000000000000000000000000000000000) | (uint248(stor_a));
        emit Pause();
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:name        transferFrom
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transferFrom(address arg0, address arg1, uint256 arg2) public returns (bool) {
        require(!bytes1(stor_a / 0x010000000000000000000000000000000000000000));
        require(!(address(arg1)) == 0);
        require(!arg2 > 0);
        address var_a = arg0;
        require(!arg2 > stor_map_b[var_a]);
        var_a = msg.sender;
        require(!arg2 > stor_map_b[var_a]);
        var_a = arg0;
        require(!arg2 > stor_map_b[var_a]);
        var_a = arg0;
        stor_map_b[var_a] = stor_map_b[var_a] - arg2;
        var_a = arg1;
        require(!(stor_map_b[var_a] + arg2) < stor_map_b[var_a]);
        var_a = arg1;
        stor_map_b[var_a] = stor_map_b[var_a] + arg2;
        var_a = msg.sender;
        require(!arg2 > stor_map_b[var_a]);
        var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] - arg2;
        emit Transfer(address(arg0), address(arg1), arg2);
        return 0x01;
        if (arg2 > 0) {
            var_a = msg.sender;
            require(arg2 > 0);
        }
    }
}