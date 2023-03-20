pragma solidity ^0.4.25;

// this contract is a bank!
contract SimpleBank {

    mapping (_____ => ___) private balances;
    address public owner;
    event LogDepositMade(address accountAddress, uint amount);

    constructor () public {
        owner = __._____;
    }

    // this function accepts funds and stores them in the bank
    function deposit() public payable returns (uint) {
        require((balances[___.____] + msg.value) >= balances[msg.sender]); // require that msg.value is a positive number

        balances[msg.sender] += msg.____;

        emit LogDepositMade(msg.sender, msg.value); // fire event

        return balances[msg.sender];
    }

    function withdraw(___ withdrawAmount) public returns (uint remainingBal) {
        require(withdrawAmount <= balances[msg.sender]);

        // why don't we transfer the funds to the sender here?
        balances[msg.sender] -= withdrawAmount;

        // why don't we need to check if the sender has enough funds to withdraw?
        msg.sender.transfer(______);

        return balances[msg.sender];
    }

    // this function returns the balance of the user
    function balance() view public returns (uint) {
        return ______[___.______];
    }
}