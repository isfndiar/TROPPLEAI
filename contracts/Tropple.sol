// Author: Verivied smart contract ribet cok - diar
// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract Tropple is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    uint256 public constant MAX_SUPPLY = 100000000000 * 10 ** 18; // Max total supply
    uint256 public constant INITIAL_MINT_REWARD = 4500000 * 10 ** 18; // Initial mint reward
    mapping(address => bool) public hasMinted; // Track who has minted

    constructor(address initialOwner)
        ERC20("Tropple AI", "TRPAI")
        Ownable(initialOwner)
        ERC20Permit("Tropple AI")
    {
        _mint(initialOwner, 1000000000 * 10 ** decimals());
    }

    // Function to calculate dynamic mint reward based on remaining supply
    function calculateMintReward() public view returns (uint256) {
        uint256 remainingSupply = MAX_SUPPLY - totalSupply(); // Remaining supply
        // Mint reward scales down as the remaining supply decreases
        uint256 reward = INITIAL_MINT_REWARD * remainingSupply / MAX_SUPPLY;
        return reward > 100 * 10 ** decimals() ? reward : 100 * 10 ** decimals(); // Ensure minimum reward of 100 tokens
    }

    // Mint function allowing each wallet to mint only once
    function mintToken() external {
        require(!hasMinted[msg.sender], "You can only mint once."); // Ensure the user hasn't minted before
        require(totalSupply() < MAX_SUPPLY, "Max supply reached."); // Ensure max supply isn't exceeded

        uint256 mintReward = calculateMintReward(); // Calculate the dynamic reward based on supply
        hasMinted[msg.sender] = true; // Mark the user as having minted
        _mint(msg.sender, mintReward); // Mint the reward to the user
    }
}
