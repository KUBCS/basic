pragma solidity ^0.8.14;

contract Variables {
    // default values
    bool public a;// false
    uint256 public b;//0
    int public c;//0
    address public d;//0x0000000000000000000000000000000000000000
    bytes public e; //0x
    bytes32 public f; //0x0000000000000000000000000000000000000000000000000000000000000000

    uint256 x = 10;
    string txt = "jonh";
    address addr = msg.sender;
    
  function getX() public view returns(uint){
      return x;
   }
  function getTxt() public view returns(string memory){
      return txt;
   }
  function getAddress() public view returns(address){
      return addr;
   }
    function setAddress()public{
        addr = msg.sender;
    }
}