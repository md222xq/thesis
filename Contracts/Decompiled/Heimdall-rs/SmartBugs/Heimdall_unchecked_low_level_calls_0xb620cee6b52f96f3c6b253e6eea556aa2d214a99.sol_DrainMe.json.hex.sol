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
    bytes32 public stor_e;
    bytes32 public stor_f;
    bytes32 public stor_g;
    bytes32 public stor_m;
    uint256 public stor_j;
    uint256 public stor_l;
    mapping(address => bytes32) public stor_map_c;
    mapping(address => uint256) public stor_map_h;
    mapping(address => uint256) public stor_map_i;
    mapping(bytes32 => bytes32) public stor_map_k;
    mapping(uint256 => bytes32) public stor_map_b;
    
    /// @custom:selector    0xf71d96cb
    /// @custom:name        players
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function players(uint256 arg0) public view returns (address) {
        if (arg0 < stor_a) {
            var_a = 0x04;
            address var_b = stor_map_b[var_a];
            return var_b;
        }
    }
    
    /// @custom:selector    0x066d4701
    /// @custom:name        callFirstTarget
    function callFirstTarget() public payable {
        address var_a = msg.sender;
        require(bytes1(stor_map_c[var_a]));
        require(!msg.value < 0x11c37937e08000);
        (bool success, bytes memory ret0) = address(stor_d).call{ value: msg.value }(abi.encode());
    }
    
    /// @custom:selector    0x1d263b53
    /// @custom:name        callSecondTarget
    function callSecondTarget() public payable {
        address var_a = msg.sender;
        require(bytes1(stor_map_c[var_a]));
        require(!msg.value < 0x11c37937e08000);
        (bool success, bytes memory ret0) = address(stor_e).call{ value: msg.value }(abi.encode());
    }
    
    /// @custom:selector    0xb11cc099
    /// @custom:name        winPrize
    function winPrize() public payable {
        require(address(msg.sender) == (address(stor_f)));
        (bool success, bytes memory ret0) = address(stor_f).call{ value: 0x01 }(abi.encode());
    }
    
    /// @custom:selector    0xbced9cfd
    /// @custom:name        guessSeed
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function guessSeed(uint256 arg0) public view payable returns (uint256) {
        address var_a = msg.sender;
        if (stor_map_c[var_a]) {
            if (0x01 < stor_g) {
                if (0 < stor_g) {
                    var_a = 0x07;
                    require(bytes1(stor_map_c[var_a]));
                    address var_c = arg0 / (stor_map_h[var_a] * (stor_map_i[var_a]));
                    return var_c;
                }
            }
        }
    }
    
    /// @custom:selector    0x95564837
    /// @custom:name        seed
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function seed(uint256 arg0) public view returns (uint256) {
        if (arg0 < stor_g) {
            var_a = 0x07;
            return stor_map_b[var_a];
        }
    }
    
    /// @custom:selector    0x1d7915ad
    /// @custom:name        setSeed
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setSeed(uint256 arg0, uint256 arg1) public payable {
        address var_a = msg.sender;
        if (stor_map_c[var_a]) {
            require(bytes1(stor_map_c[var_a]));
            stor_map_b[var_a] = arg1;
        }
    }
    
    /// @custom:selector    0xf5db9820
    /// @custom:name        firstTarget
    function firstTarget() public view returns (address) {
        address var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0xd1efd30d
    /// @custom:name        secret
    function secret() public view returns (uint256) {
        return stor_j;
    }
    
    /// @custom:selector    0x56075a98
    /// @custom:name        becomePlayer
    function becomePlayer() public payable {
        require(!msg.value < 0x470de4df820000);
        stor_a = stor_a + 0x01;
        var_a = 0x04;
        stor_map_k[var_a] = (address(msg.sender)) | (uint96(stor_map_k[var_a]));
        address var_a = msg.sender;
        stor_map_c[var_a] = (0x01) | (uint248(stor_map_c[var_a]));
    }
    
    /// @custom:selector    0xf6fc8160
    /// @custom:name        addSeed
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function addSeed(uint256 arg0) public payable {
        address var_a = msg.sender;
        if (stor_map_c[var_a]) {
            stor_g = arg0;
            if (!stor_g > arg0) {
                var_a = 0x07;
                if (!(keccak256(var_a) + stor_g) > (keccak256(var_a) + arg0)) {
                    stor_map_b[var_a] = 0;
                    require(bytes1(stor_map_c[var_a]));
                }
            }
        }
    }
    
    /// @custom:selector    0x2a8de0ca
    /// @custom:name        DranMe
    function DranMe() public payable {
        stor_f = (address(msg.sender)) | (uint96(stor_f));
    }
    
    /// @custom:selector    0x2fdfd2ae
    /// @custom:name        checkSecret
    function checkSecret() public view payable returns (bool) {
        address var_a = msg.sender;
        if (stor_map_c[var_a]) {
            require(bytes1(stor_map_c[var_a]));
            require(!msg.value < 0x2386f26fc10000);
            return 0;
            return 0x01;
        }
    }
    
    /// @custom:selector    0x3b4dbf8b
    /// @custom:name        setSecret
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setSecret(uint256 arg0) public payable {
        require(address(msg.sender) == (address(stor_f)));
        stor_j = arg0;
    }
    
    /// @custom:selector    0x47bb89f0
    /// @custom:name        balance
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function balance(uint256 arg0) public view returns (uint256) {
        if (arg0 < stor_l) {
            var_a = 0x08;
            return stor_map_b[var_a];
        }
    }
    
    /// @custom:selector    0xc34f6b0d
    /// @custom:name        getPrize
    function getPrize() public view returns (address) {
        return address(this).balance;
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_f;
        return var_a;
    }
    
    /// @custom:selector    0xbe1c766b
    /// @custom:name        getLength
    function getLength() public view returns (uint256) {
        return stor_g;
    }
    
    /// @custom:selector    0xdfbf53ae
    /// @custom:name        winner
    function winner() public view returns (address) {
        address var_a = stor_m;
        return var_a;
    }
    
    /// @custom:selector    0x59eca3e2
    /// @custom:name        manipulateSecret
    function manipulateSecret() public payable {
        address var_a = msg.sender;
        require(bytes1(stor_map_c[var_a]));
        require(!msg.value < 0x2386f26fc10000);
        require(!(address(msg.sender)) == (address(stor_f)));
        require(0x05);
        require(!((keccak256(var_d)) % 0x05) == 0);
        stor_m = (address(msg.sender)) | (uint96(stor_m));
        require(!0x01);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !0 * 0x08fc, value: 0 }(abi.encode());
        if (!0) {
            (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !0 * 0x08fc, value: 0 }(abi.encode());
        }
        if (address(msg.sender) == (address(stor_f))) {
        }
    }
    
    /// @custom:selector    0x70740ac9
    /// @custom:name        claimPrize
    function claimPrize() public payable {
        require(address(msg.sender) == (address(stor_m)));
        (bool success, bytes memory ret0) = address(stor_m).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
    
    /// @custom:selector    0x9e3b9dc1
    /// @custom:name        secondTarget
    function secondTarget() public view returns (address) {
        address var_a = stor_e;
        return var_a;
    }
    
    /// @custom:selector    0xc2e52206
    /// @custom:name        getPlayerCount
    function getPlayerCount() public view returns (uint256) {
        return stor_a;
    }
}