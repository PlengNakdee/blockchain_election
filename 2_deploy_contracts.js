var Election = artifacts.require('./Election.sol');

module.exports = function(deployer) {
    deployer.deploy(Election);
}
// bug, had to add extra line
