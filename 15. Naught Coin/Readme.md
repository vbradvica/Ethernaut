# Naught Coin
_difficulty 5/10_

NaughtCoin is an ERC20 token and you're already holding all of them. The catch is that you'll only be able to transfer them after a 10 year lockout period. Can you figure out how to get them out to another address so that you can transfer them freely? Complete this level by getting your token balance to 0.  
Things that might help  
- The ERC20 Spec
- The OpenZeppelin codebase

## Sources
```
pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

 contract NaughtCoin is StandardToken {
  
  using SafeMath for uint256;
  string public constant name = 'NaughtCoin';
  string public constant symbol = '0x0';
  uint public constant decimals = 18;
  uint public timeLock = now + 10 years;
  uint public INITIAL_SUPPLY = (10 ** decimals).mul(1000000);
  address public player;

  function NaughtCoin(address _player) public {
    player = _player;
    totalSupply_ = INITIAL_SUPPLY;
    balances[player] = INITIAL_SUPPLY;
    Transfer(0x0, player, INITIAL_SUPPLY);
  }
  
  function transfer(address _to, uint256 _value) lockTokens public returns(bool) {
    super.transfer(_to, _value);
  }

  // Prevent the initial owner from transferring tokens until the timelock has passed
  modifier lockTokens() {
    if (msg.sender == player) {
      require(now > timeLock);
      _;
    } else {
     _;
    }
  } 
} 
```

## Level author
Kyle Riley  
kyle@iosiro.com  
https://github.com/syncikin  
