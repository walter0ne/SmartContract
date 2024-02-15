// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenTest2 is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("TokenTest2", "TKT2")
        Ownable(initialOwner)
    {
        mint(msg.sender, 100*(10**18));    //abbiamo messo la funzione dentro per mintare automaticamente i token (vedi funzione seguente)
    }

    function mint(address to, uint256 amount) public onlyOwner {    //per mintare i token automaticamente,portiamo la funzione mint all'interno del costruttore
        _mint(to, amount);
    }
}
