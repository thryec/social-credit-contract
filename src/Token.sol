// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// import Ownable - set owner as contract creator

contract Token is ERC20, Ownable {
    constructor(uint256 totalSupply) ERC20("Social Credit Token", "SOC") {
        _mint(msg.sender, totalSupply);
    }

    // mint token to
}
