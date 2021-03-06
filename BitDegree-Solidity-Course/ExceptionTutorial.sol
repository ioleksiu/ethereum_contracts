pragma solidity ^0.4.17;

contract ExceptionTutorial {

    uint public constant minimumContribution = 3 ether;
    uint public weiRaised;
    address public owner;

    function ExceptionTutorial() {
        owner = msg.sender;
    }

    function contribute() payable external {
        //
        weiRaised += msg.value;
        if(msg.value < minimumContribution)
            throw;
    }

    function withdraw() external {
        //
        require(msg.sender == owner);
        owner.transfer(this.balance);
    }
}