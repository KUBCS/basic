pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Counters.sol";



contract ATM{
    uint256 public totalBalance;
    uint256 private totalSupply;
    using Counters for Counters.Counter;

    Counters.Counter private totalCustomer;
    mapping(address => uint) public balances;

    constructor(uint256 _totalSupply){
        totalSupply = _totalSupply;
    }


    function deposit() public payable {
        require(msg.value > 0, "Must deposit more than 0");

        balances[msg.sender] += msg.value;
        totalBalance += msg.value;
    }

    function withdraw(uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "You not enough fund");

        balances[msg.sender] -= _amount;
        totalBalance -= _amount;

        payable(msg.sender).transfer(_amount);
    }

    function balance() public view returns (uint256) {
        return address(this).balance;
    }




}