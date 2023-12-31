// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/**
 * @title Counter
 * @dev A simple contract that allows counting and incrementing/decrementing the count.
 */
contract Counter {
    uint256 private count;

    constructor() {
        count = 0;
    }

    /**
     * @dev Returns the current count.
     * @return The current count.
     */
    function getCount() public view returns (uint256) {
        return count;
    }

    /**
     * @dev Increments the count by 1.
     */
    function increment() public {
        count++;
    }

    /**
     * @dev Decrements the count by 1.
     * @dev Throws an error if the count is already 0.
     */
    function decrement() public {
        require(count > 0, "Counter cannot be negative");
        count--;
    }
}
