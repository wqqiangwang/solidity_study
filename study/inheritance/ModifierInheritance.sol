// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Base1 {
    modifier exactDividerBy2And3(uint256 _a) virtual {
        require(_a % 2 == 0 && _a % 3 == 0);
        _;
    }
}

contract Identifier is Base1 {
    function getExactDividedBy2And3(uint256 _a)
        public
        exactDividerBy2And3(_a)
        pure
        returns (uint256, uint256)
    {
        return getExactDividedBy2And3WithoutModifier(_a);
    }

    function getExactDividedBy2And3WithoutModifier(uint256 _a)
        public
        pure
        returns (uint256, uint256)
    {
        uint256 div2 = _a / 2;
        uint256 div3 = _a / 3;
        return (div2, div3);
    }
}
