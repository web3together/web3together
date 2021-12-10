const HelloWorld = artifacts.require("./Web3Together.sol");

module.exports = (deployer) => {
  const openDate = 1639191600; // using timestamp. https://www.epochconverter.com/
  deployer.deploy(HelloWorld, 1639191600);
}
