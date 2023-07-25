// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ethSend {

    constructor() payable {}
    receive() external payable {}

    //eventos
    event sendStatus(bool);
    event callStatus(bool, bytes);

    //tranfer
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(1 ether);
    }
    //send
    function sendViaSend(address payable  _to) public payable {
        bool sent = _to.send(1 ether);
        emit sendStatus(sent);
        require(sent == true, "El envio ha fallado");
    }
    //call
    function sendViaCall(address payable _to) public payable {
        (bool success,bytes memory data) = _to.call{value: 1 ether}("");
        emit callStatus(success, data);
        require(success == true, "El envio ha fallado");
    }
}

contract ethReciver {
    event log(uint amount, uint gas);
    receive() external payable {
        emit log(address(this).balance, gasleft());
    }
}