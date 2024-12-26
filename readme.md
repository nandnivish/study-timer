# Decentralized Study Timer

This project implements a **Decentralized Study Timer** using Ethereum smart contracts and a frontend powered by **HTML, CSS, and JavaScript**. Users can track the time they spend studying in a decentralized manner, ensuring transparency and immutability with blockchain technology.

---

## **Project Overview**
The project consists of two main parts:
1. **Smart Contract**: A Solidity contract that records study session start/stop times and calculates total study time for each user.
2. **Frontend**: A simple web interface that interacts with the smart contract using Web3.js to provide users with an easy way to manage their study sessions.

---

## **Features**
- **Start Timer**: Start a study session and store the start time on-chain.
- **Stop Timer**: Stop the current study session and calculate the elapsed time.
- **Track Study Time**: Users can view their total study time recorded on the blockchain.
- **Decentralized & Transparent**: All study sessions are stored securely on the Ethereum blockchain.

---

## **Technologies Used**
- **Solidity**: For writing the smart contract.
- **Web3.js**: To connect the frontend with the smart contract.
- **HTML, CSS, JavaScript**: For the web-based user interface.
- **MetaMask**: To interact with the Ethereum blockchain.

---

## **Prerequisites**
To run this project, ensure you have the following installed:
1. **Node.js**: [Download and install Node.js](https://nodejs.org/).
2. **MetaMask Wallet**: Install [MetaMask Browser Extension](https://metamask.io/).
3. **Remix IDE**: To deploy the smart contract. Visit [Remix IDE](https://remix.ethereum.org/).

---

## **Getting Started**

### **1. Smart Contract Deployment**
1. Open **Remix IDE**.
2. Create a new Solidity file (e.g., `StudyTimer.sol`) and copy the smart contract code.
3. Compile the contract (Solidity version `^0.8.20`).
4. Deploy the contract using the **Injected Provider** (ensure MetaMask is connected to a test network like Goerli or Sepolia).
5. Save the **Contract Address** for the next step.

---

### **2. Setting Up the Frontend**
1. Clone this repository:
   ```bash
   git clone https://github.com/johndoe/decentralized-study-timer.git
   cd decentralized-study-timer
   ```

2. Open the `index.html` file in a text editor.
3. Replace the contract address placeholder in the configuration.
4. Add the ABI of the deployed contract in the `contractABI` variable inside `index.html`.

---

### **3. Running the Frontend**
1. Open the `index.html` file in a browser (ensure MetaMask is installed and set up).
2. Connect to your MetaMask wallet.
3. Use the web interface to:
   - Start the timer.
   - Stop the timer.
   - View your total study time.

---

## **Smart Contract Explanation**
The Solidity contract consists of the following:
- **startTimer**: Starts the timer and records the current timestamp.
- **stopTimer**: Stops the timer, calculates the elapsed time, and adds it to the user's total study time.
- **getTotalStudyTime**: Returns the user's accumulated study time in seconds.
- **isTimerRunning**: Checks if the timer is currently running for the user.

---

## **Frontend Explanation**
The frontend interacts with the smart contract using Web3.js and includes:
- **Start Timer Button**: Calls the `startTimer` function.
- **Stop Timer Button**: Calls the `stopTimer` function.
- **Status and Time Display**: Shows the timer status and total study time.

---

## **Screenshots**
![Study Timer UI](https://via.placeholder.com/600x400)

---

## **Troubleshooting**
- **MetaMask Not Connected**: Ensure MetaMask is installed and the wallet is unlocked.
- **Contract Not Found**: Verify the contract address and ABI are correct.
- **Wrong Network**: Ensure you're on the same network used during contract deployment.

---

## **Future Improvements**
- Implement a leaderboard to rank users by total study time.
- Add functionality to reset the timer.
- Enhance the UI with animations and responsive design.

---

## **License**
This project is licensed under the **MIT License**.

---

## **Contact**
For any questions or suggestions, reach out to:
- **Name**: John Doe
- **Email**: john.doe@email.com
- **GitHub**: github.com/johndoe

