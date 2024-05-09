// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Variables {
    uint public x = 1;
    uint public y;
    string public z;

    function foo() external  {
        x = 5;
        y = 2;
        z = "0xAA";
    }

    function bar() external pure returns(uint) {
        uint xx = 1;
        uint yy = 2;
        uint zz = xx + yy;
        return (zz);
    }

    function global() external view returns(address, uint, bytes memory) {
        address sender = msg.sender;
        uint blockNum = block.number;
        bytes memory data = msg.data;

        return (sender, blockNum, data);
    }
}