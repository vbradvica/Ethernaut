# King solution

1. Check current prize level  
`web3.fromWei(await contract.prize())`  
"1"

2. Use remix to deploy `KingKiller.sol` contract, include 1Eth to takeover current King position

3. Check if we are the current king.  
`await contract.king()`  

3. Invoke `kill` function on the `KingKiller` contract. This will prevent the King contract from paying the prize back to us, and break it.

4. Submit instance 🎉  
