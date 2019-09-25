# Telephone solution

1. Get instance address
`contract.instance`

2. Using Remix, deploy the `StealYourPhone.sol`

3. Invoke the `changeOwner` method and pass instance address as a parameter  
This works because the `tx.origin` will be the user that invoked the transaction, while the `msg.sender` will be the last contract that forwarded the function call. 

4. Check contract owner
`await contract.owner()`

4. Submit instance 🎉
