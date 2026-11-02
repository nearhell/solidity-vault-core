// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleVault {
    mapping(address => uint256) public balances;
    uint256 public totalCheckpoints;

    event CheckpointLogged(address indexed user, uint256 count);

    function logVaultCheckpoint() external {
        totalCheckpoints += 1;
        balances[msg.sender] = block.timestamp;
        emit CheckpointLogged(msg.sender, totalCheckpoints);
    }
}
