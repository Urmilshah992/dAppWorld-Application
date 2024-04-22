// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LibraryGuard {
    address public owner;
    mapping(address => bool) public admins;
    mapping(address => uint256) public userRoles;

    constructor() {
        owner = msg.sender;
        admins[msg.sender] = true;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    modifier onlyAdmin() {
        require(admins[msg.sender], "Only admin can call this function");
        _;
    }

    function contractOwner() public view returns (address) {
        return owner;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }

    function addAdmin(address _admin) public onlyOwner {
        admins[_admin] = true;
    }

    function removeAdmin(address _admin) public onlyOwner {
        require(_admin != owner, "Owner cannot be removed");
        admins[_admin] = false;
    }

    function updateUserRole(address _user, uint256 _role) public onlyAdmin {
        userRoles[_user] = _role;
    }

    function isAdmin(address _user) public view returns (bool) {
        return admins[_user];
    }

    function userRole(address _user) public view returns (uint) {
        return userRoles[_user];
    }
}
