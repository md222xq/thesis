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
    bytes32 public stor_f;
    bytes32 public stor_g;
    (bool success, bytes public stor_d;
    mapping(address => bytes32) public stor_map_c;
    
    event Wager(uint256 arg0, address arg1);
    event Donate(uint256 arg0, address arg1, address arg2);
    event Win(uint256 arg0, address arg1);
    event Lose(uint256 arg0, address arg1);
    event DifficultyChanged(uint256 arg0);
    event BetLimitChanged(uint256 arg0);
    
    /// @custom:selector    0x4e6630b0
    /// @custom:name        ethBalance
    function ethBalance() public view returns (address) {
        return address(this).balance;
    }
    
    /// @custom:selector    0x667d5d22
    /// @custom:name        wager
    function wager() public payable {
        require(bytes1(stor_a));
        require(address(msg.sender) == (address(tx.origin)));
        require(msg.value == stor_b);
        stor_map_c[var_a] = block.number;
        stor_map_c[var_a] = msg.value;
        emit Wager(msg.value, address(msg.sender));
    }
    
    /// @custom:selector    0xeb605e9f
    /// @custom:name        hasPlayerWagered
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function hasPlayerWagered(address arg0) public view returns (bool) {
        address var_a = arg0;
        if (!stor_map_c[var_a] > 0) {
            return 0x01;
            return 0;
        }
    }
    
    /// @custom:selector    0xed88c68e
    /// @custom:name        donate
    function donate() public payable {
        require(bytes1(stor_a));
        (bool success, bytes memory ret0) = address(stor_d).call{ value: msg.value }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_b) / 0x0100000000000000000000000000000000000000000000000000000000))));
        stor_e = stor_e + msg.value;
        address var_c = stor_d;
        emit Donate(msg.value, var_c, address(msg.sender));
    }
    
    /// @custom:selector    0xc9e3af7e
    /// @custom:name        currentBetLimit
    function currentBetLimit() public view returns (uint256) {
        return stor_b;
    }
    
    /// @custom:selector    0x93e84cd9
    /// @custom:name        play
    function play() public {
        require(bytes1(stor_a));
        require(address(msg.sender) == (address(tx.origin)));
        address var_a = msg.sender;
        require(stor_map_c[var_a] > 0);
        var_a = msg.sender;
        require(!stor_map_c[var_a] < block.number);
        stor_map_c[var_a] = 0;
        stor_map_c[var_a] = 0;
        var_f = 0x14 + (0x20 + (0x20 + var_f));
        require(var_f.length < 0x20);
        require(stor_f);
        require(0x02);
        require(!(((keccak256(var_i)) % stor_f) + 0x01) == (stor_f / 0x02));
        require(0x02);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: (!(address(this).balance) / 0x02) * 0x08fc, value: (address(this).balance) / 0x02 }(abi.encode());
        emit Win(address(this).balance / 0x02, address(msg.sender));
        if (0x02) {
            (bool success, bytes memory ret0) = address(stor_d).call{ value: stor_b / 0x02 }(abi.encode(0x0100000000000000000000000000000000000000000000000000000000 * (uint32(keccak256(var_i) / 0x0100000000000000000000000000000000000000000000000000000000))));
            stor_e = stor_e + (stor_b / 0x02);
            var_g = stor_b / 0x02;
            emit Lose(var_g, address(msg.sender));
        }
        if ((var_f.length - 0x20) < 0x20) {
            if (((var_f.length - 0x20) - 0x20) < 0x20) {
            }
            if (stor_f) {
                if (0x02) {
                }
            }
        }
    }
    
    /// @custom:selector    0x5c062d6c
    /// @custom:name        currentDifficulty
    function currentDifficulty() public view returns (uint256) {
        return stor_f;
    }
    
    /// @custom:selector    0x38503f55
    /// @custom:name        AdjustDifficulty
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function AdjustDifficulty(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_g)));
        stor_f = arg0;
        emit DifficultyChanged(stor_f);
    }
    
    /// @custom:selector    0x755a11dc
    /// @custom:name        winnersPot
    function winnersPot() public view returns (address) {
        if (0x02) {
            return (address(this).balance) / 0x02;
        }
    }
    
    /// @custom:selector    0xd191b336
    /// @custom:name        AdjustBetAmounts
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function AdjustBetAmounts(uint256 arg0) public {
        require(address(msg.sender) == (address(stor_g)));
        stor_b = arg0;
        emit BetLimitChanged(stor_b);
    }
    
    /// @custom:selector    0x4a376c97
    /// @custom:name        OpenToThePublic
    function OpenToThePublic() public {
        require(address(msg.sender) == (address(stor_g)));
        stor_a = (0x01) | (uint248(stor_a));
    }
    
    /// @custom:selector    0xd493b9ac
    /// @custom:name        transferAnyERC20Token
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function transferAnyERC20Token(address arg0, address arg1, uint256 arg2) public returns (bool) {
        require(address(msg.sender) == (address(stor_g)));
        require(address(arg0).code.length);
        (bool success, bytes memory ret0) = address(arg0).call{ value: 0 }(abi.encode(0xa9059cbb00000000000000000000000000000000000000000000000000000000));
        require(!ret0.length < 0x20);
        return var_d.length;
    }
}