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
        // send() and transfer() are safe against reentrancy
        // they do not transfer the remaining gas
        // and they give just enough gas to execute a few instructions    
        // in the fallback function (no further call possible)
        payable(msg.sender).transfer(userBalance[msg.sender]);
        userBalance[msg.sender] = 0;
    }   
}
