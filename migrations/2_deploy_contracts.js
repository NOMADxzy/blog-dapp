var SimpleStorage = artifacts.require("./SimpleStorage.sol");
var Signup = artifacts.require("./Signup.sol");

module.exports = function(deployer) {
  deployer.deploy(SimpleStorage);
  deployer.deploy(Signup);
};
