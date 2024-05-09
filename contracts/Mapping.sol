// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Mapping {
    struct Student {
        uint256 id;
        uint256 score;
    }

    mapping(uint => address) public idToAddress;
    mapping(address => address) public swapPair;

    function writeMap(uint _Key, address _Value) public {
        idToAddress[_Key] = _Value;
    }
}