pragma solidity ^0.8.7;

contract MyContract {
    
    string public stringValue = "myValue";
    bool public myBool = true;
    int public myInt = 1;
    
    enum State { Waiting, Ready, Active }
    State public state;
    
    constructor() public {
        state = State.Waiting;
        
    }
    
    function activate() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool)  {
        return state == State.Active;
    }
    
}