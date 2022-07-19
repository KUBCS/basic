pragma solidity ^0.8.14;

contract Mapping {
    // mapping(address=>uint) public balances;
    // mapping(uint=>uint) public counter;
    mapping(uint=>string) public project;
    uint public count ;



    // function addProject(uint _x, string memory _nameProject) public{
    //     project[ _x] = _nameProject;
    // }
    // function removeProject(uint _x)public{
    //     delete project[_x];
    // }
    function getTotalProject()public view returns(uint){
        return count;
    }

    function addProject(string memory _nameProject) public{
        count += 1;
        project[count] = _nameProject;
    }
    
    function removeProject(uint _x)public{
        delete project[_x];
        for(uint i = _x; i < count; i++){
            project[i] = project[i+1];
        }
        count -= 1;
    }



    // function addCounter(uint _i) public{
    //     for(uint x = 1; x<=_i; x++){
    //         counter[x] = x;
    //     }
    // }

   // function addBalance(address _addr, uint _i) public{
    //     balances[_addr] = _i;
    // }



}