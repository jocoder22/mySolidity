// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.8.0;


contract my5thContract {

    struct customerAccount {
        string name;
        int balance;
    }
    
    // Address is the account identifier for Ethereum users
    // key tpye: address, value type: uint
    mapping(address => uint) private customerbalance;
    
    // mapping is key-value method for data storage and look-up
    // key type: uint, value type: string
    mapping(uint => string) customerIdmapcustomerName;
}
