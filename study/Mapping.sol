// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Mapping {
    mapping(uint => address) public idToAddress;
    mapping(address => address) public swapPair;

    // 规则1: _keyType不能是自定义的，下面的例子会报错
    // _keyType 可以是内置类型，string、bytes、合约、枚举类型
    // 自定义一个结构休
    // struct Student {
    //     uint id;
    //     string name;
    // }
    // mapping(Student => address) public studentToAddress;

    function WriteMap(uint _Key, address _Value) public {
        idToAddress[_Key] = _Value;
    }
}