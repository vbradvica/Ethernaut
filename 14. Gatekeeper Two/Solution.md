# Gatekeeper Two Solution

1. `require(msg.sender != tx.origin);`  
We need to use a proxy contract that will call the `enter` function.

2. The `extcodesize` has to equal 0.  
```
  uint x;
  assembly { x := extcodesize(caller) }
  require(x == 0);
```
>During initialization code execution, EXTCODESIZE on the address should return zero, which is the length of the code of the account while CODESIZE should return the length of the initialization code.

If we call the `enter` function inside the constructor of our contract, the condition will be satisfied.

3. `uint64(keccak256(msg.sender)) ^ uint64(_gateKey) == uint64(0) - 1`  
The entire left side has to equal 0xFF...FF. We can calculate this by using the following line to get the key:  
`uint64(keccak256(address(this))) ^ (uint64(0) - 1)`  

4. Deploy the `GateKeyTwo.sol`. It will automatically unlock the instance.

5. Check if `player` is the entrant.  
`player === (await contract.entrant())`  
true

6. Submit instance 🎉 
