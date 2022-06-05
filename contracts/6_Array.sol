pragma solidity ^0.8.14;
contract array {  
    uint[] arr;
    uint[] arr2 = [1, 2, 3];
    uint256[3] arr3;


    function getArr() public view returns (uint[] memory) {
        return arr;
    }
    function getArr2() public view returns (uint[] memory) {
        return arr2;
    }
    function getArr3() public view returns (uint[3] memory) {
        return arr3;
    }
    function push(uint i) public {
        // Append to array
        // This will increase the array length by 1.
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        // This will decrease the array length by 1
        arr.pop();
    }
    function get(uint i) public view returns (uint) {
        return arr[i];
    }
}