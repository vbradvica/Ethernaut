# Fallback
_difficulty 1/10_  

Look carefully at the contract's code below.


You will beat this level if  
1. you claim ownership of the contract
2. you reduce its balance to 0


Things that might help  
- How to send ether when interacting with an ABI
- How to send ether outside of the ABI
- Converting to and from wei/ether units -see help() command-
- Fallback methods

## Sources

```
pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';
import 'openzeppelin-solidity/contracts/math/SafeMath.sol';

contract Fallback is Ownable {
  
  using SafeMath for uint256;
  mapping(address => uint) public contributions;

  function Fallback() public {
    contributions[msg.sender] = 1000 * (1 ether);
  }

  function contribute() public payable {
    require(msg.value < 0.001 ether);
    contributions[msg.sender] = contributions[msg.sender].add(msg.value);
    if(contributions[msg.sender] > contributions[owner]) {
      owner = msg.sender;
    }
  }

  function getContribution() public view returns (uint) {
    return contributions[msg.sender];
  }

  function withdraw() public onlyOwner {
    owner.transfer(this.balance);
  }

  function() payable public {
    require(msg.value > 0 && contributions[msg.sender] > 0);
    owner = msg.sender;
  }
}
```

## Level author  
Alejandro Santander  
palebluedot@gmail.com  
https://github.com/ajsantander