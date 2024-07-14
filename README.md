# Project Title

Project: Create a Token

## Description

This project provides a comprehensive guide to creating your own cryptocurrency token on the Ethereum blockchain. The token, named "LANCE" with the abbreviation "LNE", includes functionalities for minting and burning tokens. The guide covers setting up the development environment, writing the smart contract, deploying it to the blockchain, and interacting with it. This project is ideal for developers looking to learn about blockchain technology and token creation.


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
pragma solidity 0.8.18;

contract MyToken {

    string public tokenName = "LANCE";
    string public tokenAbbrv = "LNE";
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint256 _value) public {
        require(balances[_address] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
```

## Authors

Contributors names and contact info

Lance Polo Paras
201911769@fit.edu.ph


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
