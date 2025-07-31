// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract DataStorage {

    uint[] public x = [1,2,3];

    function fStorage() public {
        // 声明一个storage类型的 xStorage，指向x。修改xStorage的值也会影响 x
        uint[] storage xStorage = x;
        xStorage[0] = 100;
    }

    function fMemorg() public view {
        // 声明一个memory类型的 xMemory，复制x。修改xMemory不会影响x
        uint[] memory xMemory = x;
        xMemory[0] = 100;
        xMemory[1] = 200;

        uint[] memory xMemory2 = x;
        xMemory2[0] = 300;
    }

    function fallbackData(uint[] calldata _x) public pure returns(uint[] calldata) {
        // 这样修改会报错
        // _x[0] = 1;
        return _x;
    }
   
}

contract Variables {
    uint public x = 1;
    uint public y;
    string public z;

    function foo() external {
        // 可以在函数里更改状态变量的值
        x = 3;
        y = 2;
        z = '0xAA';
    }

    function bar() external pure returns(uint) {
        uint xx = 1;
        uint yy = 2;
        uint zz = xx + yy;
        return (zz);
    }

    function globalData() external view returns(address, uint, bytes memory){
        address sender = msg.sender;
        uint blockNum = block.number;
        bytes memory data = msg.data;
        return (sender, blockNum, data);
    } 

    // 以太单位
    function weiUnit() external pure returns(uint) {
        assert(1 wei == 1e0);
        assert(1 wei == 1);
        return 1 wei;
    }

    function gWeiUnit() external pure returns(uint) {
        assert(1 gwei == 1e9);
        assert(1 gwei == 1000000000);
        return 1 gwei;
    }

    function etherUnit() external pure returns(uint) {
        assert(1 ether == 1e18);
        assert(1 ether == 1000000000000000000);
        return 1 ether;
    }

    // 时间单位
    function secondsUnit() external pure returns(uint){
        assert(1 seconds == 1);
        return 1 seconds;
    }

    function minutesUnit() external pure returns(uint){
        assert(1 minutes == 60);
        assert(1 minutes == 60 seconds);
        return 1 minutes;
    }

    function hoursUnit() external pure returns(uint) {
        assert(1 hours == 3600);
        assert(1 hours == 60 minutes);
        return 1 hours;
    }

    function daysUnit() external pure returns(uint) {
        assert(1 days == 86400);
        assert(1 days == 24 hours);
        return 1 days;
    }

    function weeksUnit() external pure returns(uint) {
        assert(1 weeks == 604800);
        assert(1 weeks == 7 days);
        return 1 weeks;
    }
}