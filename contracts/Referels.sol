// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Referels {
    struct Student {
        uint256 id;
        uint256 score;
    }

    Student student;

    function initStudent1() external {
        
        Student storage _student = student;
        _student.id = 10;
        _student.score = 200;

    }
}