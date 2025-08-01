// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract YeYe {
    event Log(string msg);

    function hip() public virtual {
        emit Log("YeYe");
    }

    function pop() public virtual {
        emit Log("YeYe");
    }

    function yeye() public virtual {
        emit Log("YeYe");
    }
}

contract BaBa is YeYe {
    function hip() public virtual override {
        emit Log("Baba");
    }

    function pop() public  virtual override {
        emit Log("Baba");
    }

    function baba() public  virtual {
        emit Log("Baba");
    }
}

contract ErZi is YeYe, BaBa {
    function hip() public virtual override(YeYe, BaBa) {
        emit Log("Erzi");
    }

    function pop() public virtual override(BaBa, YeYe) {
        emit Log("Erzi");
    }

    function CallParent() public {
        YeYe.pop();
    }

    function CallParentBySuper() public {
        super.pop();
    }
}

// 构造函数的继承
abstract contract A {
    uint public a;
    constructor(uint _a) {
        a = _a;
    }
}

contract B is A(1){

}

contract C is A {
    constructor(uint _c) A(_c * _c) {}
}