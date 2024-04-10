// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract LCM {
    //this function calculates the LCM
    function lcm(uint256 a, uint256 b) public pure returns (uint256) {
        require(a > 0 && b > 0, "Require a possitive number");
        return (a * b) / gcm(a, b);
    }

    function gcm(uint256 a, uint256 b) internal pure returns (uint256) {
        while (b != 0) {
            uint256 c = b;
            b = a % b;
            a = c;
        }
        return a;
    }
}
