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
    bytes32 public stor_d;
    (bool success, bytes public stor_e;
    mapping(bytes32 => bytes32) public stor_map_f;
    mapping(bytes32 => bytes32) public stor_map_g;
    mapping(uint256 => bytes32) public stor_map_b;
    mapping(uint256 => bytes32) public stor_map_c;
    
    /// @custom:selector    0x0a46e3e9
    /// @custom:name        puppets
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function puppets(uint256 arg0) public view returns (address) {
        if (arg0 < stor_a) {
            var_a = 0x01;
            address var_b = stor_map_b[var_a];
            return var_b;
        }
    }
    
    /// @custom:selector    0x6f2641e1
    /// @custom:name        extra
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function extra(uint256 arg0) public view returns (address) {
        uint256 var_b = arg0;
        address var_c = stor_map_c[var_b];
        return var_c;
    }
    
    /// @custom:selector    0x3ccfd60b
    /// @custom:name        withdraw
    function withdraw() public {
        require(address(msg.sender) == (address(stor_d)));
        (bool success, bytes memory ret0) = address(stor_d).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
    
    /// @custom:selector    0x4962b964
    /// @custom:name        getPuppetCount
    function getPuppetCount() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0x2daeb49a
    /// @custom:name        fundPuppets
    function fundPuppets() public payable {
        if (address(msg.sender) == (address(stor_d))) {
            require(address(msg.sender) == (address(stor_d)));
            stor_e = msg.value / 0x04;
            var_a = 0;
            (bool success, bytes memory ret0) = address(stor_map_f[var_a]).call{ gas: 0x0c3500, value: stor_e }(abi.encode());
            var_a = 0x01;
            (bool success, bytes memory ret0) = address(stor_map_f[var_a]).call{ gas: 0x0c3500, value: stor_e }(abi.encode());
            var_a = 0x02;
            (bool success, bytes memory ret0) = address(stor_map_f[var_a]).call{ gas: 0x0c3500, value: stor_e }(abi.encode());
            var_a = 0x03;
            (bool success, bytes memory ret0) = address(stor_map_f[var_a]).call{ gas: 0x0c3500, value: stor_e }(abi.encode());
        }
    }
    
    /// @custom:selector    0x54dfbca8
    /// @custom:name        setExtra
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setExtra(uint256 arg0, address arg1) public {
        require(!(address(arg1)) == 0);
        uint256 var_a = arg0;
        stor_map_f[var_a] = (address(arg1)) | (uint96(stor_map_f[var_a]));
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0x8dd7d6d1
    /// @custom:name        newPuppet
    function newPuppet() public returns (address) {
        require(address(msg.sender) == (address(stor_d)));
        assembly { addr := create(0, var_b, (0x0487 + var_b) - var_b) }
        require(CREATE);
        stor_a = stor_a + 0x01;
        var_c = 0x01;
        stor_map_g[var_c] = (address(CREATE)) | (uint96(stor_map_g[var_c]));
        return address(CREATE);
    }
}