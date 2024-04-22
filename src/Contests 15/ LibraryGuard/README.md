### In a thriving city, a digital library serves as a treasure trove of knowledge for its residents. As the library grows, ensuring proper access becomes crucial.

### Introducing "LibraryGuard," a smart contract-based access control system. Managed by the librarian, it regulates access based on user roles and permissions. Admins assist in overseeing operations, while users gain access as they engage more within the community. With LibraryGuard, the digital library maintains order, protects resources, and fosters a vibrant learning environment for all.

## Your smart contract must contain the following public functions / constructor:

## Input:

```
transferOwnership(address _newOwner) : This functions is used to update the owner of the smart contract. Only current owner can update transfer the ownership of this contract.

addAdmin(address _admin) : This function is used to add new admins and only be called by the current owner of the contract.

removeAdmin(address _admin) : This function is used to remove the admin and only be called by the current owner of the contract.

updateUserRole(address _user, uint256 _role) :This function is used to assign the role to user and only be called by the admins of the contract.

```

## Output:

```
contractOwner() returns (address): This function returns the current owner of the smart contract.

isAdmin(address _user) returns (bool) : This function returns true if the user is admin otherwise returns false.

userRole(address _user) returns (uint) : This function returns the id of the role of user.

```
