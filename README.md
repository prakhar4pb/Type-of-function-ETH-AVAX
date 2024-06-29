# Type-of-function-ETH-AVAX
# CustomToken Smart Contract

## Overview

The `CustomToken` contract is an ERC20 token implementation that extends the functionality of the OpenZeppelin `ERC20` contract. It provides methods to issue tokens, burn tokens, and override the `transfer` function for custom behavior.

## Features

- **Token Name**: "Custom Token"
- **Token Symbol**: "CTK"

## Deployment

### Requirements

- Solidity compiler version 0.8.26
- OpenZeppelin Contracts library

### Deployment Steps

1. Clone the repository or create a new file `CustomToken.sol`.
2. Compile the contract using a Solidity compiler (e.g., Remix, Truffle).
3. Deploy the compiled contract to an Ethereum-compatible blockchain (e.g., Remix, Ganache).
4. Interact with the deployed contract using Ethereum wallets or decentralized applications (dApps).


### Constructor


constructor() ERC20("Custom Token", "CTK") {}
Initializes the token with the name "Custom Token" and symbol "CTK" using the ERC20 constructor.

### issueTokens

function issueTokens(address _recipient, uint256 _amount) public {
    _mint(_recipient, _amount);
}
Issues _amount of tokens to _recipient. Only callable by the contract owner.

### burnTokens

function burnTokens(uint256 _amount) public {
    _burn(msg.sender, _amount);
}
Burns _amount of tokens from the caller's balance. Only callable by the token holder.

### transfer (Override)

function transfer(address recipient, uint256 amount) public override returns (bool) {
    _transfer(msg.sender, recipient, amount);
    return true;
}
Overrides the standard transfer function from ERC20 to customize transfer logic. Ensures tokens are transferred correctly between addresses.
### Author 
Prakhar Bhardwaj (https://github.com/prakhar4pb)

### License
This project is licensed under the MIT License. See the LICENSE file for details.

### Credits
Built using OpenZeppelin Contracts.
Inspired by the ERC20 token standard.


