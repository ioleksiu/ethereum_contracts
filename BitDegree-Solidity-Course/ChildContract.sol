pragma solidity ^0.4.17;

contract ParentContract {

    // Write your functions here
    function ExternalFortyTwo() external returns (uint){
        return 42;
    }
    
    function InternalFortyTwo() internal returns (uint){
        return 42;
    }

    function PublicFortyTwo() public returns (uint){
        return 42;
    }
    
    function PrivateFortyTwo() private returns (uint){
        return 42;
    }
    
    function SomeFunction() public{
        InternalFortyTwo();
        PrivateFortyTwo();
    }
}

contract ChildContract is ParentContract {

    // Write your functions here
    function ChildContract() public{
    	ParentContract.PublicFortyTwo();
        PublicFortyTwo();
        //Doesn't work
        //ParentContract.PrivateFortyTwo();
        //this.ExternalPublicFortyTwo();
        this.ExternalPublicFortyTwo();
    }
}