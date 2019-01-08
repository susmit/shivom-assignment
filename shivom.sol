pragma solidity ^0.5.2;

//author susmit
//assignment project shivom

contract Permission{
    
    //x grants permission to y
    mapping(address => address) xToy;
    
    function setPermission(address _add) public returns(bool _status){
        xToy[msg.sender] = _add;
        return true;
    }
    
    function getPermissionStatus(address _add) external view returns(bool _status){
        if(xToy[_add] == msg.sender ) {
          return true;
        } else {
          return false; 
        }
    }
    
    
}
