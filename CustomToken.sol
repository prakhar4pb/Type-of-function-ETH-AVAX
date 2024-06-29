// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CustomToken is ERC20 {

    string public tokenName = "Custom Token";
    string public tokenSymbol = "CTK";
    
    constructor() ERC20(tokenName, tokenSymbol) {}

    function issueTokens(address _recipient, uint256 _amount) public {
        _mint(_recipient, _amount);
    }

    function burnTokens(uint256 _amount) public {
        _burn(msg.sender, _amount);
    }
    
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}