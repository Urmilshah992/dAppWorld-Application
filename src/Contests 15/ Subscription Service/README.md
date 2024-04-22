# Subscription Service

### In a fast-paced crypto market, being well-informed is key. Enter CryptoChronicle, a subscription-based service offering timely updates and expert insights. To make access seamless, they're developing a smart contract-based subscription system. Users can choose plans, subscribe, and manage their status on the blockchain. With CryptoChronicle, staying ahead in the crypto world has never been easier.

## Your smart contract must contain the following public functions / constructor:

## Input:

```
subscribe(uint256 duration) : This function is used to subscribe the service for a duration. duration is defined in seconds. The value for activating the service is 1000 wei.

cancelSubscription() : This function is used to cancel the subscription. There is no refund policy.
```

## OutPut:

```
isSubscribed(address user) returns (bool): This function returns the current status of the subscription for particular user.
```
