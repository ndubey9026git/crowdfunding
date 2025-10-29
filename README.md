# 🚀 Crowdfunding Smart Contract

A simple Ethereum-based crowdfunding smart contract built with **Solidity**.  
This contract allows users to contribute ETH to a campaign until a funding goal is met, at which point the owner can withdraw the funds.

---

## 🧩 Features

- **Contribute ETH:** Anyone can contribute any amount of ETH.
- **Goal-based withdrawal:** The campaign creator (owner) can only withdraw funds once the goal is reached.
- **Transparency:** All contributions and total funds are tracked on-chain.

---

## ⚙️ Contract Functions

| Function | Description |
|-----------|--------------|
| `contribute()` | Allows users to send ETH to the campaign. |
| `withdraw()` | Lets the owner withdraw funds once the goal is met. |
| `constructor(uint _goal)` | Sets the funding goal and initializes the contract owner. |

---

## 🧑‍💻 How to Deploy

### 1. Prerequisites
- [Remix IDE](https://remix.ethereum.org/) or Hardhat/Foundry
- MetaMask wallet
- Test ETH (Goerli/ Sepolia network)

### 2. Steps (Remix IDE)
1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file called `Crowdfunding.sol`.
3. Paste the contract code into the file.
4. Compile the contract (Solidity 0.8.20 or higher).
5. Deploy using your wallet and provide a funding goal (in wei).

---

## 💰 Example Usage

### Deploy
- Input: `_goal = 5 ether`
- Deployer becomes the **owner**.

### Contribute
- Any user calls `contribute()` and sends ETH (e.g., 1 ETH).

### Withdraw
- Once `totalFunds >= goal`, owner calls `withdraw()` to collect funds.

---

## 🔐 Security Notes

- Only the owner can withdraw.
- No refunds implemented (can be added in advanced versions).
- Tested with Solidity 0.8.20.

---

## 🧾 License

This project is licensed under the **MIT License**.
##contract details : 0x20BBdE3a9A13ab1e206C5029d1b222b386b138fD
<img width="1777" height="770" alt="image" src="https://github.com/user-attachments/assets/429a4d77-3664-4eea-a7ff-2499a4ada237" />

