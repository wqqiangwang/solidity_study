// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// import './YeYe.sol';
import { YeYe } from './YeYe.sol';
// 通过网址引用
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol';
// 引用OpenZeppelin合约
import '@openzeppelin/contracts/access/Ownable.sol';
// 通过网址引用
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol';
// 引用OpenZeppelin合约
import '@openzeppelin/contracts/access/Ownable.sol';



contract ImportDemo {
    using Address for address;

    YeYe yeye = new YeYe();

    function test() external  {
        yeye.hip();
    }
}