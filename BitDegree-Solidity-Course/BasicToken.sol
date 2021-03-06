pragma solidity ^0.4.17;

contract BasicToken {
    uint256 public totalSupply;
    function balanceOf(address who) constant returns (uint256);
    function transfer(address to, uint256 value) returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
}

// Add your new contract here
contract AdvancedToken is BasicToken{
   
}