// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract ArrayTypes {
    // 固定长度array
    uint[8] array1;
    bytes1[15] array2;
    address[20] array3;

    // 可变长度array
    uint[] array4;
    bytes1[] array5;
    address[] array6;
    bytes array7;

    // 初始化可变长度 
    uint[] array8 = new uint[](5);
    bytes array9 = new bytes(9);

    // 给可变长度数组赋值 
    function initArray() external pure returns(uint[] memory){
        uint[] memory x = new uint[](3);
        x[0] = 4;
        x[1] = 5;
        x[2] = 6;
        return (x);
    } 

    function arrayPush() public returns(uint[] memory){
        uint[2] memory a = [uint(1), 2];
        array4 = a;
        array4.push(3);
        return array4;
    }
}

// 结构体 struct
contract StructTypes{
    struct Student{
        uint256 id;
        uint256 score;
    }

    // 初始化一个Student结构体 
    Student student;

    /* 给结构体赋值 **/
    // 方法1: 在函数中上创建一个storage的struct引用
    function initStudent() external{
        Student storage _student = student;
        _student.id = 11;
        _student.score = 100;
    }

    // 方法2: 直接引用状态变量的struct
    function initStudent2() external{
        student.id = 11;
        student.score = 100;
    }

    // 方法3: 构造函数式
    function initStudent3() external {
        student = Student(11, 100);
    }

    // 方法4: key、value
    function initStudent4() external{
        student = Student({id: 11, score: 100});
    }
}