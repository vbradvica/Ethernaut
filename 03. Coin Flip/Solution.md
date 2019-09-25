## Coin Flip Solution

Coin Flip contract calculates the result based on previous block. We can write a contract that will do the same calculations, and then invoke Coin Flip `flip` function using the calculated result. The function will be called during the same block, so the result will be the same.

1. Get current Coin Flip contract address:  
`contract.address`

2. Using Remix, deploy the CoinPrediction contract to the Ropsten network and pass your instance address as a parameter.

3. Invoke `flip` method ten times.

4. Check number of consecutive wins.
`web3.toDecimal(await contract.consecutiveWins())`
10

5. Submit Instance 🎉
