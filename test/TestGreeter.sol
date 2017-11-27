pragma solidity ^0.4.18;

import "truffle/Assert.sol";
import "../contracts/Greeter.sol";

contract TestGreeter {
    function testGreet() public {
        Greeter instance = new Greeter("Test Greeter.greet()");
        bytes32 expected = keccak256("Test Greeter.greet()");
        Assert.equal(instance.greet(Greeter.Testing.True), expected, "returns expected greeting");
    }
}