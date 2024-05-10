// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ControlFlow {
    function ifElseTest(uint256 _number) public pure returns(bool) {
        if (_number == 0) {
            return (true);
        } else {
            return (false);
        }
    }

    function forLoopTest() public pure returns(uint256) {
        uint sum = 0;
        for(uint i=0; i<10; i++) {
            sum+=1;
        }
        return sum;
    }

    function doWhileTest() public pure returns(uint256) {
        uint sum = 0;
        uint i = 0;
        do {
            sum += i;
            i++;
        } while (i < 10);
        return sum;
    }

    function ternaryTest(uint256 x, uint256 y) public pure returns(uint256) {
        return x >= y ? x : y;
    }

    function insertionSort(uint[] memory arr) public pure returns(uint[] memory) {
        for(uint i = 1; i<arr.length; i++) {
            uint j = i;
            uint tmp = arr[i];
            while ((j >= 1) && (tmp < arr[j - 1])) {
                arr[j] = arr[j - 1];
                j--;
            }
            arr[j] = tmp;
        }
        return arr;
    }
}