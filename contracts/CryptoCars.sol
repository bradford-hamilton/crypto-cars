pragma solidity ^0.4.19;

import "zeppelin-solidity/contracts/ownership/Ownable.sol";
import "zeppelin-solidity/contracts/math/SafeMath.sol";

contract CryptoCars is Ownable {
  using SafeMath for uint256;

  uint256 carDnaDigits = 16;
  uint256 carDnaModulus = 10 ** carDnaDigits;

  struct Car {
    string name;
    uint256 carDna;
  }

  Car[] public cars;

  event NewCar(uint256 carId, string name, uint256 carDna);

  mapping(uint256 => address) public carToOwner;
  mapping(address => uint256) public ownerCarCount;

  function createCar(string _name) public onlyOwner {
    uint256 _carDna = _generateRandomCarDna(_name);
    uint256 id = cars.push(Car(_name, _carDna));

    carToOwner[id] = msg.sender;
    ownerCarCount[msg.sender] = ownerCarCount[msg.sender].add(1);

    NewCar(id, _name, _carDna);
  }

  function _generateRandomCarDna(string _string) private view returns (uint256) {
    uint rand = uint(keccak256(_string));

    return rand % carDnaModulus;
  }

  function carsLength() public view returns (uint256) {
    return cars.length;
  }
}
