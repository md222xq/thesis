// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {
    mapping (address => uint) userBalance;
   
    function getBalance(address u) public view returns(uint) {
        return userBalance[u];
    }

    function addToBalance() public payable {
        userBalance[msg.sender] += msg.value;
    }   

    function withdrawBalance() public {

        payable(msg.sender).transfer(userBalance[msg.sender]);
        userBalance[msg.sender] = 0;
    }   
}
