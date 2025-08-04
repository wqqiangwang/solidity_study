// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract FallbackDemo {
    event receivedCalled(address Sender, uint Value);
    event fallbackedCalled(address Sender, uint Value, bytes Data);

    receive() external payable { 
        emit receivedCalled(msg.sender, msg.value);
    }

    fallback() external payable { 
        emit fallbackedCalled(msg.sender, msg.value, msg.data);
    }
}