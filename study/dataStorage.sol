// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract DataStorage {
    function fallbackData(uint[] calldata _x) public pure returns(uint[] calldata) {
        // 这样修改会报错
        // _x[0] = 1;
        return _x;
    }
}