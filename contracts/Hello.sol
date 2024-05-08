// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
contract Hello{
    string public _string = "Hello";
    bool public _bool = true;
    int public _int = -1;
    uint public _uint = 1;
    uint256 public _number = 20220330;

    address public _address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address payable public _address1 = payable (_address);

    uint256 public balance = _address1.balance;

    bytes32 public _byte32 = "Hello";
    bytes1 public _byte1 = _byte32[0];
    bytes1 public _byte2 = _byte32[1];
    bytes1 public _byte3 = _byte32[2];
    bytes1 public _byte4 = _byte32[3];
    bytes1 public _byte5 = _byte32[4];
    bytes1 public _byte6 = _byte32[5];

    enum ActionSet {Buy, Hold, Sell}
    ActionSet public action = ActionSet.Buy;
    // ActionSet public action = ActionSet.Hold;
    // ActionSet public action  = ActionSet.Sell;

    function enumToUint() external view returns(uint){
        return uint(action);
    }
}