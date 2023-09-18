# Raffle Contract

## About

This project implements a provably random smart contract lottery.

## Goals

1. Users can enter by paying for a ticket.
    1. Ticket fees will go to the winner during the draw.
2. After a period of time, the lottery will automatically draw a winner.
    1. This will be done automatically
3. Use Chainlink VRF & Chainlink Automation
    1. Chainlink VRF -> Randomness
    2. Chainlink Automation -> Time based trigger

## Tests

1. write some deploy scripts
2. write our tests
    1. work on a local chain
    2. forked testnet
    3. forked mainnet