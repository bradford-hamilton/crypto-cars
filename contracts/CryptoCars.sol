pragma solidity ^0.4.19;

import "zeppelin-solidity/contracts/ownership/Ownable.sol";

contract CryptoCars is Ownable {
  string public message;

  function CryptoCars() {
    message = 'get this thing rolling';
  }

  function updateMessage(string _newMessage) public {
    message = _newMessage;
  }
}
