// SPDX-License-Identifier: MIT

//version
pragma solidity ^0.8.4;

//importar
import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";

//declaracion
contract PrimerContrato is ERC721 {
    // direccion de la persona que despliega el contrato
    address public owner;

    constructor(string memory _name, string memory _symbol) ERC721(_name,_symbol){
        owner = msg.sender;
    }

}