// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Constants {
    uint256 constant public CONSTANT_NUM = 10;
    string constant public CONSTANT_STRING = "0xAA";
    bytes constant public CONSTANT_BYTES = "TWF";
    uint256 public bytesLen = CONSTANT_BYTES.length;
    address constant public CONSTANT_ADDRESS = 0x0000000000000000000000000000000000000000;

    uint256 public immutable IMMU_NUM = 999999;
    address public immutable IMMU_ADDR;
    uint256 public immutable IMMU_BLOCK;
    uint256 public immutable IMMU_TEST;

    constructor() {
        IMMU_ADDR = address(this);
        IMMU_BLOCK = block.number;
        IMMU_TEST = test();
    }

    function test() public pure returns(uint256) {
        uint256 what = 9;
        
        return (what);
    }
}