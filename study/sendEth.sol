// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// 3种方法发送ETH

error SendFailed();
error CallFailed();

contract SendETH {
    // 构造函数，payable使得部署的时候可以转eth进去
    constructor() payable{}
    // receive方法，接收eth时触发
    receive() external payable{}

    // 用transfer发送eth
    function transferEth(address payable _to, uint256 amount) external payable {
       _to.transfer(amount);
    }

    // 用send发送eth
    function sendEth(address payable _to, uint256 amount) external payable {
        bool success = _to.send(amount);
        if (!success) {
            revert SendFailed();
        }
    }

    // 使用call发送eth
    function callEth(address payable _to, uint256 amount) external payable {
        (bool success,) = _to.call{ value: amount }("");
        if (!success) {
            revert CallFailed();
        }
    }

}

contract ReceiveEth {
    event Log(uint amount, uint gas);

    receive() external payable { 
        emit Log(msg.value, gasleft());
    }

    function getBalance() view public returns(uint){
        return address(this).balance;
    }
}