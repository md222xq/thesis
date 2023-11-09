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
    
    address public stor_o;
    bytes32 public stor_a;
    bytes32 public stor_i;
    bytes32 public stor_j;
    bytes32 public stor_m;
    bytes32 public stor_s;
    bytes32 public stor_t;
    bytes32 public stor_z;
    bytes32 public stor_aa;
    mapping(bytes32 => bytes32) public stor_map_k;
    mapping(bytes32 => bytes32) public stor_map_l;
    mapping(bytes32 => bytes32) public stor_map_n;
    mapping(bytes32 => bytes32) public stor_map_p;
    mapping(bytes32 => bytes32) public stor_map_q;
    mapping(bytes32 => bytes32) public stor_map_r;
    mapping(bytes32 => bytes32) public stor_map_y;
    mapping(uint256 => bytes32) public stor_map_d;
    mapping(uint256 => bytes32) public stor_map_e;
    mapping(uint256 => bytes32) public stor_map_f;
    mapping(uint256 => bytes32) public stor_map_v;
    mapping(uint256 => bytes32) public stor_map_w;
    mapping(uint256 => uint256) public stor_map_b;
    mapping(uint256 => uint256) public stor_map_c;
    mapping(uint256 => uint256) public stor_map_g;
    mapping(uint256 => uint256) public stor_map_h;
    mapping(uint256 => uint256) public stor_map_u;
    mapping(uint256 => uint256) public stor_map_x;
    
    /// @custom:selector    0x0d80fefd
    /// @custom:name        messages
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function messages(uint256 arg0) public view {
        if (arg0 < stor_a) {
            var_a = 0x08;
            uint256 var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_b[(0x05 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_b[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
            if (!(((0x0100 * (!stor_map_b[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_b[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                if (0x1f < (((0x0100 * (!stor_map_b[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_b[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) {
                    uint256 var_a = 0x01 + ((0x05 * arg0) + keccak256(var_a));
                    if ((0x20 + var_b) + (((0x0100 * (!stor_map_b[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_b[(0x05 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + var_b))) {
                        if ((0x20 + var_b) + (((0x0100 * (!stor_map_b[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_b[(0x05 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + (0x20 + var_b)))) {
                        }
                        var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_e[(0x05 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_e[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                        if (!(((0x0100 * (!stor_map_e[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_e[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                            if (0x1f < (((0x0100 * (!stor_map_e[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_e[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) {
                                var_a = 0x02 + ((0x05 * arg0) + keccak256(var_a));
                                if ((0x20 + var_b) + (((0x0100 * (!stor_map_e[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_e[(0x05 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + var_b))) {
                                    if ((0x20 + var_b) + (((0x0100 * (!stor_map_e[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_e[(0x05 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + (0x20 + var_b)))) {
                                    }
                                    var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_f[(0x05 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_f[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                                    if (!(((0x0100 * (!stor_map_f[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_f[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                                        if (0x1f < (((0x0100 * (!stor_map_f[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_f[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) {
                                            var_a = 0x03 + ((0x05 * arg0) + keccak256(var_a));
                                            if ((0x20 + var_b) + (((0x0100 * (!stor_map_f[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_f[(0x05 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + var_b))) {
                                                if ((0x20 + var_b) + (((0x0100 * (!stor_map_f[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_f[(0x05 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + (0x20 + var_b)))) {
                                                }
                                                if (!var_b.length) {
                                                    if (!var_b.length) {
                                                        if (!var_b.length) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_f[(0x05 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_f[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                                if (!(((0x0100 * (!stor_map_f[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_f[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                                }
                            }
                            var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_f[(0x05 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_f[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                            if (!(((0x0100 * (!stor_map_f[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_f[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                            }
                        }
                    }
                    var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_e[(0x05 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_e[(0x05 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                    if (!(((0x0100 * (!stor_map_e[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_e[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                    }
                }
                if (!(((0x0100 * (!stor_map_e[(0x05 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_e[(0x05 * arg0) + keccak256(var_a)])) / 0x02) {
                }
            }
        }
    }
    
    /// @custom:selector    0xd2521034
    /// @custom:name        marriageStatus
    function marriageStatus() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_i));
    }
    
    /// @custom:selector    0xb61d27f6
    /// @custom:name        execute
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function execute(address arg0, uint256 arg1, bytes memory arg2) public {
        bytes memory var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        if (address(msg.sender) == (address(stor_j))) {
            require(address(msg.sender) == (address(stor_j)));
            (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode(~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01) & (var_f)));
            (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode());
        }
    }
    
    /// @custom:selector    0xc5590033
    /// @custom:name        setStatus
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setStatus(string memory arg0, string memory arg1) public {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg0)) / 0x20) * 0x20));
        var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        var_c = msg.data[36:36];
        if (address(msg.sender) == (address(stor_j))) {
            if (0x1f < var_a.length) {
                stor_i = 0x01 + (var_a.length + var_a.length);
                if (!var_a.length) {
                    if (!((0x20 + var_a) + var_a.length) > (0x20 + var_a)) {
                        stor_map_k[var_e] = var_c;
                        require(address(msg.sender) == (address(stor_j)));
                    }
                    require(0x1f < var_a.length);
                    stor_map_k[var_e] = 0;
                    require(!var_a.length);
                }
                var_a = var_a + 0x40;
                require(!((0x20 + var_a) + var_a.length) > (0x20 + var_a));
                require(!(keccak256(var_e) + ((0x1f + (((0x0100 * (!bytes1(stor_i))) - 0x01) & (stor_i) / 0x02)) / 0x20)) > keccak256(var_e));
                require(address(msg.sender) == (address(stor_j)));
                var_e = 0x05;
                require(!(((0x0100 * (!bytes1(stor_i))) - 0x01) & (stor_i)) / 0x02);
                require(0x1f < (((0x0100 * (!bytes1(stor_i))) - 0x01) & (stor_i) / 0x02));
            }
            require((var_a + (((0x0100 * (!bytes1(stor_i))) - 0x01) & (stor_i) / 0x02)) > (0x20 + var_a));
            var_a = var_a + 0x80;
            stor_m = stor_m + 0x01;
            var_e = 0x01 + ((0x04 * ((stor_m) - 0x01)) + keccak256(var_e));
            require(uint256(keccak256(var_m)) == (uint256(keccak256(var_m))));
        }
        if (uint256(keccak256(var_m)) == (uint256(keccak256(var_m)))) {
        }
        if (uint256(keccak256(var_m)) == (uint256(keccak256(var_m)))) {
        }
        if (!(keccak256(var_e) + ((0x1f + (((0x0100 * (!stor_i)) - 0x01) & (stor_i) / 0x02)) / 0x20)) > keccak256(var_e)) {
        }
        stor_i = (var_a.length + var_a.length) | (uint248(var_n));
        if (!(keccak256(var_e) + ((0x1f + (((0x0100 * (!stor_i)) - 0x01) & (stor_i) / 0x02)) / 0x20)) > keccak256(var_e)) {
        }
    }
    
    /// @custom:selector    0xd4ee1d90
    /// @custom:name        newOwner
    function newOwner() public view returns (address) {
        address var_a = stor_o;
        return var_a;
    }
    
    /// @custom:selector    0xdc0c1a27
    /// @custom:name        numberOfMajorEvents
    function numberOfMajorEvents() public view returns (uint256) {
        return stor_m;
    }
    
    /// @custom:selector    0x0eabeffe
    /// @custom:name        sendMessage
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function sendMessage(string memory arg0, string memory arg1, string memory arg2) public payable {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg0)) / 0x20) * 0x20));
        var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        if (!(((0x0100 * (!stor_i)) - 0x01) & (stor_i)) / 0x02) {
            require(!(((0x0100 * (!bytes1(stor_i))) - 0x01) & (stor_i)) / 0x02);
            var_g = 0x05;
            require(0x1f < (((0x0100 * (!bytes1(stor_i))) - 0x01) & (stor_i) / 0x02));
            require((var_a + (((0x0100 * (!bytes1(stor_i))) - 0x01) & (stor_i) / 0x02)) > (0x20 + var_a));
        }
        require(uint256(keccak256(var_i)) == (uint256(keccak256(var_i))));
        require(!msg.value > 0);
        (bool success, bytes memory ret0) = address(stor_j).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
        var_a = var_a + 0xa0;
        stor_a = stor_a + 0x01;
        if (0x1f < (var_n)) {
        }
        var_a = var_a + 0xa0;
        stor_a = stor_a + 0x01;
        if (0x1f < (var_n)) {
        }
        if (uint256(keccak256(var_i)) == (uint256(keccak256(var_i)))) {
        }
        if (uint256(keccak256(var_i)) == (uint256(keccak256(var_i)))) {
        }
    }
    
    /// @custom:selector    0x79ba5097
    /// @custom:name        acceptOwnership
    function acceptOwnership() public {
        if (!(address(msg.sender)) == (address(stor_o))) {
            stor_j = (address(stor_o)) | (uint96(stor_j));
        }
    }
    
    /// @custom:selector    0x4d7d8a60
    /// @custom:name        marriageDate
    function marriageDate() public view returns (uint256) {
        return stor_s;
    }
    
    /// @custom:selector    0x8b35a244
    /// @custom:name        partner2
    function partner2() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_t));
    }
    
    /// @custom:selector    0x58c721ce
    /// @custom:name        majorEvents
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function majorEvents(uint256 arg0) public view returns (bytes memory) {
        if (arg0 < stor_m) {
            var_a = 0x07;
            uint256 var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_u[(0x04 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_u[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
            if (!(((0x0100 * (!stor_map_u[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_u[(0x04 * arg0) + keccak256(var_a)])) / 0x02) {
                if (0x1f < (((0x0100 * (!stor_map_u[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_u[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) {
                    uint256 var_a = 0x01 + ((0x04 * arg0) + keccak256(var_a));
                    if ((0x20 + var_b) + (((0x0100 * (!stor_map_u[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_u[(0x04 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + var_b))) {
                        if ((0x20 + var_b) + (((0x0100 * (!stor_map_u[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_u[(0x04 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + (0x20 + var_b)))) {
                        }
                        var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_v[(0x04 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_v[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                        if (!(((0x0100 * (!stor_map_v[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_v[(0x04 * arg0) + keccak256(var_a)])) / 0x02) {
                            if (0x1f < (((0x0100 * (!stor_map_v[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_v[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) {
                                var_a = 0x02 + ((0x04 * arg0) + keccak256(var_a));
                                if ((0x20 + var_b) + (((0x0100 * (!stor_map_v[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_v[(0x04 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + var_b))) {
                                    if ((0x20 + var_b) + (((0x0100 * (!stor_map_v[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_v[(0x04 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + (0x20 + var_b)))) {
                                    }
                                    var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_w[(0x04 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_w[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                                    if (!(((0x0100 * (!stor_map_w[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_w[(0x04 * arg0) + keccak256(var_a)])) / 0x02) {
                                        if (0x1f < (((0x0100 * (!stor_map_w[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_w[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) {
                                            var_a = 0x03 + ((0x04 * arg0) + keccak256(var_a));
                                            if ((0x20 + var_b) + (((0x0100 * (!stor_map_w[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_w[(0x04 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + var_b))) {
                                                if ((0x20 + var_b) + (((0x0100 * (!stor_map_w[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_w[(0x04 * arg0) + keccak256(var_a)]) / 0x02) > (0x20 + (0x20 + (0x20 + var_b)))) {
                                                }
                                                var_f = stor_map_x[(0x04 * arg0) + keccak256(var_a)];
                                                if (!var_b.length) {
                                                    if (!var_b.length) {
                                                        if (!var_b.length) {
                                                            return abi.encodePacked(var_f, (0x20 + (0x20 + (0x20 + (0x20 + var_b)))) - var_b, (0x20 + ((var_b.length + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_b)))))) - (bytes1(var_b.length)))) - var_b, (0x20 + ((var_b.length + (0x20 + (0x20 + ((var_b.length + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_b)))))) - (bytes1(var_b.length)))))) - (bytes1(var_b.length)))) - var_b, var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_k), var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_o), var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_s));
                                                            return abi.encodePacked(var_f, (0x20 + (0x20 + (0x20 + (0x20 + var_b)))) - var_b, (0x20 + ((var_b.length + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_b)))))) - (bytes1(var_b.length)))) - var_b, (0x20 + ((var_b.length + (0x20 + (0x20 + ((var_b.length + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var_b)))))) - (bytes1(var_b.length)))))) - (bytes1(var_b.length)))) - var_b, var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_k), var_b.length, (~((0x0100 ** (0x20 - (bytes1(var_b.length)))) - 0x01)) & (var_o), var_b.length);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_w[(0x04 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_w[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                                if (!(((0x0100 * (!stor_map_w[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_w[(0x04 * arg0) + keccak256(var_a)])) / 0x02) {
                                }
                            }
                            var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_w[(0x04 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_w[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                            if (!(((0x0100 * (!stor_map_w[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_w[(0x04 * arg0) + keccak256(var_a)])) / 0x02) {
                            }
                        }
                    }
                    var_b = var_b + (0x20 + (((0x1f + (((0x0100 * (!bytes1(stor_map_v[(0x04 * arg0) + keccak256(var_a)]))) - 0x01) & (stor_map_v[(0x04 * arg0) + keccak256(var_a)]) / 0x02)) / 0x20) * 0x20));
                    if (!(((0x0100 * (!stor_map_v[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_v[(0x04 * arg0) + keccak256(var_a)])) / 0x02) {
                    }
                }
                if (!(((0x0100 * (!stor_map_v[(0x04 * arg0) + keccak256(var_a)])) - 0x01) & (stor_map_v[(0x04 * arg0) + keccak256(var_a)])) / 0x02) {
                }
            }
        }
    }
    
    /// @custom:selector    0x6753a3c1
    /// @custom:name        setMajorEvent
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setMajorEvent(string memory arg0, string memory arg1, string memory arg2) public {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg0)) / 0x20) * 0x20));
        var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        if (address(msg.sender) == (address(stor_j))) {
            if (!(((0x0100 * (!stor_i)) - 0x01) & (stor_i)) / 0x02) {
                require(address(msg.sender) == (address(stor_j)));
                var_g = 0x05;
                require(!(((0x0100 * (!bytes1(stor_i))) - 0x01) & (stor_i)) / 0x02);
                require(0x1f < (((0x0100 * (!bytes1(stor_i))) - 0x01) & (stor_i) / 0x02));
            }
            require((var_a + (((0x0100 * (!bytes1(stor_i))) - 0x01) & (stor_i) / 0x02)) > (0x20 + var_a));
            var_a = var_a + 0x80;
            stor_m = stor_m + 0x01;
            require(uint256(keccak256(var_l)) == (uint256(keccak256(var_l))));
        }
        if (uint256(keccak256(var_l)) == (uint256(keccak256(var_l)))) {
        }
        if (uint256(keccak256(var_l)) == (uint256(keccak256(var_l)))) {
        }
    }
    
    /// @custom:selector    0xa4c7c7b3
    /// @custom:name        partner1
    function partner1() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_z));
    }
    
    /// @custom:selector    0xa6f9dae1
    /// @custom:name        changeOwner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function changeOwner(address arg0) public {
        require(address(msg.sender) == (address(stor_j)));
        stor_o = (address(arg0)) | (uint96(stor_o));
    }
    
    /// @custom:selector    0xd081b681
    /// @custom:name        vows
    function vows() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_aa));
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_j;
        return var_a;
    }
    
    /// @custom:selector    0xfadcd861
    /// @custom:name        createMarriage
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg3 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function createMarriage(string memory arg0, string memory arg1, string memory arg2, string memory arg3) public {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg0)) / 0x20) * 0x20));
        var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        var_a = var_a + (0x20 + (((0x1f + (arg3)) / 0x20) * 0x20));
        var_c = msg.data[36:36];
        require(address(msg.sender) == (address(stor_j)));
        require(stor_m == 0);
        if (0x1f < var_a.length) {
            stor_z = 0x01 + (var_a.length + var_a.length);
            if (!var_a.length) {
                if (!((0x20 + var_a) + var_a.length) > (0x20 + var_a)) {
                    stor_map_p[var_g] = var_c;
                    if (!((0x20 + var_a) + var_a.length) > (0x20 + (0x20 + var_a))) {
                    }
                    if (!(keccak256(var_g) + ((0x1f + (((0x0100 * (!stor_z)) - 0x01) & (stor_z) / 0x02)) / 0x20)) > keccak256(var_g)) {
                        stor_map_p[var_g] = 0;
                        if (!(keccak256(var_g) + ((0x1f + (((0x0100 * (!stor_z)) - 0x01) & (stor_z) / 0x02)) / 0x20)) > (0x01 + keccak256(var_g))) {
                        }
                        var_g = 0x03;
                        if (0x1f < var_a.length) {
                        }
                    }
                }
                if (!(keccak256(var_g) + ((0x1f + (((0x0100 * (!stor_z)) - 0x01) & (stor_z) / 0x02)) / 0x20)) > keccak256(var_g)) {
                }
            }
            stor_z = (var_a.length + var_a.length) | (uint248(var_h));
            if (!(keccak256(var_g) + ((0x1f + (((0x0100 * (!stor_z)) - 0x01) & (stor_z) / 0x02)) / 0x20)) > keccak256(var_g)) {
            }
        }
    }
    
    /// @custom:selector    0xfbda68e2
    /// @custom:name        numberOfMessages
    function numberOfMessages() public view returns (uint256) {
        return stor_a;
    }
}