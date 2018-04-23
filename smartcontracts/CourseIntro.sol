pragma solidity ^0.4.17;

contract CourseIntro {
    
    string public fName;
    string constant type1 ="study";
    address owner;
    
    uint public age;
    
    function CourseIntro() public{
        owner = msg.sender;
    }
    
    event Instructor(string fName, uint age);
    
    modifier ownerOnly(uint _age){
        require(msg.sender == owner && _age>=25);
        _;
    }
    
    function setInstructor(string _name, uint _age) ownerOnly(_age) public {
        fName = _name;
        age = _age;
        emit Instructor(_name, _age);
    }
    
    function getInstructor() public constant returns (string, uint){
        return (fName, age);
    }
}

