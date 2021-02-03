// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.8.0;

contract my6thContract {

   // require will throw an error and stop the function if
   // the condition is false

   mapping (uint => address) addressOwner;
   mapping (address => uint) cytoBalance;

    // msg.sender is the address of person or smart contract
    // that calls a function in a particular smart contract
    
    function _showOwner(unit _id, uint _amount) private view returns (string memory) {
        // condition must be true for the function to run
        // here the cytobalance of the caller must be at least 30
        require(cytoBalance[msg.sender] >= 30);
        
        // Assign current Id to calling address
        addressOwner[_id] = msg.sender;
        
        // store the _amount under the calling address
        cytoBalance[msg.sender] = _amount;
        
        // increase the _amount under the calling address by 1
        cytoBalance[msg.sender]++;
        
        // return or retrieve the amount store for the caller
        return cytoBalance[msg.sender];
        
    }


}
