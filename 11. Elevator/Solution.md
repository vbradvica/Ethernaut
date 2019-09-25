# Elevator solution

1. Get the `Elevator` instance address.  
`instance`

2. Using Remix, deploy the `LyingTower.sol` contract with the address of the `Elevator` as a parameter.  

3. Invoke `goToTop` method of the `LyingTower` contract. The `isLastFloor` method changes state despite being declared as a view method. This will allow the elevator to reach the top floor.  

4. Check if the elevator is at the top.  
`await contract.top()`  
true  

5. Submit instance 🎉 
