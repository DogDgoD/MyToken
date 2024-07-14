// SPDX-License-Identifier: MIT
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
