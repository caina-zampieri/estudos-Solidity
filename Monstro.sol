// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContratoMonstros{

    enum TipoMonstro {
        Raro,
        Especial,
        Normal,
        Comum
    }

    struct Monstro {
        string nome;
        uint forca;
        TipoMonstro tipo;
    }

    Monstro[] public monstros;

    function CriaNovoMonstro(string memory _nome) public {
        Monstro memory novoMonstro;
        novoMonstro.nome = _nome;
        novoMonstro.forca = block.timestamp % 20;
        
        if (block.timestamp % 4 == 0) {novoMonstro.tipo = TipoMonstro.Raro;}
        else if (block.timestamp % 4 == 1) {novoMonstro.tipo = TipoMonstro.Especial;}
        else if (block.timestamp % 4 == 2) {novoMonstro.tipo = TipoMonstro.Normal;}
        else if (block.timestamp % 4 == 3) {novoMonstro.tipo = TipoMonstro.Comum;}

        monstros.push(novoMonstro);
    }


}
