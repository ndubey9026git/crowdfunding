// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Crowdfunding {
    address public owner;
    uint public goal;
    uint public totalFunds;
    mapping(address => uint) public contributions;

    constructor(uint _goal) {
        owner = msg.sender;
        goal = _goal;
    }

    // Function 1: Contribute to the campaign
    function contribute() external payable {
        require(msg.value > 0, "Contribution must be greater than zero");
        contributions[msg.sender] += msg.value;
        totalFunds += msg.value;
    }

    // Function 2: Withdraw funds (only if goal reached)
    function withdraw() external {
        require(msg.sender == owner, "Only owner can withdraw");
        require(totalFunds >= goal, "Funding goal not reached");
        payable(owner).transfer(totalFunds);
        totalFunds = 0;
    }
}
