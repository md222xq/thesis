// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;
contract MidasShrapDummyToken is ERC20, Ownable, IMidasShrapDummyToken {
    constructor() ERC20("MidasShrapDummyToken", "MidasShrapDummyToken") {
    }

    function mint() external onlyOwner {
        _mint(msg.sender, 1e18);
    }
}
