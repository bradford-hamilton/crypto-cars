var CryptoCars = artifacts.require("./CryptoCars.sol");

module.exports = function(deployer) {
  deployer.deploy(CryptoCars);
};
