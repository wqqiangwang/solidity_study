// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

error TransferNotOwner();

contract Error {
    mapping(uint256 => address) private _owner;

    function transferOwner1(uint256 tokenId, address newOwner) public {
        if (_owner[tokenId] != msg.sender) {
            revert TransferNotOwner();
        }

        _owner[tokenId] = newOwner;
    }

    function transferOwner2(uint256 tokenId, address newOwner) public {
        require(_owner[tokenId] == msg.sender, "TransferNotOwner");
        _owner[tokenId] = newOwner;
    }

    function transferOwner3(uint256 tokenId, address newOwner) public {
        assert(_owner[tokenId] == msg.sender);
        _owner[tokenId] = newOwner;
    }
}