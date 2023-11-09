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
    mapping(bytes32 => bytes32) public stor_map_c;
    mapping(bytes32 => bytes32) public stor_map_d;
    
    event Pause();
    event Transfer(address arg0, address arg1, uint256 arg2);
    event OwnershipTransferred(address arg0, address arg1);
    event Unpause();
    event Approval(address arg0, address arg1, uint256 arg2);
    
    /// @custom:selector    0x18160ddd
    /// @custom:name        totalSupply
    function totalSupply() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0x8456cb59
    /// @custom:name        pause
    function pause() public {
        require(address(msg.sender) == (address(stor_b)));
        require(!bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        stor_b = (0x010000000000000000000000000000000000000000) | (uint248(stor_b));
        emit Pause();
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:name        transferFrom
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transferFrom(address arg0, address arg1, uint256 arg2) public returns (bool) {
        require(!bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        require(!(address(arg1)) == 0);
        require(!arg2 > 0);
        address var_a = arg0;
        require(!arg2 > stor_map_c[var_a]);
        var_a = msg.sender;
        require(!arg2 > stor_map_c[var_a]);
        var_a = arg0;
        require(!arg2 > stor_map_c[var_a]);
        var_a = arg0;
        stor_map_c[var_a] = stor_map_c[var_a] - arg2;
        var_a = arg1;
        require(!(stor_map_c[var_a] + arg2) < stor_map_c[var_a]);
        var_a = arg1;
        stor_map_c[var_a] = stor_map_c[var_a] + arg2;
        var_a = msg.sender;
        require(!arg2 > stor_map_c[var_a]);
        var_a = msg.sender;
        stor_map_c[var_a] = stor_map_c[var_a] - arg2;
        emit Transfer(address(arg0), address(arg1), arg2);
        return 0x01;
        if (arg2 > 0) {
            var_a = msg.sender;
            require(arg2 > 0);
        }
    }
    
    /// @custom:selector    0x5c975abb
    /// @custom:name        paused
    function paused() public view returns (bool) {
        var_a = !(!bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        return var_a;
    }
    
    /// @custom:selector    0x83f12fec
    /// @custom:name        batchTransfer
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function batchTransfer(address[] memory arg0, uint256 arg1) public returns (bool) {
        address[] memory var_a = var_a + (0x20 + (0x20 * (arg0)));
        require(!bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        require(!var_a.length > 0);
        require(!var_a.length > 0x14);
        require(!arg1 > 0);
        address var_d = msg.sender;
        require(!stor_map_d[var_d] < (var_a.length * arg1));
        var_d = msg.sender;
        require(!(var_a.length * arg1) > stor_map_d[var_d]);
        var_d = msg.sender;
        stor_map_d[var_d] = stor_map_d[var_d] - (var_a.length * arg1);
        var_d = var_f;
        require(!(stor_map_d[var_d] + arg1) < stor_map_d[var_d]);
        var_d = var_f;
        stor_map_d[var_d] = stor_map_d[var_d] + arg1;
        emit Transfer(address(msg.sender), address(var_f), arg1);
        return 0x01;
        if (arg1 > 0) {
            require(arg1 > 0);
        }
        if (var_a.length > 0) {
            require(var_a.length > 0);
        }
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:name        transfer
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfer(address arg0, uint256 arg1) public returns (bool) {
        require(!bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        require(!(address(arg0)) == 0);
        require(!arg1 > 0);
        address var_a = msg.sender;
        require(!arg1 > stor_map_c[var_a]);
        var_a = msg.sender;
        require(!arg1 > stor_map_c[var_a]);
        var_a = msg.sender;
        stor_map_c[var_a] = stor_map_c[var_a] - arg1;
        var_a = arg0;
        require(!(stor_map_c[var_a] + arg1) < stor_map_c[var_a]);
        var_a = arg0;
        stor_map_c[var_a] = stor_map_c[var_a] + arg1;
        emit Transfer(address(msg.sender), address(arg0), arg1);
        return 0x01;
        if (arg1 > 0) {
            require(arg1 > 0);
        }
    }
    
    /// @custom:selector    0xdd62ed3e
    /// @custom:name        allowance
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function allowance(address arg0, address arg1) public view returns (uint256) {
        var_a = arg1;
        return stor_map_c[var_a];
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:name        transferOwnership
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function transferOwnership(address arg0) public {
        require(address(msg.sender) == (address(stor_b)));
        require(!(address(arg0)) == 0);
        emit OwnershipTransferred(address(stor_b), address(arg0));
        stor_b = (address(arg0)) | (uint96(stor_b));
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        balanceOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balanceOf(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_c[var_a];
    }
    
    /// @custom:selector    0x3f4ba83a
    /// @custom:name        unpause
    function unpause() public {
        require(address(msg.sender) == (address(stor_b)));
        require(bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        stor_b = (0 * 0x010000000000000000000000000000000000000000) | (uint248(stor_b));
        emit Unpause();
    }
    
    /// @custom:selector    0x095ea7b3
    /// @custom:name        approve
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approve(address arg0, uint256 arg1) public returns (bool) {
        require(!bytes1(stor_b / 0x010000000000000000000000000000000000000000));
        var_a = arg0;
        stor_map_c[var_a] = arg1;
        emit Approval(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
}