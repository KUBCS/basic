pragma solidity ^0.8.13;
contract set_get {
    string name = "";
   constructor() public{
   }
   function getName() public view returns(string memory){
      return name;
   }
   function setName(string memory _name) public {
       name = _name;
   }
}