// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract InsertSort {
    // if else
    function IfElseTest(uint256 _number) public pure returns(bool){
        if (_number == 10){
            return true;
        } else {
            return false;
        }
    }

    // for
    function FoorLoopTest() public pure returns(uint256){
        uint256 _sum = 0;
        for(uint i = 0; i < 10; i++) {
            _sum+=i;
        }

        return (_sum);
    }

    // while
    function WhileTest() public pure returns(uint256) {
        uint256 _sum = 0;
        uint256 i = 0;
        while(i < 10) {
            _sum+=i;
            i++;
        }

        return (_sum);
    }

    // do while
    function doWhileTest() public  pure returns(uint256) {
        uint256 _sum = 0;
        uint256 i = 0;

        do {
            _sum+=i;
            i++;
        } while(i < 10);

        return (_sum);
    }

    // 三元运算
    function ternaryTest(uint256 x, uint256 y) public pure returns(uint256) {
        return x >= y ? x: y; 
    }


}