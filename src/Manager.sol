// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "./Token.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract Manager is Token, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor(address minter) {
        _setupRole(MINTER_ROLE, minter);
    }
}
