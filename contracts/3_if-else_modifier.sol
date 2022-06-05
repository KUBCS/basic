pragma solidity ^0.8.14;
contract Condition {  
    address public owner;
    bool paused;// false
    uint public total;
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
    function pause()public onlyOwner{
        paused = true;
    }

    // function calculate(uint _x, uint _y)public {
    //     if(_x < 10){
    //         total = _x;
    //     }
    //     else{
    //         total = _y;
    //     }
    // }
    function calculate()public payable{
        require(!paused,"paused");
        if(!paused)
        {
            total = total + msg.value;
        }
        // else{
        //     revert();
        // }
    }
}