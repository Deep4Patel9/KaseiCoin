pragma solidity ^0.5.0;

//  Import contracts from the OpenZeppelin library:
//    * `ERC20`
//    * `ERC20Detailed`
//    * `ERC20Mintable`
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

// Have contract inherit libraries
contract KaseiCoin is ERC20, ERC20Detailed, ERC20Mintable {

    // Create constructor for ERC20Detailed and mint initialSupply
    constructor(
        string memory name, // coin name
        string memory symbol, // coin symbol
        uint initialSupply // intial supply of coins to mint
        ) 
        ERC20Detailed(name, symbol, 18) public {

            mint(msg.sender, initialSupply);

    }
}