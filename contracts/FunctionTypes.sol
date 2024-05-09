// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract FunctionTypes{
  uint256 public number = 5;

  function add() external {
    number = number + 1;
  }

  function addPure(uint256 _number) pure external returns (uint256 new_number) {
    new_number = _number + 1;
  }

  function addView() view external returns (uint256 new_number) {
    new_number = number + 1;
  }

  function minus() internal {
    number = number - 1;
  }

  function minusCall() external {
    minus();
  }

  function minusPayable() external payable returns(uint256 balance) {
    minus();
    balance = address(this).balance;
  }

  function returnResults() internal pure returns(string memory apple, uint256 applePrice, string memory banana, uint256 bananaPrice) {
    apple = 'apple';
    applePrice = 10;
    banana = 'banana';
    bananaPrice = 20;
  }

  function returnResultsCall() external pure returns(string memory, uint256, string memory, uint256) {
    string memory apple;
    string memory banana;
    uint applePrice;
    uint bananaPrice;
    (apple, applePrice, banana, bananaPrice) = returnResults();
    return (apple, applePrice, banana, bananaPrice);
  }
}