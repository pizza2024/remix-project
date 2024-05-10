// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import './Base1.sol';

contract Identifier is Base1 {
    function getExactDividedBy2And3(uint _dividend) public exactDividedBy2And3(_dividend) pure returns (uint, uint) {
        return getExactDividedBy2And3WithoutModifier(_dividend);
    }
    function getExactDividedBy2And3WithoutModifier(uint _dividend) public pure returns (uint, uint) {
        uint div2 = _dividend / 2;
        uint div3 = _dividend / 3;
        return (div2, div3);
    }
}