// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.8.0;

contract my4thContract {

  // event declaration
  // events are way to communicate something that occured on the blockchain
  // to the Apps front-end, showing that something happened to the blockchain
  
  event newAccountCreated(string name, uint amount, uint AccountNumber);

  struct customerAccount {
        string name;
        uint balance;
    }
    
    // create a struct customerAccount array i.e a collection
    customerAccount[] private Accounts;
    
    function _createAccount(string memory _name, uint _amount) private {
    
        // the push method returns the current length of the collection, it's zero based
        // after adding(pushing) to the array
        
        customerAccount memory newCustomer = customerAccount(_name, _amount);
        uint acctNumber = Accounts.push(newCustomer);
        // uint newAccount = Accounts.push(customerAccount(_name, _amount)) - 1;
        
        // emit will authomatically activate the event
        emit newAccountCreated(_name, _amount, acctNumber);
    }
    
    
 }
