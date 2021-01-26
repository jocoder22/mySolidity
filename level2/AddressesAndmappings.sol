pragma solidity >=0.7.0 <0.8.0;

contract my5thContract {

    struct customerAccount {
        string name;
        int balance;
    }
    
    // Address is the account identifier for Ethereum users
    // key: address, value: uint
    mapping(address => uint) private customerbalance;
    
    // mapping is key-value method for data storage and look-up
    // key: uint, value: string
    mapping(uint => string) customerIdmapcustomerName;
}
