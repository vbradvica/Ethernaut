# Re-entrancy solution

1. Get current contract address.  
`contract.address`  

2. Using Remix, deploy `ReentrancyAttacker.sol` with current contract address as a parameter.  

3. Donate 1Eth to the address of the `ReentrancyAttacker` contract.  

4. Call the `withdraw` function. This function will withdraw the donated Ether. The `Reentrancy` contract will try to send Ether to the calling contract address and will invoke the payable fallback function that will attempt to withdraw again, until all funds are stolen.  

5. Check `Reentrancy` contract balance.  
`fromWei(await getBalance(contract.address))` 
0 

5. Call the `payday` function to get Eth from the `ReentrancyAttacker` contract so it's not stuck there forever.

6. Submit instance 🎉   
