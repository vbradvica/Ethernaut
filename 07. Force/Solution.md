# Force solution

Contracts will dump their ether on anyone when destroyed. Let's use that.  

1. Get current contract address.  
`contract.address`  

2. Use Remix to deploy `GiverOfMoney.sol` with current contract address as parameter.  

3. Send transaction and give ether to the `GiverOfMoney` using the fallback function.  

4. Invoke `kill` function on the `GiverOfMoney`.  

5. Check balance of contract.  
`await getBalance(contract.address)`  
0.001  

6. Submit instance 🎉
