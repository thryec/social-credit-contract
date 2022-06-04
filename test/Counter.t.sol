// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.13;

import "ds-test/test.sol";
import {Counter} from "src/Counter.sol";

contract CounterTest is DSTest {
    Counter counter;
    address sender;

    function setUp() public {
        counter = new Counter(3);
        sender = 0xb4c79daB8f259C7Aee6E5b2Aa729821864227e84;
    }

    function testInitCount() public {
        uint256 currentNum = counter.count();
        assertTrue(currentNum == 3);
    }

    function testIncrement() public {
        counter.increment();
        assert(counter.count() == 4);
    }

    function testDecrement() public {
        counter.decrement();
        assert(counter.count() == 2);
    }

    function testInitOwner() public {
        assertTrue(counter.owner() == sender);
    }
}
