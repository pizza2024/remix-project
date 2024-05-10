// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import './Baba.sol';
import './Yeye.sol';

contract Erzi is Yeye, Baba {
    function hip() public virtual override (Yeye, Baba) {
        emit Log("Erzi");
    }
    function pop() public virtual override (Yeye, Baba) {
        emit Log("Erzi");
    }
}