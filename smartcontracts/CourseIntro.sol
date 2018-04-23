pragma solidity ^0.4.17;

contract CourseIntro {
    
    string public fName;
    string constant type1 ="study";
    
    uint public age;
    
    // function CourseIntro() public{
    //     fName = "Gumpa";
    //     age = 26;
    // }
    
    
    event Instructor(string fName, uint age);
    
    function setInstructor(string _name, uint _age) public {
        fName = _name;
        age = _age;
        emit Instructor(_name, _age);
    }
    
    function getInstructor() public constant returns (string, uint){
        return (fName, age);
    }
}

