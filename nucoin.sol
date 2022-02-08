pragma solidity >=0.7.0 <0.9.0;

contract Coin {
    //state variables
    address public minter;
    mapping(address => uint256) public balances;

    //transaction sent event
    event Sent(address from, address to, uint256 amount);

    //constructor function, called once at deployment
    constructor() {
        minter = msg.sender;
    }

    //minting function, physically updates receiver's wallet
    function mint(address receiver, uint256 amount) public {
        //modifier to ensure sender is contract owner
        require(msg.sender == minter);
        //updates receiver's balance, adds given amount
        balances[receiver] += amount;
    }

    //errors, throws error if amount sent is higher than sender's balance
    error insufficientFunds(uint256 requested, uint256 available);

    //sending function, sends funds from
    function send(address receiver, uint256 amount) public {
        //condition to check funds
        if (amount > balances[msg.sender])
            //throw error if insufficient funds
            revert insufficientFunds({
                requested: amount,
                available: balances[msg.sender]
            });
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
