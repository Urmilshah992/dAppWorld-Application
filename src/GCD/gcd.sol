// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract GCDTest {
    //this function calculates the GCD (Greatest Common Divisor)
    function gcd(uint256 a, uint256 b) public pure returns (uint256) {
        while (b != 0) {
            uint256 c = b;
            b = a % b;
            a = c;
        }
        return a;
    }
}
