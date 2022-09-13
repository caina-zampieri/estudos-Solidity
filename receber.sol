// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract receber {
    string public nome;

    error NaoFoioSuficiente();

    receive() external payable {}

    function mudaNome(string memory _novoNome) public payable {
        if (msg.value < 1 ether) {
            revert NaoFoioSuficiente();
        }
        nome = _novoNome;
    }

    function quantoTem() external view returns (uint256) {
        return address(this).balance;
    }

    function retirarDinheiro() public {
        address payable endereco = payable(msg.sender);
        endereco.transfer(address(this).balance);
    }
}
