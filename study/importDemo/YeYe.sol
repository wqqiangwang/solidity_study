// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract YeYe {
    event Log(string msg);

    function hip() public virtual {
       emit Log("hip");
    }

    function pop() public virtual {
        emit Log("pop");
    }

    function yeye() public virtual {
        emit Log("yeye");
    }

}