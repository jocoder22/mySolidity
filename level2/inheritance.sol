// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.8.0;

import "require.sol";

contract my6thContract_son is my6thContract {

    uint monthlypay = 1000;

    if(mgs.sender == owner){
        withdaraw(monthlypay);
    }
}
