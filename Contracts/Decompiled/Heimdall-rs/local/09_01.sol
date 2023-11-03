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
    
    address public stor_c;
    address public stor_i;
    bytes32 public stor_b;
    bytes32 public stor_d;
    bytes32 public stor_e;
    bytes32 public stor_f;
    bytes32 public stor_g;
    bytes32 public stor_j;
    bytes32 public stor_k;
    mapping(address => bytes32) public stor_map_h;
    mapping(bytes32 => bytes32) public stor_map_a;
    
    event Event_8be0079c();
    event Event_ddf252ad();
    event Event_8c5be1e5();
    
    /// @custom:selector    0x55eff2f6
    /// @custom:name        Unresolved_55eff2f6
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function Unresolved_55eff2f6(address arg0, bool arg1) public {
        require(address(msg.sender) == 0x1f490e99657cd08a058c6bb6cd81dd38f59e0e7a);
        address var_a = arg0;
        stor_map_a[var_a] = (arg1) | (uint248(stor_map_a[var_a]));
    }
    
    /// @custom:selector    0x18160ddd
    /// @custom:name        Unresolved_18160ddd
    function Unresolved_18160ddd() public view returns (uint256) {
        return stor_b;
    }
    
    /// @custom:selector    0x858ced35
    /// @custom:name        Unresolved_858ced35
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_858ced35(address arg0) public returns (bool) {
        require(address(msg.sender) == (address(stor_c)));
        stor_d = (address(arg0)) | (uint96(stor_d));
        return 0;
    }
    
    /// @custom:selector    0xe2daf665
    /// @custom:name        Unresolved_e2daf665
    function Unresolved_e2daf665() public view returns (address) {
        address var_a = stor_e;
        return var_a;
    }
    
    /// @custom:selector    0xf2fde38b
    /// @custom:name        Unresolved_f2fde38b
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_f2fde38b(address arg0) public {
        require(address(msg.sender) == 0x1f490e99657cd08a058c6bb6cd81dd38f59e0e7a);
        require(!(address(arg0)) == 0);
        emit Event_8be0079c(address(stor_f), address(arg0));
        stor_f = (address(arg0)) | (uint96(stor_f));
    }
    
    /// @custom:selector    0x313ce567
    /// @custom:name        Unresolved_313ce567
    function Unresolved_313ce567() public view returns (bool) {
        bytes1 var_a = stor_g;
        return var_a;
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        Unresolved_8da5cb5b
    function Unresolved_8da5cb5b() public view returns (address) {
        address var_a = stor_f;
        return var_a;
    }
    
    /// @custom:selector    0x5c658165
    /// @custom:name        Unresolved_5c658165
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_5c658165(address arg0, address arg1) public view returns (uint256) {
        address var_b = arg0;
        var_b = arg1;
        return stor_map_h[var_b];
    }
    
    /// @custom:selector    0x40c10f19
    /// @custom:name        Unresolved_40c10f19
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_40c10f19(address arg0, bytes memory arg1) public {
        require(address(msg.sender) == 0x1f490e99657cd08a058c6bb6cd81dd38f59e0e7a);
        stor_map_a[var_a] = arg1;
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:name        Unresolved_a9059cbb
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_a9059cbb(address arg0, bytes memory arg1) public returns (bool) {
        require(!(address(arg0)) == 0);
        address var_a = msg.sender;
        require(!arg1 > stor_map_a[var_a]);
        var_a = msg.sender;
        if (!arg1 > stor_map_a[var_a]) {
            var_a = msg.sender;
            stor_map_a[var_a] = stor_map_a[var_a] - arg1;
            var_a = arg0;
            if (!(stor_map_a[var_a] + arg1) < stor_map_a[var_a]) {
                var_a = arg0;
                stor_map_a[var_a] = stor_map_a[var_a] + arg1;
                emit Event_ddf252ad(address(msg.sender), address(arg0), arg1);
                return 0x01;
            }
        }
    }
    
    /// @custom:selector    0xdd62ed3e
    /// @custom:name        Unresolved_dd62ed3e
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_dd62ed3e(address arg0, address arg1) public view returns (uint256) {
        var_a = arg1;
        return stor_map_a[var_a];
    }
    
    /// @custom:selector    0x27e235e3
    /// @custom:name        Unresolved_27e235e3
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_27e235e3(address arg0) public view returns (uint256) {
        address var_b = arg0;
        return stor_map_h[var_b];
    }
    
    /// @custom:selector    0xd21c8d55
    /// @custom:name        Unresolved_d21c8d55
    function Unresolved_d21c8d55() public view returns (address) {
        address var_a = stor_i;
        return var_a;
    }
    
    /// @custom:selector    0xff9913e8
    /// @custom:name        Unresolved_ff9913e8
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_ff9913e8(address arg0) public view returns (bool) {
        address var_b = arg0;
        address var_c = !(!bytes1(stor_map_h[var_b]));
        return var_c;
    }
    
    /// @custom:selector    0x11de19e7
    /// @custom:name        Unresolved_11de19e7
    function Unresolved_11de19e7() public view returns (address) {
        address var_a = stor_c;
        return var_a;
    }
    
    /// @custom:selector    0x4a0af68d
    /// @custom:name        Unresolved_4a0af68d
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_4a0af68d(address arg0) public returns (bool) {
        require(address(msg.sender) == (address(stor_i)));
        stor_e = (address(arg0)) | (uint96(stor_e));
        return 0;
    }
    
    /// @custom:selector    0x95d89b41
    /// @custom:name        Unresolved_95d89b41
    function Unresolved_95d89b41() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_j));
    }
    
    /// @custom:selector    0xade2de02
    /// @custom:name        Unresolved_ade2de02
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_ade2de02(address arg0) public returns (bool) {
        require(address(msg.sender) == 0x78322d0c5768c9ca370ddfc1d44db0fef3a6e051);
        stor_c = (address(arg0)) | (uint96(stor_c));
        return 0;
    }
    
    /// @custom:selector    0xe9543fa2
    /// @custom:name        Unresolved_e9543fa2
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_e9543fa2(address arg0) public pure returns (address) {
        return address(arg0);
    }
    
    /// @custom:selector    0x891e1ee0
    /// @custom:name        Unresolved_891e1ee0
    function Unresolved_891e1ee0() public view returns (address) {
        address var_a = stor_d;
        return var_a;
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:name        Unresolved_23b872dd
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg2 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_23b872dd(address arg0, address arg1, bytes memory arg2) public returns (bool) {
        require(!(address(arg1)) == 0);
        address var_a = arg0;
        require(!arg2 > stor_map_a[var_a]);
        var_a = msg.sender;
        require(!arg2 > stor_map_a[var_a]);
        var_a = arg0;
        if ((stor_map_a[var_a]) == 0x01) {
            var_a = arg0;
            if (!arg2 > stor_map_a[var_a]) {
                var_a = arg0;
                stor_map_a[var_a] = stor_map_a[var_a] - arg2;
                var_a = arg1;
                if (!(stor_map_a[var_a] + arg2) < stor_map_a[var_a]) {
                    var_a = arg1;
                    stor_map_a[var_a] = stor_map_a[var_a] + arg2;
                    var_a = msg.sender;
                    require((bytes1(stor_map_a[var_a])) == 0x01);
                    var_a = msg.sender;
                    stor_map_a[var_a] = stor_map_a[var_a] - arg2;
                    emit Event_ddf252ad(address(arg0), address(arg1), arg2);
                    return 0x01;
                }
            }
        }
    }
    
    /// @custom:selector    0x791f83eb
    /// @custom:name        Unresolved_791f83eb
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bool", "bytes", "bytes1", "bytes32", "int", "int256", "int8", "string", "uint", "uint256", "uint8"]
    function Unresolved_791f83eb(address arg0, bool arg1) public {
        require(address(msg.sender) == (address(stor_e)));
        address var_a = arg0;
        stor_map_a[var_a] = (arg1) | (uint248(stor_map_a[var_a]));
    }
    
    /// @custom:selector    0x095ea7b3
    /// @custom:name        Unresolved_095ea7b3
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_095ea7b3(address arg0, bytes memory arg1) public returns (bool) {
        var_a = arg0;
        stor_map_a[var_a] = arg1;
        emit Event_8c5be1e5(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0x06fdde03
    /// @custom:name        Unresolved_06fdde03
    function Unresolved_06fdde03() public view returns (bytes memory) {
        return string(rlp.encodePacked(stor_k));
    }
    
    /// @custom:selector    0x3177029f
    /// @custom:name        Unresolved_3177029f
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_3177029f(address arg0, bytes memory arg1) public returns (bool) {
        if (address(msg.sender) == (address(stor_e))) {
            require(address(msg.sender) == (address(stor_e)));
            stor_map_a[var_a] = arg1;
            return 0x01;
            return 0x01;
        }
    }
    
    /// @custom:selector    0x376d567c
    /// @custom:name        Unresolved_376d567c
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_376d567c(address arg0) public returns (bool) {
        require(address(msg.sender) == (address(stor_d)));
        stor_i = (address(arg0)) | (uint96(stor_i));
        return 0;
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        Unresolved_70a08231
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_70a08231(address arg0) public view returns (uint256) {
        address var_a = arg0;
        return stor_map_a[var_a];
    }
}