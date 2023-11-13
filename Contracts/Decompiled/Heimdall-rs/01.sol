// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/// @title            Decompiled Contract
/// @author           Jonathan Becker <jonathan@jbecker.dev>
/// @custom:version   heimdall-rs v0.6.3
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
    
    bytes public stor_a;
    bytes32 public stor_b;
    
    error CustomError_00000000000000000000000000000000000000000000000000000000fce698f7();
    error CustomError_00000000000000000000000000000000000000000000000000000000d78bce0c();
    error CustomError_00000000000000000000000000000000000000000000000000000000f645eedf();
    
    /// @custom:selector    0x9a4b740b
    /// @custom:name        Unresolved_9a4b740b
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_9a4b740b(address arg0, bytes memory arg1) public pure returns (uint256) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        return keccak256(var_f);
    }
    
    /// @custom:selector    0x025e7c27
    /// @custom:name        Unresolved_025e7c27
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_025e7c27(bytes memory arg0) public view returns (address) {
        require(arg0 == arg0);
        require(arg0 < 0x02);
        address var_a = stor_a;
        return var_a;
    }
    
    /// @custom:selector    0xffb485b8
    /// @custom:name        Unresolved_ffb485b8
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_ffb485b8(address arg0, bytes memory arg1, bytes memory arg2) public {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        require(!arg2 > 0xffffffffffffffff);
        require(!(0x02 > 0xffffffffffffffff), "invalid sig");
        require(!(((var_c + 0x40) > 0xffffffffffffffff) | ((var_c + 0x40) < var_c)), "invalid sig");
        var_c = var_c + 0x40;
        require(!((0x04 + arg2) < ((0x04 + arg2) + 0x40)), "invalid sig");
        var_c = ((0x20 + var_c) + 0x14) + 0x20;
        require(!(0 < 0x02), "invalid sig");
        require(0x01, "invalid sig");
        (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode());
        require(ret0.length == 0, "Failed to send Ether");
        var_c = var_c + (uint248(ret0.length + 0x3f));
        if (0 < 0x02) {
            require(0 < 0x02, "invalid sig");
            require(var_m - 0x41, "invalid sig");
            require(!((var_n >> 0) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0), "invalid sig");
            require(!(0 > 0x03), "invalid sig");
            require(!(0x03 > 0x03), "invalid sig");
            require(!0x03, "invalid sig");
            require(0 < 0x02, "invalid sig");
            require(0 == (address(stor_b)), "invalid sig");
            (bool success, bytes memory ret0) = address(arg0).call{ value: arg1 }(abi.encode());
            require(0, "invalid sig");
        }
        if (0x01) {
            if (!0x01 < 0x02) {
            }
        }
        require(!(0x01 > 0x03), CustomError_f645eedf());
        require(!(0x03 > 0x03), CustomError_f645eedf());
        require(0x02, CustomError_f645eedf());
        require(!(0x02 > 0x03), CustomError_fce698f7());
        require(!(0x03 > 0x03), CustomError_fce698f7());
        require(0x01, CustomError_fce698f7());
        if (!0x03 > 0x03) {
            require(!(0x03 > 0x03), CustomError_d78bce0c());
            var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            require(!(0x03 > 0x03), CustomError_d78bce0c());
            require(0, CustomError_d78bce0c());
        }
        var_c = 0x20 + var_c;
        require(var_v);
        if (address(var_w) - 0) {
            if (!0 > 0x03) {
            }
            if (!0 > 0x03) {
            }
        }
        if (!0 > 0x03) {
        }
        require(!(arg2) > 0xffffffffffffffff);
        if (!(arg2 + (arg2)) > 0xffffffffffffffff) {
            require(!(arg2 + (arg2)) > 0xffffffffffffffff);
            bytes memory var_c = var_c + (uint248(((arg2 + (arg2) + 0x1f) + 0x20) + 0x1f));
            require(!((var_c + (uint248(((arg2 + (arg2) + 0x1f) + 0x20) + 0x1f))) > 0xffffffffffffffff) | ((var_c + (uint248(((arg2 + (arg2) + 0x1f) + 0x20) + 0x1f))) < var_c));
        }
    }
    
    /// @custom:selector    0xd0e30db0
    /// @custom:name        Unresolved_d0e30db0
    function Unresolved_d0e30db0() public pure payable {
    }
}