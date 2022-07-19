pragma solidity ^0.8.14;
  
// Creating a contract
contract eventExample {
  
    // Declaring state variables
    uint256 public value = 0;
  
    // Declaring an event
    event Increment(address adcontract, address owner, uint a, uint b);
    event SetVal(address owner, uint a);
    event LogString(string s);

    // Defining a function for logging event 
    function getValues(uint _a, uint _b) public {
        emit Increment(address(this) ,msg.sender, _a, _b); 
        value = _a + _b;
    }
    
    function setValue(uint _a) public {
        emit SetVal(msg.sender ,_a);
        value = _a;
    }

    function eventString(string memory _string) public {
        emit LogString(_string);
    }
}