// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract funciones{
    //funciones de tipo pure
    function getName() public pure returns (string memory) {
        return "lucas";
    }

    //funciones de tipo view
    uint256 x = 100;
    function getNumber() public view returns (uint256){
        return x*2;
    }
}