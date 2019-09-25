pragma solidity ^0.4.18;

contract GiverOfMoney {
  address _forcee;

  function Forcerer(address forcee) public {
    _forcee = forcee;
  }

  function() public payable {
  }

  function kill() public {
    selfdestruct(_forcee);
  }

  function balance() public view returns (uint256) {
    return address(this).balance;
  }
}