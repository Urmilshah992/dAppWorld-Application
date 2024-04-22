// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CryptoChronicleSubscription {
    mapping(address => uint256) public subscriptionExpiry;

    constructor() {}

    function subscribe(uint256 duration) external payable {
        require(msg.value == 1000 wei, "Insufficient payment");

        uint256 expiry = block.timestamp + duration;
        if (expiry > subscriptionExpiry[msg.sender]) {
            subscriptionExpiry[msg.sender] = expiry;
        }
    }

    function cancelSubscription() external {
        subscriptionExpiry[msg.sender] = 0;
    }

    function isSubscribed(address user) external view returns (bool) {
        return subscriptionExpiry[user] > block.timestamp;
    }
}
