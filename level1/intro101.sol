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
    unit charges = 100;
    unit totalAmount = firstMoney - charges;
    
    // struct, way to create complex data type
    
    struct myAccount{
        string name;
        uint balance;
    }
    
    // Array, data collection
    // Public => other contracts will be able to read only
    // Public => solidity will automatically create a getter function
    
    myAccount[] public customerAccounts;
       
    

}
