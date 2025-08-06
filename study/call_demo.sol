// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract OtherContract {
    uint256 private _x = 0;

    // 收到eth事件，记录amount、gas
    event Log(uint256 amount, uint256 gas);

    fallback() external payable {}

    // 返回合约eth余额
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    // 可以调整状态变量_x的函数，并且可以往合约转eth (payable)
    function setX(uint256 x) external payable {
        _x = x;
        // 如果转入eth，则翻译Log事件
        if (msg.value > 0) {
            emit Log(msg.value, gasleft());
        }
    }

    // 读取 x
    function getX() external view returns (uint256 x) {
        x = _x;
    }
}

contract call {
    // 定义Response事件，输出call的返回结果success、data
    event Response(bool success, bytes data);

    function callSetX(address payable _addr, uint256 x) public payable {
        (bool success, bytes memory data) = _addr.call{value: msg.value}(
            abi.encodeWithSignature("setX(uint256)", x)
        );

        emit Response(success, data); // 释放事件
    }

    function callGetX(address _addr) external returns (uint256) {
        (bool success, bytes memory data) = _addr.call(
            abi.encodeWithSignature("getX()")
        );
        emit Response(success, data);
        return abi.decode(data, (uint256));
    }

    function callNonExist(address _addr)external {
        (bool success, bytes memory data) = _addr.call(
            abi.encodeWithSignature("foo(uint256)")
        );
        emit Response(success, data);
    }
}
