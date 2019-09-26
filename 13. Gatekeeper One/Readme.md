# Gatekeeper One
_difficulty 5/10_

Make it past the gatekeeper and register as an entrant to pass this level.  


Things that might help:  
- Remember what you've learned from the Telephone and Token levels.  
- You can learn more about the `msg.gas` special variable, or its preferred alias `gasleft()`, in Solidity's documentation (see [here](http://solidity.readthedocs.io/en/v0.4.23/units-and-global-variables.html) and [here](http://solidity.readthedocs.io/en/v0.4.23/control-structures.html#external-function-calls)).


# Sources
```
pragma solidity ^0.4.18;

import 'openzeppelin-solidity/contracts/math/SafeMath.sol';

contract GatekeeperOne {

  using SafeMath for uint256;
  address public entrant;

  modifier gateOne() {
    require(msg.sender != tx.origin);
    _;
  }

  modifier gateTwo() {
    require(msg.gas.mod(8191) == 0);
    _;
  }

  modifier gateThree(bytes8 _gateKey) {
    require(uint32(_gateKey) == uint16(_gateKey));
    require(uint32(_gateKey) != uint64(_gateKey));
    require(uint32(_gateKey) == uint16(tx.origin));
    _;
  }

  function enter(bytes8 _gateKey) public gateOne gateTwo gateThree(_gateKey) returns (bool) {
    entrant = tx.origin;
    return true;
  }
}
```


# Level author
0age  
0age@protonmail.com  
https://github.com/0age  
