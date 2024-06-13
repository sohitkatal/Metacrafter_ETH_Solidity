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
