// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.21;

contract valueType {
    bool public _bool1 = true;
    bool public _bool2 = false;

    int public _int = 1;
    uint public _uint = 2;
    uint256 public _number = 423423;

    uint256 public _number1 = _number + 1;
    uint256 public _number2 = _number1 - 1;
    uint256 public _number3 = 2**2;

    address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable  public _address1 = payable(_address);
    uint256 public _balance = _address1.balance;

    bytes32 public _bytes32 = "minisolidify";
    bytes1 public _byes1 = _bytes32[0];
}