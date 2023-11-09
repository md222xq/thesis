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
    
    address public stor_n;
    bytes32 public stor_a;
    bytes32 public stor_b;
    bytes32 public stor_c;
    bytes32 public stor_d;
    bytes32 public stor_e;
    bytes32 public stor_f;
    bytes32 public stor_r;
    mapping(bytes32 => bytes32) public stor_map_g;
    mapping(bytes32 => bytes32) public stor_map_k;
    mapping(bytes32 => bytes32) public stor_map_l;
    mapping(bytes32 => bytes32) public stor_map_m;
    mapping(uint256 => uint256) public stor_map_h;
    mapping(uint256 => uint256) public stor_map_i;
    mapping(uint256 => uint256) public stor_map_j;
    mapping(uint256 => uint256) public stor_map_o;
    mapping(uint256 => uint256) public stor_map_p;
    mapping(uint256 => uint256) public stor_map_q;
    
    event Payment(address arg0, uint256 arg1);
    event FailedPayment(address arg0, uint256 arg1);
    event Donate(uint256 arg0, address arg1);
    event Lose(address arg0, uint256 arg1, uint256 arg2, bool arg3, uint256 arg4);
    event JackpotPayment(address arg0, uint256 arg1, uint256 arg2);
    event Win(address arg0, uint256 arg1, uint256 arg2, bool arg3, uint256 arg4);
    event Refund(uint256 arg0, uint256 arg1, address arg2);
    event Wager(uint256 arg0, uint256 arg1, uint256 arg2, bool arg3, address arg4);
    
    /// @custom:selector    0x57246d23
    /// @custom:name        jackpotSize
    function jackpotSize() public view returns (uint256) {
        return stor_a;
    }
    
    /// @custom:selector    0x41c0e1b5
    /// @custom:name        kill
    function kill() public {
        require(!(!(address(msg.sender)) == (address(stor_b))), "All bets should be processed (settled or refunded) before self-destruct.");
        require(!(!stor_c == 0), "All bets should be processed (settled or refunded) before self-destruct.");
    }
    
    /// @custom:selector    0xd3bced2c
    /// @custom:name        withdrawBotFee
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function withdrawBotFee(uint256 arg0) public {
        require(!(!(address(msg.sender)) == (address(stor_d))), "This contract doesn't have enough balance, it is stopped till someone donate to this game!");
        require(!(address(this).balance < ((stor_c + stor_a) + stor_e)), "This contract doesn't have enough balance, it is stopped till someone donate to this game!");
        require(!(stor_e < arg0), "You are trying to withdraw more amount than developer fee.");
        require(!(arg0 > (address(this).balance)), "Contract balance is lower than withdrawAmount");
        require(!(stor_e > (address(this).balance)), "Not enough funds to withdraw.");
        (bool success, bytes memory ret0) = address(stor_d).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
        address var_a = stor_d;
        emit FailedPayment(var_a, arg0);
        stor_e = stor_e - arg0;
        var_a = stor_d;
        emit Payment(var_a, arg0);
    }
    
    /// @custom:selector    0x2d4f40c6
    /// @custom:name        setBotAddress
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setBotAddress(address arg0) public {
        require(!(!(address(msg.sender)) == (address(stor_b))), "You are not the owner of this contract!");
        stor_d = (address(arg0)) | (uint96(stor_d));
    }
    
    /// @custom:selector    0x6a98085a
    /// @custom:name        totalAmountToWhale
    function totalAmountToWhale() public view returns (uint256) {
        return stor_f;
    }
    
    /// @custom:selector    0x6eb91683
    /// @custom:name        donateForContractHealth
    function donateForContractHealth() public payable {
        address var_a = msg.sender;
        stor_map_g[var_a] = stor_map_g[var_a] + msg.value;
        emit Donate(msg.value, address(msg.sender));
    }
    
    /// @custom:selector    0x89c5077f
    /// @custom:name        withdrawDevFee
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function withdrawDevFee(address arg0, uint256 arg1) public {
        require(!(!(address(msg.sender)) == (address(stor_b))), "This contract doesn't have enough balance, it is stopped till someone donate to this game!");
        require(!(address(this).balance < ((stor_c + stor_a) + stor_e)), "This contract doesn't have enough balance, it is stopped till someone donate to this game!");
        require(!(stor_e < arg1), "You are trying to withdraw more amount than developer fee.");
        require(!(arg1 > (address(this).balance)), "Contract balance is lower than withdrawAmount");
        require(!(stor_e > (address(this).balance)), "Not enough funds to withdraw.");
        (bool success, bytes memory ret0) = address(arg0).call{ gas: !arg1 * 0x08fc, value: arg1 }(abi.encode());
        emit FailedPayment(address(arg0), arg1);
        stor_e = stor_e - arg1;
        emit Payment(address(arg0), arg1);
    }
    
    /// @custom:selector    0xd493b9ac
    /// @custom:name        transferAnyERC20Token
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transferAnyERC20Token(address arg0, address arg1, uint256 arg2) public returns (bool) {
        require(address(msg.sender) == (address(stor_b)));
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        return var_d.length;
    }
    
    /// @custom:selector    0xef115542
    /// @custom:name        clearStorage
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function clearStorage(uint256[] memory arg0) public {
        if (!0 < (arg0)) {
            if (0 < (arg0)) {
                uint256[] memory var_a = (0 + (0x20 + (arg0)));
                if (!(stor_map_h[var_a]) == 0) {
                    if (stor_map_h[var_a] == 0) {
                        if (!0x01 < (arg0)) {
                        }
                        stor_map_i[var_a] = 0;
                        stor_map_j[var_a] = (0) | (uint248(stor_map_j[var_a]));
                        stor_map_j[var_a] = 0 | (uint96(stor_map_j[var_a]));
                        if (!0x01 < (arg0)) {
                        }
                    }
                    if (block.number > (stor_map_i[var_a] + 0xfa)) {
                        stor_map_i[var_a] = 0;
                        stor_map_j[var_a] = (0) | (uint248(stor_map_j[var_a]));
                        stor_map_j[var_a] = 0 | (uint96(stor_map_j[var_a]));
                        if (!0x01 < (arg0)) {
                        }
                        if (!0x01 < (arg0)) {
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x1529a639
    /// @custom:name        getCollateralBalance
    function getCollateralBalance() public view returns (address) {
        if (!(address(this).balance) > ((stor_c + stor_a) + stor_e)) {
            return 0;
            var_a = ((address(this).balance - stor_c) - stor_a) - stor_e;
            return var_a;
        }
    }
    
    /// @custom:selector    0x6898f82b
    /// @custom:name        play
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function play(uint256 arg0) public {
        require(!(address(this).balance < ((stor_c + stor_a) + stor_e)), "This contract doesn't have enough balance, it is stopped till someone donate to this game!");
        var_c = 0x20 + (0x20 + var_c);
        require(var_c.length < 0x20);
        var_k = keccak256(var_l);
        require(!(address(stor_map_k[var_k] / 0x0100)) == 0);
        require(!(stor_map_l[var_k]) == 0);
        require(!(stor_map_m[var_k]) < block.number);
        require(!(stor_map_m[var_k]) < block.number);
        var_c = 0x20 + (0x20 + (0x20 + var_c));
        require(var_c.length < 0x20);
        require(0x02);
        require(0x03e8);
        require(0x03e8);
        require(!(bytes1(stor_map_k[var_k])) == (!((keccak256(var_l)) % 0x02) == 0));
        require(!((keccak256(var_l)) % 0x03e8) == 0);
        stor_a = 0;
        require(!stor_a > 0);
        address var_p = stor_map_k[var_k] / 0x0100;
        emit JackpotPayment(var_p, keccak256(var_l), stor_a);
        require(!(((stor_map_l[var_k] * 0x076c) / 0x03e8) + stor_a) > 0);
        (bool success, bytes memory ret0) = var_p.call{ gas: (!((stor_map_l[var_k] * 0x076c) / 0x03e8) + stor_a) * 0x08fc, value: ((stor_map_l[var_k] * 0x076c) / 0x03e8) + stor_a }(abi.encode());
        var_p = stor_map_k[var_k] / 0x0100;
        var_q = ((stor_map_l[var_k] * 0x076c) / 0x03e8) + stor_a;
        emit Win(var_p, var_q, keccak256(var_l), !(((keccak256(var_l)) % 0x02) == 0), (keccak256(var_l)) % 0x03e8);
        stor_c = stor_c - ((stor_map_l[var_k] * 0x076c) / 0x03e8);
        stor_map_l[var_k] = 0;
        var_p = stor_map_k[var_k] / 0x0100;
        emit Lose(var_p, stor_map_l[var_k], keccak256(var_l), !(((keccak256(var_l)) % 0x02) == 0), (keccak256(var_l)) % 0x03e8);
        stor_c = stor_c - ((stor_map_l[var_k] * 0x076c) / 0x03e8);
        stor_map_l[var_k] = 0;
        if (!(((stor_map_l[var_k] * 0x076c) / 0x03e8) + stor_a) > 0) {
        }
        if (!0 > 0) {
        }
        if (!((keccak256(var_l)) % 0x03e8) == 0) {
        }
        var_p = var_j;
        if ((var_c.length - 0x20) < 0x20) {
        }
        if (stor_map_m[var_k] < (block.number - 0xfa)) {
            var_c = 0x20 + (0x20 + (0x20 + var_c));
            require(stor_map_m[var_k] < (block.number - 0xfa));
        }
        if ((var_c.length - 0x20) < 0x20) {
            if (((var_c.length - 0x20) - 0x20) < 0x20) {
            }
            if (!(var_p) == 0) {
            }
        }
    }
    
    /// @custom:selector    0xc47fae76
    /// @custom:name        autoPlayBot
    function autoPlayBot() public view returns (address) {
        address var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0x4d61537f
    /// @custom:name        secretSigner
    function secretSigner() public view returns (address) {
        address var_a = stor_n;
        return var_a;
    }
    
    /// @custom:selector    0xd702087f
    /// @custom:name        setSecretSigner
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function setSecretSigner(address arg0) public {
        require(!(!(address(msg.sender)) == (address(stor_b))), "You are not the owner of this contract!");
        stor_n = (address(arg0)) | (uint96(stor_n));
    }
    
    /// @custom:selector    0x278ecde1
    /// @custom:name        refund
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function refund(uint256 arg0) public {
        require(!(address(this).balance < ((stor_c + stor_a) + stor_e)), "This contract doesn't have enough balance, it is stopped till someone donate to this game!");
        uint256 var_h = arg0;
        require(!(stor_map_o[var_h]) == 0);
        require(block.number > (stor_map_p[var_h] + 0xfa));
        var_h = arg0;
        (bool success, bytes memory ret0) = address(stor_map_q[var_h] / 0x0100).call{ gas: (!stor_map_o[var_h]) * 0x08fc, value: stor_map_o[var_h] }(abi.encode());
        if (0x03e8) {
            stor_c = stor_c - ((stor_map_o[var_h] * 0x076c) / 0x03e8);
            stor_map_o[var_h] = 0;
            address var_k = stor_map_q[var_h] / 0x0100;
            emit Refund(arg0, stor_map_o[var_h], var_k);
        }
    }
    
    /// @custom:selector    0x27150f01
    /// @custom:name        devFeeSize
    function devFeeSize() public view returns (uint256) {
        return stor_e;
    }
    
    /// @custom:selector    0x79141f80
    /// @custom:name        getBetInfo
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function getBetInfo(uint256 arg0) public view returns (bytes memory) {
        uint256 var_a = arg0;
        uint256 var_e = !(!bytes1(stor_map_j[var_a]));
        address var_f = stor_map_j[var_a] / 0x0100;
        return abi.encodePacked(stor_map_h[var_a], stor_map_i[var_a], var_e, var_f);
    }
    
    /// @custom:selector    0x96afccb3
    /// @custom:name        withdrawDonation
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function withdrawDonation(uint256 arg0) public {
        address var_a = msg.sender;
        require(!(stor_map_g[var_a] < arg0), "You are going to withdraw more than you donated!");
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !arg0 * 0x08fc, value: arg0 }(abi.encode());
        emit FailedPayment(address(msg.sender), arg0);
        var_a = msg.sender;
        stor_map_g[var_a] = stor_map_g[var_a] - arg0;
        emit Payment(address(msg.sender), arg0);
    }
    
    /// @custom:selector    0x0ecae7d3
    /// @custom:name        wager
    /// @param              arg0 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "bytes32", "bytes5", "int", "int256", "int40", "string", "uint", "uint256", "uint40"]
    /// @param              arg3 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    /// @param              arg4 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    /// @param              arg5 ["bytes", "bytes32", "int", "int256", "string", "uint", "uint256"]
    function wager(bool arg0, uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) public payable {
        require(!(address(this).balance < ((stor_c + stor_a) + stor_e)), "This contract doesn't have enough balance, it is stopped till someone donate to this game!");
        uint256 var_h = arg1;
        require(!(!(address(stor_map_q[var_h] / 0x0100)) == 0), "Ticket is not new one!");
        require(!(msg.value < 0x2386f26fc10000), "Your bet is higher than maximum bet amount");
        require(!(msg.value > 0x0de0b6b3a7640000), "Your bet is higher than maximum bet amount");
        require(!(address(this).balance > ((stor_c + stor_a) + stor_e)), "If we accept this, this contract will be in danger!");
        require(!(0 < (0x02 * msg.value)), "If we accept this, this contract will be in danger!");
        require(!block.number > arg2);
        var_c = 0x20 + (0x05 + (0x1c + (0x20 + var_c)));
        require(var_c.length < 0x20);
        var_c = 0x20 + var_c;
        address var_t = ecrecover(uint256(keccak256(var_p)), bytes1(arg3), uint256(arg4), uint256(arg5));
        require(var_t);
        require(!(!(address(stor_n)) == (address(var_t))), "web3 vrs signature is not valid.");
        if (0x03e8) {
            stor_a = stor_a + ((msg.value * 0x0a) / 0x03e8);
            if (0x03e8) {
                stor_e = stor_e + ((msg.value * 0x14) / 0x03e8);
                if (0x03e8) {
                    stor_c = stor_c + ((msg.value * 0x076c) / 0x03e8);
                    if (0x03e8) {
                        (bool success, bytes memory ret0) = address(stor_r).call{ value: (msg.value * 0x14) / 0x03e8 }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_p) / 0x0100000000000000000000000000000000000000000000000000000000))));
                        stor_f = stor_f + ((msg.value * 0x14) / 0x03e8);
                        stor_map_o[var_h] = msg.value;
                        stor_map_p[var_h] = block.number;
                        stor_map_q[var_h] = (arg0) | (uint248(stor_map_q[var_h]));
                        stor_map_q[var_h] = (address(msg.sender) * 0x0100) | (uint96(stor_map_q[var_h]));
                        var_s = !(!bytes1(stor_map_q[var_h]));
                        address var_x = stor_map_q[var_h] / 0x0100;
                        emit Wager(arg1, stor_map_o[var_h], stor_map_p[var_h], var_s, var_x);
                    }
                }
            }
        }
        if ((var_c.length - 0x20) < 0x20) {
        }
        if (!(((address(this).balance - stor_c) - stor_a) - stor_e) < (0x02 * msg.value)) {
        }
    }
    
    /// @custom:selector    0xdf88126f
    /// @custom:name        lockedInBets
    function lockedInBets() public view returns (uint256) {
        return stor_c;
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        owner
    function owner() public view returns (address) {
        address var_a = stor_b;
        return var_a;
    }
    
    /// @custom:selector    0x6f9fb98a
    /// @custom:name        getContractBalance
    function getContractBalance() public view returns (address) {
        return address(this).balance;
    }
}