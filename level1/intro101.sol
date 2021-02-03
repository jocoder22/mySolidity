// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;

contract myFirstContract {

    // state variable and integer types
    // state variables are permanently stored on the Ethereum blockchain
    
    // numeric types are int and unit
    // uint => unsigned integers: only positive number
    // int => normal integres: both positive and negative numbers
    // uint usually defaults to uint256,
    // others are uint8, uint16, uint36
    
    uint firstMoney = 160000000;
    uint charges = 100;
    uint totalAmount = firstMoney - charges;
    
    // struct, way to create complex data type
    
    struct Accounts {
        string name;
        uint balance;
    }
    
    struct privateAccounts {
        string name;
        uint balance;
        string privateKey;
    }
    
    // Array, data collection
    // Public => other contracts will be able to read only
    // Public => solidity will automatically create a getter function
    // myAccount[] is dynamic array while myAccount[9] is fixed length array
    
    Accounts[] public customerAccounts;
    privateAccounts[] public privateCustomers;
    
    // functions, where the actions happens!
    // memory => passes arguments by reference e.g strings, structs, mappings, arrays
    // no memory => passes arguments by value e.g int, uint
    
    function accountCreator(string memory _name, unit _amount) public {
        // Accounts memory myAccount = Accounts(_name, _amount);
        customerAccounts.push(Accounts(_name, _amount));
    }
    
    // private => only visible within this contract
    function _privateAccountCreator(string memory _name, unit _amount, string _privateKey) private {
        privateCustomers.push(privateAccounts(_name, _amount, _privateKey));
    }
         
}
