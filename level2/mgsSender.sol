// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.8.0;

contract my6thContract {

   mapping (uint => address) addressOwner;
   mapping (address => uint) cytoBalance;

    // msg.sender is the address of person or smart contract
    // that calls a function in a particular smart contract
    // can it in mapping, functions etc
    
    function _showOwner(uint _id, uint _amount) private returns (uint) {
        
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
