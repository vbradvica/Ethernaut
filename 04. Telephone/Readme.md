# Telephone
_difficulty 1/10_

Claim ownership of the contract below to complete this level.  
Things that might help  
- See the Help page above, section "Beyond the console"

## Sources

```
pragma solidity ^0.4.18;

contract Telephone {

  address public owner;

  function Telephone() public {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}
```

## Level author  
Kyle Riley  
kyle@iosiro.com  
https://github.com/syncikin  
