//import solidity version greater than 7.0 less than 9.0
pragma solidity >=0.7.0 <0.9.0;

//NOTES :

//What is a smart contract?
//A smart contract in Solidity is a collection of code and data that resides at a specific address on the Ethereum blockchain

//A smart contract should be able to 1. recieve data, 2. store data and 3. return the data back

//Solidity syntax
//use "contract" keyword, followed by contract name, followed by curly braces which opens up an object to store our code and data

//Syntax examples in Solidity, the below defines a contract, and shows three variable types and how to define them
// contract simpleStorageExample {
//     //define an integer variable called storeData
//     uint storeData = '23'
//     //define a string variable called names
//     string names = 'tom'
//     //define a boolean variable called switchON
//     bool switchON = true
// }

//KEYWORDS IN SOLIDITY
//THE PUBLIC KEYWORD : enables visibility so we can call the function OUTSIDE of the current contract
//THE PRIVATE KEYWORD : limits visibility so the function CANNOT be called outside of the current contract
//THE VIEW KEYWORD : a global modifier that tells the current function that it CANNOT modify it's state
//THE RETURNS KEYWORD : ensures the function returns the specified variable type, in the case below, an integer (uint)


//smart contract lesson #1, setters and getters, first simple smart contract
contract simpleStorage {
  uint storeData

//setter function, sets data
  function set(uint x) public {
    storeData = x;
  }
  //getter function, gets data
function get(uint x) public view returns (uint) {
  return storeData;
  }
}


