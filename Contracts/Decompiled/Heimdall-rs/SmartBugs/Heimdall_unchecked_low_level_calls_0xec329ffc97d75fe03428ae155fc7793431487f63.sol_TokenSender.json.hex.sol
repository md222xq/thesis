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
    bytes32 public stor_e;
    bytes32 public stor_j;
    (bool success, bytes public stor_k;
    mapping(bytes32 => bytes32) public stor_map_h;
    mapping(bytes32 => bytes32) public stor_map_i;
    mapping(bytes32 => bytes32) public stor_map_l;
    mapping(bytes32 => bytes32) public stor_map_m;
    mapping(uint256 => uint256) public stor_map_c;
    mapping(uint256 => uint256) public stor_map_d;
    mapping(uint256[] => bytes32) public stor_map_f;
    mapping(uint256[] => bytes32) public stor_map_g;
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0x9377d711
    /// @custom:name        transfers
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfers(uint256 arg0) public view returns (bytes memory) {
        if (arg0 < stor_b) {
            var_a = 0x04;
            address var_b = stor_map_c[(0x02 * arg0) + keccak256(var_a)];
            uint256 var_c = stor_map_d[(0x02 * arg0) + keccak256(var_a)];
            return abi.encodePacked(var_b, var_c);
        }
    }
    
    /// @custom:selector    0x3585e500
    /// @custom:name        nTransfers
    function nTransfers() public view returns (uint256) {
        return stor_b;
    }
    
    /// @custom:selector    0x5f2befb9
    /// @custom:name        hasTerminated
    function hasTerminated() public view returns (bool) {
        if (!stor_b == 0) {
            if (!stor_e < stor_b) {
                return 0;
                return 0x01;
            }
            return 0;
        }
    }
    
    /// @custom:selector    0xa6f9dae1
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0) public {
        if (!(address(msg.sender)) == (address(stor_a))) {
            stor_a = (address(arg0)) | (uint96(stor_a));
        }
    }
    
    /// @custom:selector    0x4c8fe526
    /// @custom:name        next
    function next() public view returns (uint256) {
        return stor_e;
    }
    
    /// @custom:selector    0x884b5dc2
    /// @custom:name        fill
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function fill(uint256[] memory arg0) public {
        uint256[] memory var_a = var_a + (0x20 + (0x20 * (arg0)));
        require(!(address(msg.sender)) == (address(stor_a)));
        require(!stor_e > 0);
        stor_b = stor_b + var_a.length;
        if (!stor_b > (stor_b)) {
            var_d = 0x04;
            if (!(keccak256(var_d) + (0x02 * stor_b)) > (keccak256(var_d) + (0x02 * (stor_b)))) {
                uint96 stor_map_f[keccak256(var_d) + (0x02 * (stor_b))] = stor_map_f[keccak256(var_d) + (0x02 * (stor_b))];
                stor_map_g[keccak256(var_d) + (0x02 * (stor_b))] = 0;
                if (!(keccak256(var_d) + (0x02 * stor_b)) > (0x02 + (keccak256(var_d) + (0x02 * (stor_b))))) {
                }
                if (0x010000000000000000000000000000000000000000) {
                    if ((stor_b + 0) < stor_b) {
                        var_d = 0x04;
                        if ((stor_b + 0) < stor_b) {
                        }
                    }
                }
                stor_j = stor_j + 0;
            }
        }
    }
    
    /// @custom:selector    0x211a04db
    /// @custom:name        totalToDistribute
    function totalToDistribute() public view returns (uint256) {
        return stor_j;
    }
    
    /// @custom:selector    0xb61d27f6
    /// @custom:name        execute
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function execute(address arg0, uint256 arg1, bytes memory arg2) public {
        bytes memory var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        if (!(address(msg.sender)) == (address(stor_a))) {
            if (!var_a.length) {
                (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode(~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01) & (var_f)));
                (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode());
            }
        }
    }
    
    /// @custom:selector    0xfc0c546a
    /// @custom:name        token
    function token() public view returns (address) {
        address var_a = stor_k;
        return var_a;
    }
    
    /// @custom:selector    0xc0406226
    /// @custom:name        run
    function run() public {
        require(!(address(msg.sender)) == (address(stor_a)));
        require(!stor_b == 0);
        stor_e = stor_b;
        require(!stor_e == 0);
        require(!stor_e == 0);
        require(!stor_e < stor_b);
        require(!gasleft() > 0x0249f0);
        stor_e = stor_e;
        require(stor_e < stor_b);
        require(stor_e < stor_b);
        var_a = 0x04;
        require(!(stor_map_l[(0x02 * stor_e) + keccak256(var_a)]) > 0);
        require(stor_e < stor_b);
        var_a = 0x04;
        require(address(stor_k).code.length);
        (bool success, bytes memory ret0) = address(stor_k).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        require(var_e.length);
        if (!(0x01 + stor_e) < stor_b) {
        }
        if (!(0x01 + stor_e) < stor_b) {
        }
        if (!stor_e < stor_b) {
            if (stor_e < stor_b) {
            }
            stor_e = stor_e;
        }
        require(address(stor_k).code.length);
        (bool success, bytes memory ret0) = address(stor_k).call{ value: 0 }(abi.encode(0x70a0823100000000000000000000000000000000000000000000000000000000));
        if (!ret0.length < 0x20) {
            require(!ret0.length < 0x20);
        }
    }
}