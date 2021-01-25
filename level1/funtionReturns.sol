// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;



contract my2ndContract {

    struct customerAccount {
        string name;
        int balance;
    }

    // pure function, don't access the data on the App
    // private => only visible within this contract
    // returns => the type of return value
    
    function _totalAmount(unit _amountA, unit _amountB) private pure returns (uint){
        return _amountA + _amountB;
    }
    
    // view => for display only, does not change the state or database
    
    funtion _seebalance(customerAccount _account) private view returns(string){
        return _account.name;
    }
    
    
       
}
