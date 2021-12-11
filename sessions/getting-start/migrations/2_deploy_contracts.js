const HelloWeb3Together = artifacts.require("./HelloWeb3Together.sol");

module.exports = (deployer) => {
  deployer.deploy(HelloWeb3Together);
}
