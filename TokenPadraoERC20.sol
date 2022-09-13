// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenPadrao is ERC20 {

    constructor() ERC20("Token Padrao","TKP") {
        uint totalSupply = 1_000_000 * 10 ** 18;
        _mint(msg.sender, totalSupply);
    }

}