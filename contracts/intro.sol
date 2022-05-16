pragma solidity ^0.8.13;
contract helloworld {  
    // string public name = "hello world";
    string private name = "";

    constructor(){
        name = "hello world";
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function setName(string memory _name)public{
        name = _name;
    }
}