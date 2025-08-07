// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract DemoContract {}

contract Selector {
    event Log(bytes data);
    event SelectorEvent(bytes4);

    struct User {
        uint256 user;
        string name;
    }

    enum School {SCHOOL1, SCHOOL2, SCHOOL3}

    function mint(address) external {
        emit Log(msg.data);
    }

}