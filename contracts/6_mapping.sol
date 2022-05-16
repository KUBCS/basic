pragma solidity ^0.8.13;

// import "@openzeppelin/contracts/utils/Counters.sol";
contract Mapping {
    // mapping(address=>uint) public balances;
    // mapping(uint=>uint) public counter;
    mapping(uint=>string) private project;
    
    // using Counters for Counters.Counter;
    // Counters.Counter private totalProject;

    // constructor(){
    //     totalProject.increment();
    // }


    function getProject(uint _x)public view returns(string memory){
        return  project[_x];
    }
    function addProject(uint _x, string memory _nameProject) public{
        project[ _x] = _nameProject;
    }
    function removeProject(uint _x)public{
        delete project[_x];

    }


    // function getTotalProject()public view returns(uint){
    //     return totalProject.current();
    // }

    // function addProject(string memory _nameProject) public{
    //     project[totalProject.current()] = _nameProject;
    //     totalProject.increment();
    // }
    

    // function removeProject(uint _x)public{
    //     delete project[_x];
    //     totalProject.decrement();

    // }

 
    // function addCounter(uint _i) public{
    //     for(uint x = 1; x<=_i; x++){
    //         counter[x] = x;
    //     }
    // }

   // function addBalance(address _addr, uint _i) public{
    //     balances[_addr] = _i;

    // }


}