# Metacrafter_ETH_Solidity
This Solidity program is a simple program that demonstrates how the contract(MyToken) allows the creation (mint) and destruction (burn) of tokens while keeping track of the total supply and amount of coins, with a method to prevent burning more tokens than are available in an address's balance.
# Description
the MyToken contract provides a basic implementation of a token on the Ethereum blockchain. It includes functionalities to mint new tokens, burn existing tokens, and check the token balance of any account. This simple contract serves as a foundation for understanding more complex token standards like ERC-20.
# Getting Started
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension. Copy and paste the following code into the file:
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here  
    string public coinName = "ETH_Coin";
    string public coinAbbrv = "ETA_coin";
    uint public coinSupply =0;

    // mapping variable here
    mapping(address => uint) public accountBalances;

    // mint function
    function mint(address _address, uint amount) public {
        coinSupply += amount;
        accountBalances[_address] += amount;
    }

    // burn function
    function burn(address _address, uint amount) public {
        if (accountBalances[_address] >= amount) {
        coinSupply -= amount;
        accountBalances[_address] -= amount;
    }
		}
	}
Set the token name to "ETH_coin". 
Set the token symbol to "ETA_coin". 
Initialize the total token supply to 0. 
Create a mapping to store token accountbalances for each address. 

Mint Tokens:

Input: address _address, uint amount. 
Increase totalSupply by amount. 
Increase balances[_address] by amount.

Burn Tokens:

Input: address _address, uint amount. 
Ensure balances[_address] is at least amount. 
Decrease totalSupply by amount. 
Decrease balances[_address] by amount. 

Check accountBalance:

Input: address _address. 
Output: Return accountbalances[_address]. 
This brief algorithm outlines the main functionalities of the MyToken contract.


