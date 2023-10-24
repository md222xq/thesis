// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Reentrance {
    mapping (address => uint) userBalance;
   
    function getBalance(address u) public view returns(uint) {
        return userBalance[u];
    }

    function addToBalance() public payable {
        userBalance[msg.sender] += msg.value;
    }   

    function withdrawBalance() public {
        // to protect against re-entrancy, the state variable
        // has to be changed before the call
        uint amount = userBalance[msg.sender];
        userBalance[msg.sender] = 0;
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed.");
    }   
}
