// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Decentralized Study Timer
 * @dev A simple contract to track study time for users.
 */
contract StudyTimer {
    struct Timer {
        uint256 startTime;
        uint256 totalStudyTime;
        bool isRunning;
    }

    // Mapping to store timers for each user
    mapping(address => Timer) private timers;

    /**
     * @dev Starts the timer for the caller.
     * Requirements: Timer must not already be running.
     */
    function startTimer() external {
        require(!timers[msg.sender].isRunning, "Timer is already running!");
        timers[msg.sender].startTime = block.timestamp;
        timers[msg.sender].isRunning = true;
    }

    /**
     * @dev Stops the timer for the caller and updates total study time.
     * Requirements: Timer must be running.
     */
    function stopTimer() external {
        require(timers[msg.sender].isRunning, "Timer is not running!");
        uint256 timeElapsed = block.timestamp - timers[msg.sender].startTime;
        timers[msg.sender].totalStudyTime += timeElapsed;
        timers[msg.sender].isRunning = false;
    }

    /**
     * @dev Retrieves the total study time for the caller.
     * @return totalStudyTime Total time spent studying (in seconds).
     */
    function getTotalStudyTime() external view returns (uint256 totalStudyTime) {
        return timers[msg.sender].totalStudyTime;
    }

    /**
     * @dev Checks if the timer is running for the caller.
     * @return isRunning True if timer is running, false otherwise.
     */
    function isTimerRunning() external view returns (bool isRunning) {
        return timers[msg.sender].isRunning;
    }
}
