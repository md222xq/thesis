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
    
    bytes public stor_e;
    bytes public stor_i;
    address public stor_h;
    bytes32 public stor_c;
    bytes32 public stor_f;
    bytes32 public stor_g;
    mapping(address => bytes32) public stor_map_b;
    mapping(bytes32 => bytes32) public stor_map_a;
    mapping(bytes32 => bytes32) public stor_map_d;
    
    event Event_8c5be1e5();
    event Event_ddf252ad();
    
    /// @custom:selector    0x095ea7b3
    /// @custom:name        Unresolved_095ea7b3
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_095ea7b3(address arg0, bytes memory arg1) public payable returns (bool) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        require(!(address(msg.sender) == 0), "ERC20: approve from the zero address");
        require(!(address(arg0) == 0), "ERC20: approve to the zero address");
        var_g = arg0;
        stor_map_a[var_g] = arg1;
        emit Event_8c5be1e5(address(msg.sender), address(arg0), arg1);
        return 0x01;
    }
    
    /// @custom:selector    0x6261a5d6
    /// @custom:name        Unresolved_6261a5d6
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_6261a5d6(address arg0) public view payable returns (bool) {
        require(arg0 == (address(arg0)));
        address var_b = arg0;
        address var_c = !(!bytes1(stor_map_b[var_b]));
        return var_c;
    }
    
    /// @custom:selector    0x3685d419
    /// @custom:name        Unresolved_3685d419
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_3685d419(address arg0) public payable {
        require(arg0 == (address(arg0)));
        require(address(stor_c) == (address(msg.sender)), "Ownable: caller is not the owner");
        address var_a = arg0;
        stor_map_d[var_a] = (0x01) | (uint248(stor_map_d[var_a]));
    }
    
    /// @custom:selector    0x313ce567
    /// @custom:name        Unresolved_313ce567
    function Unresolved_313ce567() public pure payable returns (uint256) {
        return 0x09;
    }
    
    /// @custom:selector    0xa0712d68
    /// @custom:name        Unresolved_a0712d68
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_a0712d68(bytes memory arg0) public payable {
        require(arg0 == arg0);
        if (address(stor_c) == (address(msg.sender))) {
            address var_a = stor_c;
            if (!stor_map_d[var_a] > (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff - arg0)) {
                var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                stor_map_d[var_a] = stor_map_d[var_a] + arg0;
                require(var_a == (address(msg.sender)), "Ownable: caller is not the owner");
            }
        }
    }
    
    /// @custom:selector    0x8da5cb5b
    /// @custom:name        Unresolved_8da5cb5b
    function Unresolved_8da5cb5b() public view payable returns (address) {
        address var_a = stor_c;
        return var_a;
    }
    
    /// @custom:selector    0xdd62ed3e
    /// @custom:name        Unresolved_dd62ed3e
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_dd62ed3e(address arg0, address arg1) public pure payable {
        require(arg0 == (address(arg0)));
        if (arg1 == (address(arg1))) {
        }
    }
    
    /// @custom:selector    0x98985331
    /// @custom:name        Unresolved_98985331
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_98985331(bytes memory arg0) public payable {
        require(arg0 == arg0);
        require(address(stor_c) == (address(msg.sender)), "Ownable: caller is not the owner");
        stor_e = arg0;
    }
    
    /// @custom:selector    0x06fdde03
    /// @custom:name        Unresolved_06fdde03
    function Unresolved_06fdde03() public pure payable returns (bytes memory) {
        var_a = 0x40 + var_a;
        if (!0 > var_a.length) {
            return abi.encodePacked((var_a + 0x20) - var_a, var_a.length);
            return abi.encodePacked((var_a + 0x20) - var_a, var_a.length);
        }
        if (!0x20 > var_a.length) {
            return abi.encodePacked((var_a + 0x20) - var_a, var_a.length, var_k);
            return abi.encodePacked((var_a + 0x20) - var_a, var_a.length, var_k);
        }
    }
    
    /// @custom:selector    0x18160ddd
    /// @custom:name        Unresolved_18160ddd
    function Unresolved_18160ddd() public view payable returns (uint256) {
        return stor_f;
    }
    
    /// @custom:selector    0xa9059cbb
    /// @custom:name        Unresolved_a9059cbb
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_a9059cbb(address arg0, bytes memory arg1) public payable returns (bool) {
        require(arg0 == (address(arg0)));
        require(arg1 == arg1);
        address var_a = msg.sender;
        require(bytes1(stor_map_d[var_a]), "ERC20: transfer from the zero address");
        require(!(bytes1(stor_map_d[var_a])), "ERC20: transfer from the zero address");
        require(!0x01, "ERC20: transfer from the zero address");
        return 0x01;
        require(!(address(msg.sender) == 0), "ERC20: transfer from the zero address");
        require(!(address(arg0)) == 0);
        require(address(stor_g).code.length);
        (bool success, bytes memory ret0) = address(stor_g).staticcall(abi.encode(0x0902f1ac00000000000000000000000000000000000000000000000000000000));
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x60);
        require(var_i == (uint112(var_i)));
        require(var_j == (uint112(var_j)));
        require(var_k == (uint32(var_k)));
        require(!(uint112(var_i)) > 0);
        require(!(uint112(var_j)) > 0);
        require(address(stor_g).code.length);
        (bool success, bytes memory ret0) = address(stor_g).staticcall(abi.encode(0x0902f1ac00000000000000000000000000000000000000000000000000000000));
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x60);
        require(var_i == (uint112(var_i)));
        require(var_j == (uint112(var_j)));
        require(var_k == (uint32(var_k)));
        require(address(stor_h).code.length);
        (bool success, bytes memory ret0) = address(stor_h).staticcall(abi.encode(0xad5c464800000000000000000000000000000000000000000000000000000000));
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_i == (address(var_i)));
        require(address(stor_g).code.length);
        (bool success, bytes memory ret0) = address(stor_g).staticcall(abi.encode(0x0dfe168100000000000000000000000000000000000000000000000000000000));
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!(((var_e + ret0.length) - var_e) < 0x20), "ERC20: transfer amount exceeds balance");
        require(var_i == (address(var_i)), "ERC20: transfer amount exceeds balance");
        require(!(address(var_i) == (address(var_i))), "ERC20: transfer amount exceeds balance");
        require(address(msg.sender) == (address(stor_h)), "ERC20: transfer amount exceeds balance");
        require(!(address(msg.sender) == (address(stor_h))), "ERC20: transfer amount exceeds balance");
        var_a = arg0;
        require(!(stor_map_d[var_a] > (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff - arg1)), "ERC20: transfer amount exceeds balance");
        var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        stor_map_d[var_a] = stor_map_d[var_a] + arg1;
        require(address(arg0) == (address(stor_h)), "ERC20: transfer amount exceeds balance");
        require(!(address(arg0) == (address(stor_g))), "ERC20: transfer amount exceeds balance");
        var_a = msg.sender;
        require(!(stor_map_d[var_a] < arg1), "ERC20: transfer amount exceeds balance");
        var_a = msg.sender;
        if (!stor_map_d[var_a] < arg1) {
            var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            stor_map_d[var_a] = stor_map_d[var_a] - arg1;
            var_a = arg0;
            if (!stor_map_d[var_a] > (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff - arg1)) {
                var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                stor_map_d[var_a] = stor_map_d[var_a] + arg1;
                emit Event_ddf252ad(address(msg.sender), address(arg0), arg1);
                return 0x01;
            }
        }
        var_a = msg.sender;
        if (!stor_map_d[var_a] > (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff - arg1)) {
        }
        if (!(address(arg0)) == (address(stor_h))) {
        }
        if (address(arg0) == (address(stor_h))) {
        }
        if (!(address(msg.sender)) == (address(stor_g))) {
        }
        if (address(msg.sender) == (address(stor_h))) {
            if (!(address(msg.sender)) == (address(stor_h))) {
                var_a = arg0;
                if (!stor_map_d[var_a] > (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff - arg1)) {
                }
                if (address(arg0) == (address(stor_h))) {
                    if (!(address(arg0)) == (address(stor_g))) {
                        var_a = msg.sender;
                        if (!stor_map_d[var_a] < arg1) {
                        }
                        var_a = msg.sender;
                        if (!stor_map_d[var_a] > (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff - arg1)) {
                        }
                    }
                    if (!(address(arg0)) == (address(stor_h))) {
                    }
                }
            }
            if (!(address(msg.sender)) == (address(stor_g))) {
            }
        }
        var_a = msg.sender;
        if (!stor_map_d[var_a] < arg1) {
        }
        if (!(uint112(var_i)) > 0) {
        }
        if (address(msg.sender) == (address(stor_h))) {
            if (!(address(msg.sender)) == (address(stor_h))) {
                require(address(msg.sender) == (address(stor_h)));
            }
            require(!(address(msg.sender)) == (address(stor_h)));
            require(address(arg0) == (address(stor_h)));
            require(!(address(arg0)) == (address(stor_g)));
        }
        require(address(stor_g).code.length);
        (bool success, bytes memory ret0) = address(stor_g).staticcall(abi.encode(0x0902f1ac00000000000000000000000000000000000000000000000000000000));
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x60);
        require(var_i == (uint112(var_i)));
        require(var_j == (uint112(var_j)));
        require(var_k == (uint32(var_k)));
        require(address(stor_h).code.length);
        (bool success, bytes memory ret0) = address(stor_h).staticcall(abi.encode(0xad5c464800000000000000000000000000000000000000000000000000000000));
        var_e = var_e + (uint248(ret0.length + 0x1f));
        require(!((var_e + ret0.length) - var_e) < 0x20);
        require(var_i == (address(var_i)));
        require(address(stor_g).code.length);
        (bool success, bytes memory ret0) = address(stor_g).staticcall(abi.encode(0x0dfe168100000000000000000000000000000000000000000000000000000000));
        var_e = var_e + (uint248(ret0.length + 0x1f));
        if (!((var_e + ret0.length) - var_e) < 0x20) {
        }
        if (!(address(arg0)) == (address(stor_h))) {
        }
        if (!(address(msg.sender)) == (address(stor_g))) {
        }
        var_a = arg0;
        if (!stor_map_d[var_a]) {
        }
    }
    
    /// @custom:selector    0x23b872dd
    /// @custom:name        Unresolved_23b872dd
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    /// @param              arg1 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_23b872dd(address arg0, address arg1) public pure payable {
        require(arg0 == (address(arg0)));
        if (arg1 == (address(arg1))) {
        }
    }
    
    /// @custom:selector    0x42966c68
    /// @custom:name        Unresolved_42966c68
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_42966c68(bytes memory arg0) public payable {
        require(arg0 == arg0);
        if (address(stor_c) == (address(msg.sender))) {
            address var_a = stor_c;
            if (!stor_map_d[var_a] < arg0) {
                var_a = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                stor_map_d[var_a] = stor_map_d[var_a] - arg0;
                require(var_a == (address(msg.sender)), "Ownable: caller is not the owner");
            }
        }
    }
    
    /// @custom:selector    0x95d89b41
    /// @custom:name        Unresolved_95d89b41
    function Unresolved_95d89b41() public pure payable returns (bytes memory) {
        var_a = 0x40 + var_a;
        if (!0 > var_a.length) {
            return abi.encodePacked((var_a + 0x20) - var_a, var_a.length);
            return abi.encodePacked((var_a + 0x20) - var_a, var_a.length);
        }
        if (!0x20 > var_a.length) {
            return abi.encodePacked((var_a + 0x20) - var_a, var_a.length, var_k);
            return abi.encodePacked((var_a + 0x20) - var_a, var_a.length, var_k);
        }
    }
    
    /// @custom:selector    0x52390c02
    /// @custom:name        Unresolved_52390c02
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_52390c02(address arg0) public payable {
        require(arg0 == (address(arg0)));
        require(address(stor_c) == (address(msg.sender)), "Ownable: caller is not the owner");
        address var_a = arg0;
        stor_map_d[var_a] = (0) | (uint248(stor_map_d[var_a]));
    }
    
    /// @custom:selector    0x70a08231
    /// @custom:name        Unresolved_70a08231
    /// @param              arg0 ["address", "bytes", "bytes20", "bytes32", "int", "int160", "int256", "string", "uint", "uint160", "uint256"]
    function Unresolved_70a08231(address arg0) public view payable returns (uint256) {
        require(arg0 == (address(arg0)));
        address var_a = arg0;
        return stor_map_d[var_a];
    }
    
    /// @custom:selector    0xb59c0974
    /// @custom:name        Unresolved_b59c0974
    function Unresolved_b59c0974() public payable {
        require(address(stor_c) == (address(msg.sender)));
        require(address(stor_g).code.length);
        (bool success, bytes memory ret0) = address(stor_g).call{ value: 0 }(abi.encode(0xfff6cae900000000000000000000000000000000000000000000000000000000));
    }
    
    /// @custom:selector    0x3fb5c1cb
    /// @custom:name        Unresolved_3fb5c1cb
    /// @param              arg0 ["bytes", "uint256", "int256", "string", "bytes32", "uint", "int"]
    function Unresolved_3fb5c1cb(bytes memory arg0) public payable {
        require(arg0 == arg0);
        require(address(stor_c) == (address(msg.sender)), "Ownable: caller is not the owner");
        stor_i = arg0;
    }
}