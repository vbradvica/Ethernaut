# Vault solution

1. Open contract address on Etherscan

2. Go to "State Changes" tab and find StorageAddress changes on contract creation

3. Decode storage changes to find password.  
`web3.toAscii('0x412076657279207374726f6e67207365637265742070617373776f7264203a29')`  
"A very strong secret password :)"  

4. Unlock contract  
`await contract.unlock("A very strong secret password :)")`  

5. Check if contract is locked.  
`await contract.locked()`  
false  

6. Submit instance 🎉  
