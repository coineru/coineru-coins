pragma solidity ^0.4.24;

import "../token/ERC20.sol";

// mock class using ERC20
contract ERC20Mock is ERC20 {
    constructor (address initialAccount, uint256 initialBalance) public {
        _mint(initialAccount, initialBalance);
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }
}