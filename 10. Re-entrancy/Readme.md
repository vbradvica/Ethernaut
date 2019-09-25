# Re-entrancy
_difficulty 6/10_

The goal of this level is for you to steal all the funds from the contract.  


Things that might help:  
- Untrusted contracts can execute code where you least expect it.  
- Fallback methods  
- Throw/revert bubbling  
- Sometimes the best way to attack a contract is with another contract.  
- See the Help page above, section "Beyond the console"  

# Sources

```
pragma solidity ^0.4.18;

import 'openzeppelin-solidity/contracts/math/SafeMath.sol';

contract Reentrance {
  
  using SafeMath for uint256;
  mapping(address => uint) public balances;

  function donate(address _to) public payable {
    balances[_to] = balances[_to].add(msg.value);
  }

  function balanceOf(address _who) public view returns (uint balance) {
    return balances[_who];
  }

  function withdraw(uint _amount) public {
    if(balances[msg.sender] >= _amount) {
      if(msg.sender.call.value(_amount)()) {
        _amount;
      }
      balances[msg.sender] -= _amount;
    }
  }

  function() public payable {}
}
```

# Level author  
Alejandro Santander  
palebluedot@gmail.com  
https://github.com/ajsantander  
