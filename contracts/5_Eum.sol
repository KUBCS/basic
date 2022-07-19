pragma solidity ^0.8.14;
contract Enum {
    enum Days{
        sun,
        mon,
        tue,
        wed,
        thur,
        fri,
        sat
    }
    Days public day = Days.mon;
    // Days[] public weekend = [Days.sat,Days.sun];

    enum Status{
        Pending,//0
        Shipped,//1
        Accepted,//2
        Rejected//3
    }
    Status private status;
    function getStatus()view external returns(Status){
        return status;
    }
    function Ship()public {
        require(status == Status.Pending,"The state has to be a Pending before");
        status = Status.Shipped;
    }
    function Accept()public {
        require(status == Status.Shipped, "The state has to be a Shipped before");
        status = Status.Accepted;
    }
    function Rejected()public {
        require(status == Status.Shipped, "The state has to be a Shipped before");
        status = Status.Rejected;
    }

}