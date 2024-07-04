//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


interface  IFrog{
    function _name() external view returns(string memory);
    function _jump() external view returns(uint256);
}

interface Ijumper{
    function Jump() external returns(uint256);
}

contract FrogJump is IFrog,Ijumper{
    string public _name;
    uint256 public _jump;

    constructor(string memory name){
        _name = name;
    }

    function Jump() public returns(uint256){
        _jump++;
        return _jump;
    }
}