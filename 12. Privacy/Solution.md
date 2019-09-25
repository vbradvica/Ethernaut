# Privacy solution

1. Open transaction on the `ropsten.etherscan.io`

2. Go to the "State Changes" tab and look at the data changed
```
0x000000000000000000000000000000000000000000000000000000c286ff0a01
0x859973068fce1f91dbc11565b4a325950c36e18211e339bb1c6d5c0a7af9e3fb
0xa47868d2b093ed1ea5d9c7a0098be2af316e2a7e5642a4ef0a83c87a23e5a1d7
0xb30aca730c04abca33bcf1bac726050b4f512ea0cad5395fd65002c54d037703
```

Looking at the contract code we can see several internal variables:  

```
bool public locked = true;
uint256 public constant ID = block.timestamp;
uint8 private flattening = 10;
uint8 private denomination = 255;
uint16 private awkwardness = uint16(now);
bytes32[3] private data;
```

Variables share 256 bits if they can fit. In the first storage space we have variables `bool locked` = 0x01, `uint8 flattening` = 0x0a, `uint8 denomination` = 0xff, and `uint16 awkwardness` = 0xc286. Constants don't use this storage.

Next three spaces are `bytes32[3]`. We will take the last one (index 2) and use only the first half.

3. Invoke `unlock` method using this parameter.  
`await contract.unlock("0xb30aca730c04abca33bcf1bac726050b")`  

4. Check if contract is unlocked.  
`await contract.locked()`  
false  

5. Submit instance 🎉 
