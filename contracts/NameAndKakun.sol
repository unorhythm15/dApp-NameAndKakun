pragma solidity ^0.4.23;


contract NameAndKakunOwner {

  string	storedName;
  string storedKakun;

  address owner;

  // Execute when deployed
  constructor() public {
    owner = msg.sender;
  }

  // 修飾子
  modifier onlyOwner {
    require(msg.sender == owner);
    _;  // Execute the method with this modifier.
  }

  // setter of storedName
    function setStoredName(string _name) public onlyOwner {
    storedName = _name;
  }

  //getter of storedName
    function getStoredName() public view returns (string) {
    return storedName;
  }

  // setter of storedKakun
  function setStoredKakun(string _kakun) public onlyOwner {
    storedKakun = _kakun;
  }

  //getter of storedKakun
  function getStoredKakun() public view returns (string) {
    return storedKakun;
  }

}