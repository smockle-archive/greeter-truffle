const Greeter = artifacts.require("Greeter");

contract("Greeter", accounts => {
  it(".greet()", async () => {
    const instance = await Greeter.new("Test Greeter.greet()");
    const greeting = await instance.greet();
    assert.equal(greeting, "Test Greeter.greet()", "returns expected greeting");
  });
});
