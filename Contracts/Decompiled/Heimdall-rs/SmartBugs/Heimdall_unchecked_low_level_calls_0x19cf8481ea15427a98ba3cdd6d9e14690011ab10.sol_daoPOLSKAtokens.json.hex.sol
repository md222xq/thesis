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
    
    string public stor_n;
    address public stor_f;
    address public stor_m;
    address public stor_t;
    bytes32 public stor_a;
    bytes32 public stor_c;
    bytes32 public stor_d;
    bytes32 public stor_e;
    bytes32 public stor_g;
    bytes32 public stor_h;
    bytes32 public stor_i;
    bytes32 public stor_p;
    bytes32 public stor_q;
    bytes32 public stor_r;
    bytes32 public stor_u;
    bytes32 public stor_v;
    bytes32 public stor_w;
    bytes32 public stor_x;
    bytes32 public stor_y;
    bytes32 public stor_z;
    mapping(bytes32 => address) public stor_map_l;
    mapping(bytes32 => bytes32) public stor_map_b;
    mapping(bytes32 => bytes32) public stor_map_j;
    mapping(bytes32 => bytes32) public stor_map_o;
    mapping(bytes32 => bytes32) public stor_map_s;
    mapping(bytes32 => uint256) public stor_map_k;
    
    event Migrate(address arg0, address arg1, uint256 arg2);
    event Refund(address arg0, uint256 arg1);
    event Burn(address arg0, uint256 arg1);
    event Transfer(address arg0, address arg1, uint256 arg2);
    event Approval(address arg0, address arg1, uint256 arg2);
    
    /// @custom:selector    0x454b0608
    /// @custom:name        migrate
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function migrate(uint256 arg0) public {
        require(!bytes1(stor_a / 0x010000));
        require(!arg0 == 0);
        address var_a = msg.sender;
        require(!arg0 > stor_map_b[var_a]);
        var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] - arg0;
        stor_c = stor_c - arg0;
        stor_d = stor_d + arg0;
        require(address(stor_e).code.length);
        (bool success, bytes memory ret0) = address(stor_e).call{ value: 0 }(abi.encode(0x7a3130e300000000000000000000000000000000000000000000000000000000));
        emit Migrate(address(msg.sender), address(stor_e), arg0);
    }
    
    /// @custom:selector    0x676d2e62
    /// @custom:name        migrationMaster
    function migrationMaster() public view returns (address) {
        address var_a = stor_f;
        return var_a;
    }
    
    /// @custom:selector    0x6f766f20
    /// @custom:name        refundTRA
    function refundTRA() public {
        require(!bytes1(stor_a));
        require(bytes1(stor_a / 0x0100));
        var_a = msg.sender;
        require(!stor_map_b[var_a] == 0);
        stor_map_b[var_a] = 0;
        stor_c = stor_c - stor_map_b[var_a];
        emit Refund(address(msg.sender), stor_map_b[var_a]);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !stor_map_b[var_a] * 0x08fc, value: stor_map_b[var_a] }(abi.encode());
    }
    
    /// @custom:selector    0x95d89b41
    /// @custom:name        symbol
    function symbol() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_g));
    }
    
    /// @custom:selector    0xea16cee5
    /// @custom:name        migratestate
    function migratestate() public view returns (bool) {
        var_a = !(!bytes1(stor_a / 0x010000));
        return var_a;
    }
    
    /// @custom:selector    0x6d57dee4
    /// @custom:name        sendTokenAw
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function sendTokenAw(address arg0, address arg1, uint256 arg2) public {
        require(address(msg.sender) == (address(stor_h)));
        var_a = stor_i;
        stor_map_j[var_a] = (address(arg0)) | (uint96(stor_map_j[var_a]));
        stor_map_k[var_a] = arg2;
        stor_map_l[var_a] = (address(arg1)) | (uint96(stor_map_l[var_a]));
        require(address(stor_map_j[var_a]).code.length);
        (bool success, bytes memory ret0) = address(stor_map_j[var_a]).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        stor_i = 0x01 + stor_i;
    }
    
    /// @custom:selector    0x313ce567
    /// @custom:name        decimals
    function decimals() public pure returns (uint256) {
        return 0x12;
    }
    
    /// @custom:selector    0x79cc6790
    /// @custom:name        burnFrom
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function burnFrom(address arg0, uint256 arg1) public returns (bool) {
        address var_a = arg0;
        require(!stor_map_b[var_a] < arg1);
        var_a = msg.sender;
        require(!arg1 > stor_map_b[var_a]);
        var_a = arg0;
        stor_map_b[var_a] = stor_map_b[var_a] - arg1;
        var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] - arg1;
        stor_c = stor_c - arg1;
        emit Burn(address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0x91a7aa37
    /// @custom:name        Chain2
    function Chain2() public view returns (address) {
        address var_a = stor_m;
        return var_a;
    }
    
    /// @custom:selector    0x06fdde03
    /// @custom:name        name
    function name() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_n));
    }
    
    /// @custom:selector    0x8e49a2c2
    /// @custom:name        turnmigrate
    function turnmigrate() public {
        require(address(msg.sender) == (address(stor_f)));
        stor_a = ((!bytes1(stor_a / 0x010000)) * 0x010000) | (uint248(stor_a));
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:name        transfer
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transfer(address arg0, uint256 arg1) public returns (bool) {
        address var_a = msg.sender;
        if (stor_map_b[var_a] < arg1) {
            if (stor_map_b[var_a] < arg1) {
                return 0;
                var_a = msg.sender;
                stor_map_b[var_a] = stor_map_b[var_a] - arg1;
                var_a = arg0;
                stor_map_b[var_a] = stor_map_b[var_a] + arg1;
                emit Transfer(address(msg.sender), address(arg0), arg1);
                return 0x01;
            }
            var_a = arg0;
            if (!(stor_map_b[var_a]) > stor_map_b[var_a]) {
                var_a = msg.sender;
                stor_map_b[var_a] = stor_map_b[var_a] - arg1;
                var_a = arg0;
                stor_map_b[var_a] = stor_map_b[var_a] + arg1;
                return 0x01;
                return 0;
            }
        }
    }
    
    /// @custom:selector    0xbf5c844b
    /// @custom:name        oneweek
    function oneweek() public pure returns (uint256) {
        return 0x8ca0;
    }
    
    /// @custom:selector    0xcae9ca51
    /// @custom:name        approveAndCall
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approveAndCall(address arg0, uint256 arg1, bytes memory arg2) public returns (bool) {
        bytes memory var_a = var_a + (0x20 + (((0x1f + (arg2)) / 0x20) * 0x20));
        var_d = arg0;
        stor_map_o[var_d] = arg1;
        emit Approval(address(msg.sender), address(arg0), arg1);
        require(!0x01);
        return 0;
        require(!bytes1(var_a.length));
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x8f4ffcb100000000000000000000000000000000000000000000000000000000));
        return 0x01;
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0x01));
    }
    
    /// @custom:selector    0x42af2478
    /// @custom:name        PartialFundsTransfer
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function PartialFundsTransfer(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_h)));
        (bool success, bytes memory ret0) = address(stor_h).call{ gas: (!(address(this).balance) - arg0) * 0x08fc, value: (address(this).balance) - arg0 }(abi.encode());
    }
    
    /// @custom:selector    0x5d5c606f
    /// @custom:name        DAOPolskaTokenICOregulations
    function DAOPolskaTokenICOregulations() public pure returns (bytes memory) {
        var_a = var_a + 0xe0;
        if (!var_a.length) {
            return abi.encodePacked((0x20 + var_a) - var_a, var_a.length);
            return abi.encodePacked((0x20 + var_a) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_g));
        }
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_h;
        return var_a;
    }
    
    /// @custom:selector    0x26f08aec
    /// @custom:name        setotherchainstotalsupply
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setotherchainstotalsupply(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_h)));
        require((bytes1(stor_p)) == 0);
        stor_p = (0x0100) | (uint248(stor_p));
        stor_q = arg0 ** 0x12;
    }
    
    /// @custom:selector    0x3b4c4b25
    /// @custom:name        setSupply
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setSupply(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_h)));
        require((bytes1(stor_p)) == 0);
        stor_p = (0x01) | (uint248(stor_p));
        stor_r = arg0 ** 0x12;
    }
    
    /// @custom:selector    0x4eee966f
    /// @custom:name        setTokenInformation
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setTokenInformation(string memory arg0, string memory arg1) public {
        string memory var_a = var_a + (0x20 + (((0x1f + (arg0)) / 0x20) * 0x20));
        var_a = var_a + (0x20 + (((0x1f + (arg1)) / 0x20) * 0x20));
        var_c = msg.data[36:36];
        if (address(msg.sender) == (address(stor_h))) {
            if (0x1f < var_a.length) {
                stor_n = 0x01 + (var_a.length + var_a.length);
                if (!var_a.length) {
                    if (!((0x20 + var_a) + var_a.length) > (0x20 + var_a)) {
                        stor_map_s[var_e] = var_c;
                        if (!((0x20 + var_a) + var_a.length) > (0x20 + (0x20 + var_a))) {
                        }
                        if (!(keccak256(var_e) + ((0x1f + (((0x0100 * (!stor_n)) - 0x01) & (stor_n) / 0x02)) / 0x20)) > keccak256(var_e)) {
                            stor_map_s[var_e] = 0;
                            if (!(keccak256(var_e) + ((0x1f + (((0x0100 * (!stor_n)) - 0x01) & (stor_n) / 0x02)) / 0x20)) > (0x01 + keccak256(var_e))) {
                            }
                            var_e = 0x01;
                            if (0x1f < var_a.length) {
                            }
                        }
                    }
                    if (!(keccak256(var_e) + ((0x1f + (((0x0100 * (!stor_n)) - 0x01) & (stor_n) / 0x02)) / 0x20)) > keccak256(var_e)) {
                    }
                }
                stor_n = (var_a.length + var_a.length) | (uint248(var_f));
                require(address(msg.sender) == (address(stor_h)));
            }
        }
    }
    
    /// @custom:selector    0x8842bfa0
    /// @custom:name        Chain4
    function Chain4() public view returns (address) {
        address var_a = stor_t;
        return var_a;
    }
    
    /// @custom:selector    0xdcabf93f
    /// @custom:name        refundstate
    function refundstate() public view returns (bool) {
        var_a = !(!bytes1(stor_a / 0x0100));
        return var_a;
    }
    
    /// @custom:selector    0xe4eba2ef
    /// @custom:name        supplylimit
    function supplylimit() public view returns (uint256) {
        return stor_r;
    }
    
    /// @custom:selector    0xa4f5b8c1
    /// @custom:name        bonusCreationRate
    function bonusCreationRate() public view returns (uint256) {
        return stor_u;
    }
    
    /// @custom:selector    0xc0a1e525
    /// @custom:name        createDaoPOLSKAtokens
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function createDaoPOLSKAtokens(address arg0) public payable {
        require(bytes1(stor_a));
        require(!msg.value == 0);
        require(stor_v);
        require(!msg.value > ((stor_r - stor_c) / stor_v));
        stor_c = stor_c + (msg.value * stor_v);
        address var_a = arg0;
        stor_map_b[var_a] = stor_map_b[var_a] + (msg.value * stor_v);
        var_a = arg0;
        stor_map_b[var_a] = stor_map_b[var_a] + msg.value;
        var_c = msg.value * stor_v;
        emit Transfer(0, address(arg0), var_c);
        if (0x64) {
            stor_c = stor_c + (((var_c) * 0x0c) / 0x64);
            var_a = stor_f;
            stor_map_b[var_a] = stor_map_b[var_a] + (((var_c) * 0x0c) / 0x64);
        }
    }
    
    /// @custom:selector    0xb25cdccf
    /// @custom:name        fundingState
    function fundingState() public {
        require(address(msg.sender) == (address(stor_h)));
        stor_a = ((!bytes1(stor_a))) | (uint248(stor_a));
    }
    
    /// @custom:selector    0xfbf7980f
    /// @custom:name        setChainsAddresses
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setChainsAddresses(address arg0, int256 arg1) public {
        if (address(msg.sender) == (address(stor_h))) {
            if (!arg1 == 0x01) {
                stor_w = (address(arg0)) | (uint96(stor_w));
                if (!arg1 == 0x02) {
                    stor_m = (address(arg0)) | (uint96(stor_m));
                    if (!arg1 == 0x03) {
                        stor_x = (address(arg0)) | (uint96(stor_x));
                        if (!arg1 == 0x04) {
                            stor_t = (address(arg0)) | (uint96(stor_t));
                        }
                        if (!arg1 == 0x04) {
                        }
                    }
                    if (!arg1 == 0x03) {
                    }
                }
                require(address(msg.sender) == (address(stor_h)));
            }
        }
    }
    
    /// @custom:selector    0x42966c68
    /// @custom:name        burn
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function burn(uint256 arg0) public returns (bool) {
        address var_a = msg.sender;
        require(!stor_map_b[var_a] < arg0);
        var_a = msg.sender;
        stor_map_b[var_a] = stor_map_b[var_a] - arg0;
        stor_c = stor_c - arg0;
        emit Burn(address(msg.sender), arg0);
        return 0x01;
    }
    
    /// @custom:selector    0x095ea7b3
    /// @custom:name        approve
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function approve(address arg0, uint256 arg1) public returns (bool) {
        var_a = arg0;
        stor_map_b[var_a] = arg1;
        emit Approval(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:name        transferFrom
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transferFrom(address arg0, address arg1, uint256 arg2) public returns (bool) {
        address var_a = arg0;
        if (stor_map_b[var_a] < arg2) {
            if (stor_map_b[var_a] < arg2) {
                if (stor_map_b[var_a] < arg2) {
                    return 0;
                    var_a = arg1;
                    stor_map_b[var_a] = stor_map_b[var_a] + arg2;
                    var_a = arg0;
                    stor_map_b[var_a] = stor_map_b[var_a] - arg2;
                    var_a = msg.sender;
                    stor_map_b[var_a] = stor_map_b[var_a] - arg2;
                    emit Transfer(address(arg0), address(arg1), arg2);
                    return 0x01;
                }
                var_a = arg1;
                if (!(stor_map_b[var_a] + arg2) > stor_map_b[var_a]) {
                    var_a = arg1;
                    stor_map_b[var_a] = stor_map_b[var_a] + arg2;
                    var_a = arg0;
                    stor_map_b[var_a] = stor_map_b[var_a] - arg2;
                    var_a = msg.sender;
                    stor_map_b[var_a] = stor_map_b[var_a] - arg2;
                    return 0x01;
                    return 0;
                }
            }
            var_a = msg.sender;
            if (stor_map_b[var_a] < arg2) {
            }
        }
    }
    
    /// @custom:selector    0x8328dbcd
    /// @custom:name        migrationAgent
    function migrationAgent() public view returns (address) {
        address var_a = stor_e;
        return var_a;
    }
    
    /// @custom:selector    0x41d003cb
    /// @custom:name        setBonusCreationRate
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function setBonusCreationRate(uint256 arg0) public {
        if (!(address(msg.sender)) == (address(stor_h))) {
            stor_u = arg0;
            stor_v = stor_y + stor_u;
        }
    }
    
    /// @custom:selector    0x1b44f449
    /// @custom:name        Chain3
    function Chain3() public view returns (address) {
        address var_a = stor_x;
        return var_a;
    }
    
    /// @custom:selector    0x91b43d13
    /// @custom:name        fundingEndBlock
    function fundingEndBlock() public view returns (uint256) {
        return stor_z;
    }
    
    /// @custom:selector    0x95a0f5eb
    /// @custom:name        totalMigrated
    function totalMigrated() public view returns (uint256) {
        return stor_d;
    }
    
    /// @custom:selector    0x131be36c
    /// @custom:name        preICOregulations
    function preICOregulations() public pure returns (bytes memory) {
        var_a = var_a + 0xc0;
        if (!var_a.length) {
            return abi.encodePacked((0x20 + var_a) - var_a, var_a.length);
            return abi.encodePacked((0x20 + var_a) - var_a, var_a.length, (~((0x0100 ** (0x20 - (bytes1(var_a.length)))) - 0x01)) & (var_g));
        }
    }
    
    /// @custom:selector    0x18160ddd
    /// @custom:name        totalSupply
    function totalSupply() public view returns (uint256) {
        return stor_c;
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        balanceOf
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function balanceOf(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_b[var_a];
    }
    
    /// @custom:selector    0x1a1773f4
    /// @custom:name        otherchainstotalset
    function otherchainstotalset() public view returns (bool) {
        var_a = !(!bytes1(stor_p / 0x0100));
        return var_a;
    }
    
    /// @custom:selector    0x0a49646b
    /// @custom:name        CreationRate
    function CreationRate() public view returns (uint256) {
        return stor_v;
    }
    
    /// @custom:selector    0xcf8d652c
    /// @custom:name        tokenCreationRate
    function tokenCreationRate() public view returns (uint256) {
        return stor_y;
    }
    
    /// @custom:selector    0xfd4faee0
    /// @custom:name        Chain1
    function Chain1() public view returns (address) {
        address var_a = stor_w;
        return var_a;
    }
    
    /// @custom:selector    0xdd62ed3e
    /// @custom:name        allowance
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function allowance(address arg0, address arg1) public view returns (uint256) {
        var_a = arg1;
        return stor_map_b[var_a];
    }
    
    /// @custom:selector    0x42bb5709
    /// @custom:name        FundsTransfer
    function FundsTransfer() public {
        require(!(bytes1(stor_a)) == 0x01);
        (bool success, bytes memory ret0) = address(stor_h).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
    }
    
    /// @custom:selector    0x327efb0c
    /// @custom:name        supplylimitset
    function supplylimitset() public view returns (bool) {
        var_a = !(!bytes1(stor_p));
        return var_a;
    }
    
    /// @custom:selector    0x2d47c29e
    /// @custom:name        otherchainstotalsupply
    function otherchainstotalsupply() public view returns (uint256) {
        return stor_q;
    }
    
    /// @custom:selector    0xcb4c86b7
    /// @custom:name        funding
    function funding() public view returns (bool) {
        var_a = !(!bytes1(stor_a));
        return var_a;
    }
    
    /// @custom:selector    0x4bb278f3
    /// @custom:name        finalize
    function finalize() public {
        if (block.number > (stor_z + 0x046500)) {
            stor_a = (0) | (uint248(stor_a));
            stor_a = ((!bytes1(stor_a / 0x0100)) * 0x0100) | (uint248(stor_a));
            require(block.number > (stor_z + 0x046500));
            (bool success, bytes memory ret0) = address(stor_h).call{ gas: (!address(this).balance) * 0x08fc, value: address(this).balance }(abi.encode());
        }
    }
    
    /// @custom:selector    0xcaecc5aa
    /// @custom:name        turnrefund
    function turnrefund() public {
        require(address(msg.sender) == (address(stor_h)));
        stor_a = ((!bytes1(stor_a / 0x0100)) * 0x0100) | (uint248(stor_a));
    }
}