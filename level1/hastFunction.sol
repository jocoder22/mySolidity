// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.8.0;

contract my3rdContract {

    struct customerAccount {
        string name;
        int balance;
    }
    
    uint betta = 9050;
    
    function _randGenerator(string memory _str) private view returns(uint) {
        uint randnumber = uint(keccak256(abi.encodePacked(_str)));
        return randnumber % betta;
    }
    
    
}
