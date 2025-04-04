// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
// versao do solidity 

contract Jokenpo {
    uint public jogada1; // guarda a jogada do Jogador 1 (1 = Pedra, 2 = Papel, 3 = Tesoura)
    uint public jogada2; // guarda a jogada do Jogador 2
    string public resultado; // guarda o resultado da partida como texto, fala se for empate ou quem ganhou

    // jogador 1 faz sua jogada (1 pra pedra, 2 pra papel e 3 pra tesoura)
    function jogar1(uint _jogada) public {
        jogada1 = _jogada; // salva o número da jogada feita por Jogador 1
    }

    // jogador 2 faz sua jogada (igual a do jogador 1 mas com as informacoes do jogador 2)
    function jogar2(uint _jogada) public {
        jogada2 = _jogada;
        calcular(); // chama a função que vai calcular o resultado
    }

    // função que calcula o vencedor
    function calcular() private {
        if (jogada1 == jogada2) {
            resultado = "Empate"; // Se os dois jogaram a mesma coisa, é empate
        } else if (
            (jogada1 == 1 && jogada2 == 3) || // Pedra ganha da tesoura
            (jogada1 == 2 && jogada2 == 1) || // Papel ganha da pedra
            (jogada1 == 3 && jogada2 == 2)    // Tesoura ganha do papel
        ) {
            resultado = "Jogador 1 venceu"; // Se o resultado for "positivo" pro jogador 1, ele vence
        } else {
            resultado = "Jogador 2 venceu"; // se for positivo pro jogador 2, o 2 vence
        }
    }
}
