// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract variable_modifier {
    //valores enteros sin signo(unit)
    uint256 a;
    uint8 public b = 3;

    //valores enteros con signo(int)
    int256 c;
    int8 public d = -32;
    int e = 65;

    //variable string
    string str;
    string public str_public = "esto es publico";

    //variable booleana
    bool boolean;
    bool public boolean_public = true;
    bool private  boolean_private = false;
    
    //variables de tipo bytes
    bytes32 first_bytes;
    bytes4 second_bytes;
    bytes1 byte_1;

    //algoritmo de hash
    bytes32 public hashing_keccak256 = keccak256(abi.encodePacked("hola","lucas",uint(10))); 
    bytes32 public hashing_sha256 = sha256(abi.encodePacked("hola"));
    bytes20 public hashin_ripemd160 = ripemd160("alla");

    //variable address
    address my_address;
    address public address1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public  addres2 = msg.sender;

    //variable de enumeracion
    enum options {ON, OFF}
    options state;
    options constant defaultChoice = options.OFF;

    function turnOn() public {
        state = options.ON;
    }

    function displayState() public view returns (options){
        return state;
    }  

}