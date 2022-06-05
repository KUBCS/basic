pragma solidity ^0.8.14;
contract HelloWorld {
    // string public name = "hello world";
    string private name;
   constructor(string memory _name) public{
       name = _name;
   }
   function getName() public view returns(string memory){
      return name;
   }
   function setName(string memory _name) public {
       name = _name;
   }
}