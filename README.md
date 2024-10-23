# Tropple AI - Token Project

**Tropple AI** is a visionary token inspired by the technological innovations of Tron, Apple, and AI, deployed on the Sepolia testnet. While drawing inspiration from these giants, Tropple AI aims to carve its own path by creating a decentralized ecosystem that leverages blockchain and artificial intelligence for enhanced digital solutions. With a focus on seamless user experience and cutting-edge AI integration, Tropple AI envisions a future where technology empowers individuals and businesses alike.

smart contract [testnet etherscan](https://sepolia.etherscan.io/address/0x09C893e5320AB25B6Fc11352706627Dfdd7Df186#code)

Token [Tropple AI](https://sepolia.etherscan.io/token/0x09C893e5320AB25B6Fc11352706627Dfdd7Df186)

## Tropple AI Token Features

### 1. Fixed Maximum Supply

Tropple AI has a capped total supply of 100 billion tokens (100,000,000,000 \* 10^18), ensuring that no more tokens can be created beyond this limit, making it deflationary by design.

### 2. Initial Mint Reward

An initial mint reward of 4.5 million tokens (4,500,000 \* 10^18) is available at launch, but this reward dynamically scales down as the remaining supply decreases. This feature incentivizes early adopters by giving them a higher reward for minting tokens early.

### 3. Dynamic Minting Mechanism

The minting process adjusts the reward based on the remaining supply. As more tokens are minted and the total supply increases, the reward reduces, ensuring that minting becomes more scarce over time. However, a minimum reward of 100 tokens is always guaranteed.

### 4. One-time Minting Per Wallet

To encourage fair distribution, each wallet can only mint once. After minting, the wallet is marked as having already minted, preventing any further minting from that address.

### 5. Burnable Token

Tropple AI is burnable, meaning token holders can reduce the circulating supply by burning tokens. This feature allows for active deflationary control, further enhancing scarcity.

### 6. Ownable and Governed

The token includes ownership control, allowing the initial owner to govern critical aspects of the contract. This feature ensures that the token's governance is secure while offering the flexibility to implement upgrades or changes as needed.

### 7. ERC20Permit Integration

Tropple AI supports ERC20 Permit, which enables gasless approvals. This feature allows users to approve token transactions via off-chain signatures, improving user experience by reducing gas fees for certain operations.

## Prerequisites

Make sure you have the following tools installed:

- [Node.js](https://nodejs.org/)
- [Hardhat](https://hardhat.org/)
- [Solidity](https://docs.soliditylang.org/)
- [MetaMask](https://metamask.io/) (for interacting with the contract)

## Getting Started

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/isfndiar/TROPPLEAI.git
   cd TROPPLEAI
   ```

2. Install the dependencies:

   ```bash
   npm install
   ```

### Compiling the Contract

Compile your smart contract using Hardhat:

```bash
npx hardhat compile
```

### Interacting with the Contract

Once the contract is deployed, you can interact with it using Hardhat tasks, scripts, or through the command line.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Feel free to modify it according to your project specifics!
