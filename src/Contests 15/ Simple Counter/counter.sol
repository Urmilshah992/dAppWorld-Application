// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CommunityCounter {
    mapping(uint256 => uint256) totalCounterperAnnouncement;

    function incrementCounter(uint256 announcement_id) public {
        require(announcement_id > 0, "Not Valid ID");
        uint256 count = 1;
        totalCounterperAnnouncement[announcement_id] += count;
    }

    function viewCounter(uint256 announcement_id) public view returns (uint256) {
        return totalCounterperAnnouncement[announcement_id];
    }
}
