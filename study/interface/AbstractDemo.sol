// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

abstract contract Base {
    string public name = "Base";
    function getAlice() public pure virtual returns (string memory){}
}

contract BaseImpl is Base {
    function getAlice() public pure override returns (string memory) {
        return "baseImpl";
    }
}