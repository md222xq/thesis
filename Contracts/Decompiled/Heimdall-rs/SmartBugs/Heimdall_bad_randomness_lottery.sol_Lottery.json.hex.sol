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
    mapping(bytes32 => bytes32) public stor_map_e;
    mapping(bytes32 => bytes32) public stor_map_f;
    mapping(bytes32 => bytes32) public stor_map_g;
    mapping(bytes32 => bytes32) public stor_map_h;
    
    event GetBet(uint256 arg0, uint256 arg1, bool arg2);
    
    /// @custom:selector    0x83197ef0
    /// @custom:name        destroy
    function destroy() public {
        require(address(msg.sender) == (address(stor_a)));
    }
    
    /// @custom:selector    0xa6afd5fd
    /// @custom:name        getBets
    function getBets() public view {
        if (address(msg.sender) == (address(stor_a))) {
            if (!0 < stor_b) {
                if (0 < stor_b) {
                    if (0 < stor_b) {
                        if (0 < stor_b) {
                            var_a = 0x01;
                            var_b = stor_map_c[0 + keccak256(var_a)];
                            var_c = stor_map_d[0 + keccak256(var_a)];
                            emit GetBet(var_b, var_c, (bytes1(stor_map_e[0 + keccak256(var_a)])));
                            require(address(msg.sender) == (address(stor_a)));
                        }
                    }
                }
            }
        }
    }
    
    /// @custom:selector    0x561e91a1
    /// @custom:name        makeBet
    function makeBet() public {
        require(0x02);
        stor_b = stor_b + 0x01;
        stor_map_g[(0x03 * ((stor_b) - 0x01)) + keccak256(var_e)] = var_g;
        require(!(block.number % 0x02) == 0);
        (bool success, bytes memory ret0) = address(msg.sender).call{ gas: !msg.value * 0x08fc, value: msg.value }(abi.encode());
    }
}