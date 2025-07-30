// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract ReturnsTest {
    // 返回多个变量
    function returnMutiple() public pure returns(uint256, bool, uint256[3] memory){
        return (1, true, [uint256(1),2,3]);
    }

    // 命名式返回
    function returnNamed() public pure returns(uint256 _number, bool _number2, uint256[3] memory _number3){
        _number = 1;
        _number2 = true;
        _number3 = [uint256(1), 2, 3];
    }

    // 命名式返回，依然支持return
    function returnNamed2() public pure returns(uint256 _number, bool _number2, uint256[3] memory _number3){
        return (1, true, [uint256(1), 2, 3]);
    }

    // 读取返回值，解构式赋值
    function readReturn() public pure {
        uint256 _number;
        bool _bool1;
        bool _bool2;
        uint256[3] memory _array;

        (_number, _bool1, _array) = returnNamed();
        (, _bool2, ) = returnNamed2();
    }
    
}