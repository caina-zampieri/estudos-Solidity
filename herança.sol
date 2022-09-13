// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Heranca {
    mapping(string => uint) public valorAReceber;
    address public owner = msg.sender;

    function escreveValor(string memory _nome, uint valor) public {
        require(msg.sender == owner);
        valorAReceber[_nome] = valor;
    }
}
