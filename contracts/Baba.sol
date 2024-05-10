// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import './Yeye.sol';

contract Baba is Yeye {
    function hip() public virtual override {
        emit Log("Baba");
    }

    function pop() public virtual override {
        emit Log("Baba");
    }

    function baba() public virtual {
        emit Log("Baba");
    }
}