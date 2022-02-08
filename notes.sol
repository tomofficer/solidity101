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

//THE PAYABLE KEYWORD : allows the function to send and receive Ether; 

//MODIFIERS in solidity allow you to set conditional functions, etc

//MAPPING :to map through an array, use the mapping keyword

//.transer() ===> IMPORTANT SOLIDITY METHOD, allows for the transfer of ether to be applied to a list, variable, etc

//ORACLE ===> similar to state or onChange in Solidity

//ADDRESS ===> address is a variable type that holds up to 20 bytes...which represents the size of an ethereum address
  //example ===> the below creates an addres for an array of payable wallets
    //address payable[] wallets

//MAPPING ===> mapping holds the reference to a value, they act as hash tables which consist of key types and corresponding value type pairs
  //syntax example ===> 
    // mapping(address => uint) public balances;
 

 