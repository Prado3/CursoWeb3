// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./ERC20.sol";

contract customERC20 is ERC20 {
    //constructor del smart contract
    constructor() ERC20("Joan","JA"){}

    //creacion de nuevos tokens
    function createToken() public {
        _mint(msg.sender, 1000);
    }

}