# GatekeeperOne solution

We have three gates to pass.

1. `msg.sender != tx.origin`  
We need to use a different contract to proxy entrance attempts.  

2. `msg.gas.mod(8191) == 0`  
We need to debug the transaction and take note of gas spent in the moment when we calculate this modifier. This is calculated by debugging contract code in Remix JavaScript VM.  

3. Several bitmasking conditions:  


`uint32(_gateKey) == uint16(_gateKey)`  
- `0x11111111` == `0x1111`  
- use mask `0x0000FFFF`  


`uint32(_gateKey) == uint64(_gateKey)`
- `0x11111111` == `0x1111111111111111`  
- use mask `0xFFFFFFFF0000FFFF`  


`uint32(_gateKey) == uint16(tx.origin)`  
- use `bytes8(tx.origin)` as key  
- use mask `0xFFFFFFFF0000FFFF`  

4. Now we know how to calculate gatekey:  
`bytes8 gateKey = bytes8(tx.origin) & 0xFFFFFFFF0000FFFF;`  

5. Using Remix, deploy `GateKeyOne.sol`  

6. Invoke `enter` method of the `GateKeyOne` contract.

7. Check if contract is unlocked.  
`player === (await contract.entrant())`  
true  

8. Submit instance 🎉   
