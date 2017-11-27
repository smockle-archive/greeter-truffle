# Greeter

Getting started with Truffle, Ganache & Truffle/Assert

## Setup

```Bash
# Install dependencies
$ npm i -g truffle ganache-cli

# Create a new truffle project
$ truffle init

# Start private blockchain & network
$ ganache-cli

# Configure truffle project to use private blockchain & network
# Edit `truffle.js`:
#   networks: {
#     development: {
#       host: "localhost",
#       port: 8545,
#       network_id: "*" // Match any network id
#     }
#   }

# Run tests
$ truffle test
```

## Additional Resources

* http://truffleframework.com/docs/

* https://github.com/trufflesuite/ganache-cli#welcome-to-ganache-cli

* https://github.com/vjrantal/truffle-greeter

* https://medium.com/level-k/testing-smart-contracts-with-truffle-7849b3d9961
