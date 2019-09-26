# Preservation solution

Solidity libraries can modify invoking contracts code if called with `delegatecall` if they are defined as contracts and not as libraries.

1. Using Remix, deploy the `PreservationHack.sol` that will be injected into timeZone1Library storage space.

2. Invoke `hack` method of the `PreservationHack` contract.

3. Check if player is the owner of the contract.  
`player === (await contract.owner())`  
true  

4. Submit instance 🎉 
