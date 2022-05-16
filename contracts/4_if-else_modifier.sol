pragma solidity ^0.8.13;
contract condition {  
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    function example(uint256 _x)public view returns(bool){
    if(_x<10){
        return true;}   
    else{
        return false;}
    }
    function usingRequire(uint256 _x)public view returns(bool){
        require(_x<10,"out of range!!!");
        return true;
    }
    modifier onlyOwner{
        require(msg.sender == owner,"only Owner can call the contract");
        _;
    }
    function getResult(uint256 _x)public onlyOwner view returns(bool){
            return true;
    }

}