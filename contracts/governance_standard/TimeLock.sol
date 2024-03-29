// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    // minDelay: How long you have to wait before excuting
    // proposers is the list of addresses that can propose
    // excutors: Who can propose when a proposal passes
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory excuters
    ) TimelockController(minDelay, proposers, excuters) {}
}
