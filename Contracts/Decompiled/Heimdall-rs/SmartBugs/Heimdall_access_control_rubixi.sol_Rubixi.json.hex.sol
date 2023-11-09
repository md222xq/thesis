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
    bytes32 public stor_h;
    bytes32 public stor_i;
    uint256 public stor_b;
    uint256 public stor_f;
    uint256 public stor_g;
    mapping(bytes32 => bytes32) public stor_map_j;
    mapping(uint256 => uint256) public stor_map_d;
    mapping(uint256 => uint256) public stor_map_e;
    
    /// @custom:selector    0x253459e3
    /// @custom:name        feesSeperateFromBalanceApproximately
    function feesSeperateFromBalanceApproximately() public view returns (uint256) {
        if (0x0de0b6b3a7640000) {
            var_a = stor_a / 0x0de0b6b3a7640000;
            return var_a;
        }
    }
    
    /// @custom:selector    0xa6f9dae1
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0) public {
        if (!(address(msg.sender)) == (address(stor_b))) {
            stor_b = (address(arg0)) | (uint96(stor_b));
        }
    }
    
    /// @custom:selector    0xb4022950
    /// @custom:name        collectFeesInEther
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function collectFeesInEther(uint256 arg0) public {
        require(!(address(msg.sender)) == (address(stor_b)));
        require(!(arg0 * 0x0de0b6b3a7640000) > stor_a);
        require(!(address(msg.sender)) == (address(stor_b)));
        require(!stor_a == 0);
        (bool success, bytes memory ret0) = address(stor_b).call{ gas: !stor_a * 0x08fc, value: stor_a }(abi.encode());
        stor_a = 0;
        require(!stor_a == 0);
        (bool success, bytes memory ret0) = address(stor_b).call{ gas: (!arg0 * 0x0de0b6b3a7640000) * 0x08fc, value: arg0 * 0x0de0b6b3a7640000 }(abi.encode());
        stor_a = stor_a - (arg0 * 0x0de0b6b3a7640000);
        if (!stor_a == 0) {
        }
        if (!stor_a == 0) {
        }
    }
    
    /// @custom:selector    0x9dbc4f9b
    /// @custom:name        participantDetails
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function participantDetails(uint256 arg0) public view returns (bytes memory) {
        if (arg0 > stor_c) {
            return abi.encodePacked(0, 0);
            if (arg0 < stor_c) {
                if (arg0 < stor_c) {
                    var_c = 0x06;
                    if (0x0de0b6b3a7640000) {
                        address var_a = stor_map_d[(0x02 * arg0) + keccak256(var_c)];
                        uint256 var_b = (stor_map_e[(0x02 * arg0) + keccak256(var_c)]) / 0x0de0b6b3a7640000;
                        return abi.encodePacked(var_a, var_b);
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x8a5fb3ca
    /// @custom:name        currentFeePercentage
    function currentFeePercentage() public view returns (bytes memory) {
        var_a = var_a + 0xc0;
        if (!var_a.length) {
            return abi.encodePacked(stor_f, (0x20 + (0x20 + var_a)) - var_a, var_a.length);
            return abi.encodePacked(stor_f, (0x20 + (0x20 + var_a)) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_h));
        }
    }
    
    /// @custom:selector    0x67f809e9
    /// @custom:name        DynamicPyramid
    function DynamicPyramid() public {
        stor_b = (address(msg.sender)) | (uint96(stor_b));
    }
    
    /// @custom:selector    0x6fbaaa1e
    /// @custom:name        currentMultiplier
    function currentMultiplier() public view returns (bytes memory) {
        var_a = var_a + 0x0140;
        if (!var_a.length) {
            return abi.encodePacked(stor_g, (0x20 + (0x20 + var_a)) - var_a, var_a.length);
            return abi.encodePacked(stor_g, (0x20 + (0x20 + var_a)) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_h));
        }
    }
    
    /// @custom:selector    0xced92670
    /// @custom:name        changeMultiplier
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function changeMultiplier(uint256 arg0) public {
        require(!(address(msg.sender)) == (address(stor_b)));
        require(arg0 > 0x012c);
        require(!arg0 > 0x012c);
        stor_g = arg0;
        require(!arg0 < 0x78);
        stor_g = arg0;
    }
    
    /// @custom:selector    0xfae14192
    /// @custom:name        changeFeePercentage
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function changeFeePercentage(uint256 arg0) public {
        require(!(address(msg.sender)) == (address(stor_b)));
        require(!arg0 > 0x0a);
        stor_f = arg0;
    }
    
    /// @custom:selector    0x09dfdc71
    /// @custom:name        currentPyramidBalanceApproximately
    function currentPyramidBalanceApproximately() public view returns (bytes memory) {
        if (0x0de0b6b3a7640000) {
            var_a = var_a + 0x0100;
            var_d = stor_h / 0x0de0b6b3a7640000;
            if (!var_a.length) {
                return abi.encodePacked(var_d, (0x20 + (0x20 + var_a)) - var_a, var_a.length);
                return abi.encodePacked(var_d, (0x20 + (0x20 + var_a)) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_h));
            }
        }
    }
    
    /// @custom:selector    0x57d4021b
    /// @custom:name        nextPayoutWhenPyramidBalanceTotalsApproximately
    function nextPayoutWhenPyramidBalanceTotalsApproximately() public view returns (uint256) {
        if (stor_i < stor_c) {
            var_a = 0x06;
            if (0x0de0b6b3a7640000) {
                var_b = (stor_map_j[(0x02 * stor_i) + keccak256(var_a)]) / 0x0de0b6b3a7640000;
                return var_b;
            }
        }
    }
    
    /// @custom:selector    0xd11f13df
    /// @custom:name        numberOfParticipantsWaitingForPayout
    function numberOfParticipantsWaitingForPayout() public view returns (uint256) {
        var_a = stor_c - stor_i;
        return var_a;
    }
    
    /// @custom:selector    0x686f2c90
    /// @custom:name        collectAllFees
    function collectAllFees() public {
        require(!(address(msg.sender)) == (address(stor_b)));
        require(!stor_a == 0);
        (bool success, bytes memory ret0) = address(stor_b).call{ gas: !stor_a * 0x08fc, value: stor_a }(abi.encode());
        stor_a = 0;
    }
    
    /// @custom:selector    0x4229616d
    /// @custom:name        collectPercentOfFees
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function collectPercentOfFees(uint256 arg0) public {
        require(!(address(msg.sender)) == (address(stor_b)));
        require(stor_a == 0);
        require(!arg0 > 0x64);
        if (0x64) {
            (bool success, bytes memory ret0) = address(stor_b).call{ gas: (!(stor_a / 0x64) * arg0) * 0x08fc, value: (stor_a / 0x64) * arg0 }(abi.encode());
            stor_a = stor_a - ((stor_a / 0x64) * arg0);
        }
        if (!stor_a == 0) {
            require(!stor_a == 0);
        }
    }
    
    /// @custom:selector    0xa26dbf26
    /// @custom:name        totalParticipants
    function totalParticipants() public view returns (uint256) {
        return stor_c;
    }
}