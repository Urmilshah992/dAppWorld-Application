// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract MaxNumberContract {
    function findMaxNumber(
        uint256[] memory numbers
    ) external pure returns (uint256) {
        uint256 highest = numbers[0];
        for (uint256 i = 1; i < numbers.length; i++) {
            if (numbers[i] > highest) {
                highest = numbers[i];
            }
        }
        return highest;
    }
}
