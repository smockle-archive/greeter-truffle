pragma solidity ^0.4.18;

contract Mortal {
    // Define variable owner of type address
    address owner;

    // This function is executed at initialization and sets the owner of the contract
    function Mortal() public { owner = msg.sender; }

    // Function to recover the funds on the contract
    function kill() public {
        if (msg.sender == owner) {
            selfdestruct(owner);
        }
    }
}

contract Greeter is Mortal {
    // Define variable greeting of type string
    string greeting;

    // This runs when the contract is executed
    function Greeter(string _greeting) public {
        greeting = _greeting;
    }

    // Main function
    function greet() public constant returns (string) { return greeting; }

    // Workaround to enable string comparison in tests
    // Related: https://ethereum.stackexchange.com/a/3788/23663
    enum Testing { True }
    function greet(Testing) public constant returns (bytes32) { return keccak256(greeting); }
}