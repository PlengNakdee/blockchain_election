# Election DApp

Distributed applications or dApp is a software application that runs across many computing devices, unlike most applications (apps) that run on a single server. In this dApp project, I want to simulate the use of blockchain in an election process. Here is the structure of the dApp:
Dependencies for this project
- Node Package Manager (NPM), a package manager for the JavaScript programming language.
- Truffle, a development environment, testing framework and asset pipeline for blockchains using the Ethereum Virtual Machine (EVM).
- Ganache, a personal (local) Ethereum blockchain, uses to deploy contracts, and develops applications.
- MetaMask, an extension for Google Chrome, uses with connecting the personal blockchain with a browser.
- Syntax Highlighting for Solidity language.

Project structure
In command line, type in:
      $ truffle unbox pet-shop
To get a basic project structure which contain the following directories:
- contracts/ : contains the Solidity source files for smart contract.
- migrations/ : keep files that handle smart contract deployment and keep track
of changes in the blockchain.
- node_modules/ : contains all Node dependencies.
- src/ : contains files for client-side application.
- Truffle.js : main configuration file for Truffle framework.
Write the smart contract (Election.sol)
Smart contract in this project is acting like a back-end logic and storage. It read and write data to the blockchain, using a programming language called Solidity. In this project, smart contract is automatically update total votes for each candidates and enforces these condition:
- Only one vote per one address (account).
- Votes only count once.
Compilation
Solidity is a compiled language so we need to compile Solidity to bytecode that the Ethereum Virtual Machine (EVM) can execute. By type in a terminal:
      $ truffle compile
Migration (2_deploy_contracts.js)
Before migration, we need to have our personal blockchain running by using Ganache. At first launch, the current block number is 0.
Migration is moving the contract on to the blockchain and also alter the state of the application’s contract, moving it from one state to the next.
      $ truffle migrate
Or when we want to migrate a new contract and reset the state of blockchain.
      $ truffle migrate --reset

After migration, the current block number was changed to 4 and the balance of the
first account also decrease.
Creating user interface (index.html, app.js)
By using HTML, CSS and JavaScript. The candidates here are fictional characters from ​Game of Thrones.​
In the terminal, type in:
$ npm run dev
Which will open a new web browser window with the user interface, client-side application.
Voting process
Metamask is a chrome extension for transaction of ether on the main Ethereum blockchain. With this project MetaMask has to be set up with local (private) network, which is our personal blockchain.
A voter has to make an account with private key and then sign-in with MetaMask, in order to see the above webpage. After a vote, the user will see this page, with no vote button.

As long as the user is sign-in with MetaMask, the user can still see the result page but cannot vote again.

## Reference
http://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial
