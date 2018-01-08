pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BitcoinBug is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BitcoinBug(address _owner)  UpgradeableToken(_owner) {
    name = "BitcoinBug";
    symbol = "BTB";
    totalSupply = 50000000000000;
    decimals = 6;

    balances[_owner] = totalSupply;
  }
}