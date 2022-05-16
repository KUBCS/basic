pragma solidity ^0.8.13;

contract Variables {
    uint256 x = 10;
    string txt = "jonh";
    
  function getX() public view returns(uint){
      return x;
   }

  function getTxt() public view returns(string memory){
      return txt;
   }

}