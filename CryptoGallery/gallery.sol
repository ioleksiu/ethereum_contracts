
pragma solidity ^0.4.16;

contract  CryptoGallery{

    event OwnershipTransfered(bytes32 PictureHash, address NewOwner);
    event NewPictureAdded(bytes32 PictureHash);

    address admin; 

    mapping (bytes32 => address) public Gallery;

    function CryptoGallery () public{
    	admin = msg.sender;    	
    }
        
    function TransferPictureOwnership (bytes32 PictureHash, address NewOwner) public {
    	require(msg.sender == Gallery[PictureHash]);
    	Gallery[PictureHash] = NewOwner;
    	OwnershipTransfered(PictureHash, NewOwner);
    }

    //* створення ХЕШу з назви картини та автору*/
    // function HashThePicture (string author, string picture_name) returns(bytes32) {
    // 	return keccak256(author, picture_name);
    // }
    
    function AddNewPicture (bytes32 PictureHash) public
    {
    	require(msg.sender == admin);
    	Gallery[PictureHash] = admin;
    	NewPictureAdded(PictureHash);
    }
}