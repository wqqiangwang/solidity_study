// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract InitialValue {
    bool public _bool; // false
    string public _string; // ‘’
    uint256 public _uint; // 0
    int256 public _int; // 0
    address public _address; // 0x0000000000000000000000000000000000000000

    enum ActionSet { Buy, Hold, Sell }
    // 默认值为第一个元素
    ActionSet public _enum;

    function fi() internal{} // internal空白方程 
    function fe() external{} 

    // 所有成员设为其默认成员的静态数组：[0,0,0,0,0,0,0,]
    uint[8] public _staticArray;
    // []
    uint[] public _dynamicArray;

    // 所有成员都为其默认值的mapping
    mapping(uint => address) public _mapping;

    // 所有成员设为其默认结构体 '' 0
    struct Book { string title; uint256 id; }
    Book public _book;

    bool public _bool1 = true;
    // delete 操作符
    function d() public {
        // delete操作符会让布尔值变为默认值false
        delete _bool1;
    }

}