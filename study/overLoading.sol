// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract OverLoading {
    function saySomething() public pure returns(string memory) {
        return "hello world";
    }

    function saySomething(string memory str) public pure returns (string memory) {
        return str;
    }
}