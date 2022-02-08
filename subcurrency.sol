pragma solidity >=0.7.0 <0.9.0;

//this contract allows only the creator to create new coins
//anyone can send coins to each other without need for registering with a username/password, all you need is an eth keypair

contract Coin {
    //state variables
    address public minter;
    mapping(address => uint256) public balances;

    event Sent(address from, address to, uint256 amount);

    //constructor function
    constructor() {
        minter = msg.sender;
    }

    //make new coins and send them to an address
    function mint(address receiver, uint256 amount) public {
        //make sure only the owner can send these coins
        require(msg.sender == minter);
        balances[receiver] += amount;
    }

    //send any amount of coins to an existing address

    error insufficientBalance(uint256 requested, uint256 available);

    function send(address receiver, uint256 amount) public {
        if (amount > balances[msg.sender])
            revert insufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
