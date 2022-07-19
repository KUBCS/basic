pragma solidity ^0.8.14;
contract Loop {
    function sumation_For(uint256 _x)public view returns(uint256){
        uint256 s;
        // x = 10
        // i = 1+2+3+4+5+6+7+8+9+10   // 11 x
        for(uint256 i = 1; i<=_x; i++){
            s = s + i ;
            //  s += 1; 
        }
        return s;
    }

    function sumation_While(uint256 _x)public view returns(uint256){
        uint256 i = 1;
        uint256 s;
        // x = 10
        // i = 1+2+3+4+5+6+7+8+9+10  // 11 x
        while(i <= _x){
            s +=i ;
            i++;
        }
        return s;
    }
    function _break(uint256 _x)public view returns(uint256){
        uint256 i = 1;
        uint256 s;
        // x = 10
        //  1+2+3+4
        while(i<=_x){
            // i == 5
            if (i == 5){
                break;
            }
        s += i;
        i++;
        }
        return s;
    }
    function _continue(uint _x)public view returns(uint256){
        uint i = 0;
        uint s;
        //x = 5 
        while(i < _x){
            // 1 + 2 + 4 + 5
            i++;
            // i == 3
            if(i == 3){
                continue;
            }
        s += i;
        }
        return s;
    }


}