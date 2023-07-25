// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract data_strucures {
    //estructura de un cliente
    struct Customer{
        uint256 id;
        string name;
        string email;
    }

    //variable de tipo cliente
    Customer cliente1 = Customer(1, "lucas","lukasprado8@gmail.com");

    //arrays de uints de una longitud fija
    uint256 [5] public fixed_list_uints = [1,2,3,4,5];

    //arrays dinamico
    uint256 [] dinamic_list_uints;

    //array dinamico de tipo cliente
    Customer [] public dinamic_list_custumer;

    //nuevos datos en un array
    function array_modicacion (uint256 _id, string memory _name, string memory _email) public {
        Customer memory random_custumer = Customer(_id,_name,_email);
        dinamic_list_custumer.push(random_custumer);
    }

    //mappings
    mapping (address => uint256) public addres_uint;
    mapping (string => uint256 []) public string_listUint;
    mapping (address => Customer) public addres_dataStructures;

    //asignar un numero a una direccion
    function assingNumber (uint256 _number) public {
        addres_uint [msg.sender] = _number;
    }

    //asignar varios numero a una direccion
    function assignList (string memory _name,uint256 _number) public {
        string_listUint [_name].push(_number);
    }

    //asignar una structura a una direccion
    function assignDataStructur (uint256 _id, string memory _name, string memory _email) public {
        addres_dataStructures[msg.sender] = Customer(_id,_name,_email);
    }

}