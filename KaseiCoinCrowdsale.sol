pragma solidity ^0.5.5;

/*
Import KaseiCoin.sol and OpenZeppelin contracts for 
Crowdsale, 
MintedCrowdsale,
CappedCrowdsale, 
TimedCrowdsale, 
RefundablePostDeliveryCrowdsale
*/
import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";


// Have the KaseiCoinCrowdsale contract inherit the OpenZeppelin libraries
contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale {
    
    // Create contructor for Crowdsale, Capped, Timed, and Refundable and then initialize.
    constructor(
        uint rate,
        address payable wallet,
        KaseiCoin token,
        uint goal,
        uint open,
        uint close
    ) public
    Crowdsale(rate, wallet, token)
    CappedCrowdsale(goal)
    TimedCrowdsale(open, close)
    RefundableCrowdsale(goal) {

    }
}


contract KaseiCoinCrowdsaleDeployer {

    address public kaseiTokenAddress;
    address public kaseiCrowdsaleAddress;

    // Add the constructor.
    constructor(
        string memory name,
        string memory symbol,
        address payable wallet,
        uint goal
    ) public {

        // Create a new instance of the KaseiCoin contract.
        KaseiCoin token = new KaseiCoin(name, symbol, 0);

        // Assign the token contract’s address to the `kaseiTokenAddress` variable.
        kaseiTokenAddress = address(token);
        
        // Create a new instance of the `KaseiCoinCrowdsale` contract
        KaseiCoinCrowdsale kaseiCrowdsale = new KaseiCoinCrowdsale(1, wallet, token, goal, now, now + 24 weeks);
        
        // Assign the `KaseiCoinCrowdsale` contract’s address to the `kaseiCrowdsaleAddress` variable.
        kaseiCrowdsaleAddress = address(kaseiCrowdsale);

        // Set the `KaseiCoinCrowdsale` contract as a minter
        // Have the `KaseiCoinCrowdsaleDeployer` renounce its minter role.
        token.addMinter(kaseiCrowdsaleAddress);
        token.renounceMinter();
    }
 
}