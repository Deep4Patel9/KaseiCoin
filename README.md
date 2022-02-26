# KaseiCoin

This contract is a way for people to exchange ETH for a new coin called KaseiCoin for theoritical use on Mars to purchase goods and recieve payments. This contract is ERC20 complient and has crowdsale features such as being able to set a goal that has to be reached in a certain time frame and if the goal is not reached within the alloted time the ETH used to purchase the coins will be refunded to the buyers. The timeframe is hardcoded to 24 weeks after deploying the contract but you can just as easily change the timeframe by accessing the KaseiCoinCrowdsale.sol file and scrolling down to the KaseiCoinCrowdsaleDeployer contract and finding where the KaseiCoinCrowdsale is being called and changing the final parameter to now + (timeframe). Just make sure that the contract compiles afterwards.

---

## Technologies

This contract is created using solidity with the pragma ^0.5.5. This contract uses the following imports (Note: will automatically download upon compiling contract):

* [ERC20](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol)

* [ERC20Detailed](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol)

* [ERC20Mintable](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol)

* [Crowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol)

* [MintedCrowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol)

* [CappedCrowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol)

* [TimedCrowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol)

* [RefundablePostDeliveryCrowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol)


---

## Evaluation Evidence

Screenshots of the solidity contracts being compiled:
![A screenshot of KaseiCoin Contract being compiled.](images/1_KaseiCoin_compile.png)<br>
![A screenshot of KaseiCoinCrowdsale Contract being compiled.](images/2_KaseiCoinCrowdsale_compile.png)<br>
![A screenshot of KaseiCoinCrowdsaleDeployer Contract being compiled.](images/3_KaseiCoinCrowdsaleDeployer_compile.png)<br>

After compiling the contract you can deploy it to a local Blockchain to test the functionality of the contract. To deploy the contract a few variables will be required (Note: You only need to deploy the KaseiCoinCrowdsaleDeployer contract): Coin Name, Coin Symbol, Beneficial wallet address, and the crowdsale goal. After deploying the KaseiCoinCrowdsaleDeployer located the addressed for the KaseiCoinCrowdsale and KaseiCoin under the KaseiCoinCrowdsaleDeployer contract and then just pull the contracts from the addresses.

Crowdsale Deployment and Retrieval Screenshots:
![A screenshot of KaseiCoinCrowdsaleDeployer Contract being deployed.](images/4_deploy_deployer.png)<br>
![A screenshot of Ganache contract creation.](images/4.5_ganache_contract_creation.png)<br>
![A screenshot of KaseiCoinCrowdsale Contract being retrieved.](images/5_KaseiCoinCrowdsale_load.png)<br>
![A screenshot of KaseiCoin Contract being retrieved.](images/6_KaseiCoin_load.png)<br>

Screenshots of buying tokens and balances for accounts that purchased:
![A screenshot of ganache account purchasing newly mint KAI.](images/7_buy_token_crowdsale.png)<br>
![A screenshot of ganache account purchasing newly mint KAI.](images/8_buy_token_crowdsale2.png)<br>
![A screenshot of ganache account purchasing newly mint KAI.](images/9_buy_token_crowdsale3.png)<br>
![A screenshot of ganache account balance of KAI.](images/10_balance_of_2nd.png)<br>
![A screenshot of ganache account balance of KAI.](images/11_balance_of_3rd.png)<br>
![A screenshot of totalsupply of KAI.](images/12_kaseiCoin_totalsup.png)<br>
![A screenshot of weiRaised by Crowdsale.](images/13_wei_raised.png)<br>


Once the allotted crowdsale time has passed the contract will prevent futher purchases and allow for refunds if goal is not reached:
![A screenshot of Error raisied because crowdsale expired.](images/14_error_close.png)<br>
![A screenshot of hasClosed variable and goal reached variable.](images/15_hasClosed_nogoal.png)<br>
![A screenshot of claim refund and then new balance.](images/16_claim_refund_2nd.png)<br>
![A screenshot of new balance after refund.](images/18_balance_2nd.png)<br>
![A screenshot of claim refund and then new balance.](images/17_claim_refund_3rd.png)<br>
![A screenshot of new balance after refund.](images/19_balance_3rd.png)<br>


---

## Contributors

Deep Patel -- Deep4Patel9@gmail.com

---

## License

MIT License

Copyright (c) 2022  
