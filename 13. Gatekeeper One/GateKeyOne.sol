pragma solidity ^0.4.18;

contract GateKeyOne {
  GatekeeperOne _gate;

  function GateKeyOne(address gate) public {
    _gate = GatekeeperOne(gate);
  }

  function enter() public {
    // solium-disable-next-line security/no-tx-origin
    bytes8 gateKey = bytes8(tx.origin) & 0xFFFFFFFF0000FFFF;
    _gate.enter.gas(98507)(gateKey);
  }
}

