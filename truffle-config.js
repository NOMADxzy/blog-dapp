const path = require("path");

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
    compilers: {
        solc: {
            version: "^0.4.24"
        }
    },

    contracts_build_directory: path.join(__dirname, "client/src/contracts"),
  networks: {
    develop: {
      port: 8545
    },haha:{
        host:"localhost",
          port: 8545,
          network_id:'*',
          gas: 6600000
      }
  }
};
