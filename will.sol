pragma solidity ^0.5.7;

contract Will {
    address owner;
    uint256 fortune;
    bool deceased;

    constructor() public payable {
        owner = msg.sender; //msg sender represents address that is being called
        fortune = msg.value; //msg value tells us how much ether is beig sent
        deceased = false; //defaults to false
    }

    //create modifier so the only person who can call the contract is the owner
    modifier onlyOwner() {
        require(msg.sender == owner);
        _; //the underscore here means that if this condition is true, keep executing the function, else stop
    }

    //create modifier so we only allocate funds if deceased === true
    modifier mustBeDeceased() {
        require(deceased == true);
        _;
    }

    //declare an array called familyWallets, make it payable and make it's type address
    //list of family wallets
    address payable[] familyWallets;

    //to map through an array, use the mapping keyword
    //mapping through the inheritance
    mapping(address => uint256) inheritance;

    //set inheritance for each address
    function setInheritance(address payable wallet, uint256 amount)
        public
        onlyOwner
    {
        //to add wallets to the family wallets
        familyWallets.push(wallet);
        inheritance[wallet] = amount;
    }

    //pay each family member based on their wallet address
    function payout() private mustBeDeceased {
        for (uint256 i = 0; i < familyWallets.length; i++) {
            //transferring the funcds from the contract address to the receiver address
            familyWallets[i].transfer(inheritance[familyWallets[i]]);
        }
    }

    //Oracle switch similuation
    //state change/trigger function when deceased state changes
    function hasDeceased() public onlyOwner {
        deceased = true;
        payout();
    }
}
