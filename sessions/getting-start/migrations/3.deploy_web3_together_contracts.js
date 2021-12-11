const Web3Together = artifacts.require("./Web3Together.sol");

module.exports = (deployer) => {
  deployer.deploy(Web3Together, 1639198004);
}
