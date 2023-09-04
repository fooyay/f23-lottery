// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title A sample raffle contract
 * @author Patrick Collins & Sean Coates
 * @notice This contract is for demonstration purposes only
 * @dev uses Chainlink VRFv2 for random number generation
 */
contract Raffle {
    error Raffle__InsufficientFundsSent();

    uint256 private immutable i_entranceFee;
    address payable[] private s_players;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() external payable {
        if (msg.value < i_entranceFee) {
            revert Raffle__InsufficientFundsSent();
        }
        s_players.push(payable(msg.sender));
    }

    function pickWinner() public {}

    // getter functions

    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }
}
