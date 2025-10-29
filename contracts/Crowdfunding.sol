// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Crowdfunding {
    address public owner;
    uint public goal;
    uint public totalFunds;
    uint public deadline;
    mapping(address => uint) public contributions;

    constructor(uint _goal) {
        owner = msg.sender;
        goal = _goal;
    }

    // Function 1: Contribute to the campaign
    function contribute() external payable {
        require(block.timestamp < deadline || deadline == 0, "Campaign has ended");
        require(msg.value > 0, "Contribution must be greater than zero");
        contributions[msg.sender] += msg.value;
        totalFunds += msg.value;
    }

    // Function 2: Withdraw funds (only if goal reached)
    function withdraw() external {
        require(msg.sender == owner, "Only owner can withdraw");
        require(totalFunds >= goal, "Funding goal not reached");
        require(block.timestamp >= deadline, "Deadline not reached yet");
        payable(owner).transfer(totalFunds);
        totalFunds = 0;
    }

    // Function 3: Set campaign deadline (only once by owner)
    function setDeadline(uint _deadline) external {
        require(msg.sender == owner, "Only owner can set deadline");
        require(deadline == 0, "Deadline already set");
        require(_deadline > block.timestamp, "Deadline must be in the future");
        deadline = _deadline;
    }

    // Function 4: Refund if goal not met after deadline
    function refund() external {
        require(block.timestamp > deadline, "Campaign still active");
        require(totalFunds < goal, "Goal was reached");
        uint contributed = contributions[msg.sender];
        require(contributed > 0, "No contributions to refund");

        contributions[msg.sender] = 0;
        payable(msg.sender).transfer(contributed);
    }
}
