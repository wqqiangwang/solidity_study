// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

abstract contract InstertSort {
    function instertSort(uint[] memory) public pure virtual returns (uint[] memory);
}

import "@openzeppelin/contracts/utils/introspection/IERC165.sol";

interface IERC721 is IERC165 {
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    function balanceOf(address owner) external view returns(uint256 banalce);

    function ownerOf(uint256 tokenId) external view returns(address owner);

    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    function approve(address to, uint256 tokenId) external;

    function getApproved(uint256 tokenId) external view returns(address operator);

    function setApprovedForAll(address operator, bool _approved) external;

    function isApprovedForAll(address owner, address operator) external view returns(bool);

    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;
}

contract interactBAYC {
    // 利用BAYC地址创建接口合约变量（ETH主网）
    IERC721 BAYC = IERC721(0xBC4CA0EdA7647A8aB7C2061c2E118A18a936f13D);

    function balanceOfBAYC(address owner) external view returns(uint256 balance) {
        return BAYC.balanceOf(owner);
    }

    function safeTransferFromBAYC(address from, address to, uint256 tokenId) external {
        BAYC.safeTransferFrom(from, to, tokenId);
    }
}