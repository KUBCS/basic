pragma solidity ^0.8.13;
contract Loop {

    function sumation_For(uint256 _x)public view returns(uint256){
        uint256 s;
        for(uint256 i = 1; i<=_x; i++){
            s+=i;
        }
        return s;
    }

    function sumation_While(uint256 _x)public view returns(uint256){
        uint256 i = 1;
        uint256 s;
        while(i<=_x){
            s+=i;
            i++;
        }
        return s;
    }
    function _break(uint256 _x)public view returns(uint256){
        uint256 i = 1;
        uint256 s;
        while(i<=_x){
            if (i == 5){
                break;
            }
        }
        i++;
        s+=i;
        return s;
    }
    function _continue(uint256 _x)public view returns(uint256){
        uint256 i = 0;
        uint256 s;
        while(i<_x){
        i++;
            if (i == 3){
                // 1+2+4+5
                continue;
            } 
        s+=i;
        }
        return s;
    }



}