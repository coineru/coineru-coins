pragma solidity ^0.4.24;

import "./token/ERC20.sol";

/**
 * @title CoineruSilver
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract CoineruPlatinum is ERC20 {
    string public constant name = "Coineru Platinum";
    string public constant symbol = "CPLT";
    uint8 public constant decimals = 8;

    // twenty six billions + 8 decimals
    uint256 public constant INITIAL_SUPPLY = 26000000000 * (10 ** uint256(decimals));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}