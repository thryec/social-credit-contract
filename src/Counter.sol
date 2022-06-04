// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

contract Counter {
    address public immutable owner;
    uint256 public count;

    event Update(address caller, uint256 newNumber);

    constructor(uint256 _initNumber) {
        count = _initNumber;
        owner = msg.sender;
    }

    function increment() public {
        require(msg.sender == owner);
        count++;
        emit Update(msg.sender, count);
    }

    function decrement() public {
        require(msg.sender == owner);
        count--;
        emit Update(msg.sender, count);
    }
}
