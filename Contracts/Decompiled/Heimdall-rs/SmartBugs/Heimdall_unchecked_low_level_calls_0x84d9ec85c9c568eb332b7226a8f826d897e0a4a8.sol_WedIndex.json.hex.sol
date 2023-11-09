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
    bytes32 public stor_c;
    bytes32 public stor_d;
    bytes32 public stor_e;
    bytes32 public stor_f;
    bytes32 public stor_g;
    bytes32 public stor_h;
    mapping(bytes32 => bytes32) public stor_map_p;
    mapping(uint256 => bytes32) public stor_map_k;
    mapping(uint256 => bytes32) public stor_map_l;
    mapping(uint256 => uint256) public stor_map_i;
    mapping(uint256 => uint256) public stor_map_j;
    mapping(uint256 => uint256) public stor_map_m;
    mapping(uint256 => uint256) public stor_map_n;
    mapping(uint256 => uint256) public stor_map_o;
    
    /// @custom:selector    0xa6f9dae1
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0) public {
        require(address(msg.sender) == (address(stor_a)));
        stor_b = (address(arg0)) | (uint96(stor_b));
    }
    
    /// @custom:selector    0x2168ca06
    /// @custom:name        numberOfIndex
    function numberOfIndex() public view returns (uint256) {
        return stor_c;
    }
    
    /// @custom:selector    0x4f0e3333
    /// @custom:name        wedaddress
    function wedaddress() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_d));
    }
    
    /// @custom:selector    0x59e33e35
    /// @custom:name        indexdate
    function indexdate() public view returns (uint256) {
        return stor_e;
    }
    
    /// @custom:selector    0xb61d27f6
    /// @custom:name        execute
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function execute(address arg0, uint256 arg1, bytes memory arg2) public {
        bytes memory var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        if (address(msg.sender) == (address(stor_a))) {
            require(address(msg.sender) == (address(stor_a)));
            (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode(~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01) & (var_f)));
            (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode());
        }
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0xc7fb9aab
    /// @custom:name        displaymultisig
    function displaymultisig() public view returns (uint256) {
        return stor_f;
    }
    
    /// @custom:selector    0x48fdb8c1
    /// @custom:name        partnernames
    function partnernames() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_g));
    }
    
    /// @custom:selector    0xbb1d7ffa
    /// @custom:name        weddingdate
    function weddingdate() public view returns (uint256) {
        return stor_h;
    }
    
    /// @custom:selector    0xd4ee1d90
    /// @custom:name        newOwner
    function newOwner() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0x79ba5097
    /// @custom:name        acceptOwnership
    function acceptOwnership() public {
        if (!(address(msg.sender)) == (address(stor_b))) {
            stor_a = (address(stor_b)) | (uint96(stor_a));
        }
    }
    
    /// @custom:selector    0xb394c794
    /// @custom:name        indexarray
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function indexarray(uint256 arg0) public view returns (bytes memory) {
        if (arg0 < stor_c) {
            var_a = 0x07;
            uint256 var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_i[(0x05 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_i[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
            if (!(((0x0100 * (!stor_map_i[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_i[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                if (0x1f < (((0x0100 * (!stor_map_i[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_i[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) {
                    uint256 var_a = 0x01 + ((0x05 * arg0) + keccak256(var_a));
                    if ((0x20 + var_b) + (((0x0100 * (!stor_map_i[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_i[(0x05 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + var_b))) {
                        if ((0x20 + var_b) + (((0x0100 * (!stor_map_i[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_i[(0x05 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + (0x20 + var_b)))) {
                        }
                        var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_l[(0x05 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_l[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                        if (!(((0x0100 * (!stor_map_l[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_l[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                            if (0x1f < (((0x0100 * (!stor_map_l[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_l[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) {
                                var_a = 0x02 + ((0x05 * arg0) + keccak256(var_a));
                                if ((0x20 + var_b) + (((0x0100 * (!stor_map_l[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_l[(0x05 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + var_b))) {
                                    if ((0x20 + var_b) + (((0x0100 * (!stor_map_l[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_l[(0x05 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + (0x20 + var_b)))) {
                                    }
                                    var_e = stor_map_m[(0x05 * arg0) + keccak256(var_a)];
                                    uint256 var_g = stor_map_n[(0x05 * arg0) + keccak256(var_a)];
                                    uint256 var_h = stor_map_o[(0x05 * arg0) + keccak256(var_a)];
                                    if (!var_b.length) {
                                        if (!var_b.length) {
                                            return abi.encodePacked(var_e, (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_b))))) - var_b, (0x20 + ((var_b.length + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_b))))))) - (bytes1(var_b.length)))) - var_b, var_g, var_h, var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_l), var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_p));
                                            return abi.encodePacked(var_e, (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_b))))) - var_b, (0x20 + ((var_b.length + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_b))))))) - (bytes1(var_b.length)))) - var_b, var_g, var_h, var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_l), var_b.length);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_l[(0x05 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_l[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                    if (!(((0x0100 * (!stor_map_l[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_l[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                    }
                }
                if (!(((0x0100 * (!stor_map_l[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_l[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                }
            }
        }
    }
    
    /// @custom:selector    0x3d3057a9
    /// @custom:name        writeIndex
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg3 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg4 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function writeIndex(uint256 arg0, string memory arg1, string memory arg2, uint256 arg3, uint256 arg4) public {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        var_a = var_a + 0xa0;
        stor_c = stor_c + 0x01;
        if (0x1f < (var_l)) {
        }
    }
}