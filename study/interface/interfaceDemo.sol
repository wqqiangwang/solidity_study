// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

interface Base {
    function getFirstName() external pure returns (string memory);
    function getLastName() external pure returns (string memory);
}

contract BaseImpl is Base {
    function getFirstName() external pure override returns(string memory) {
        return "first-name";
    }

    function getLastName() external pure override returns (string memory) {
        return "last-name";
    }
}