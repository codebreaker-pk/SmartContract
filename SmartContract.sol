//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    uint public value;

    function setValueWithRequirement(uint _value) external {
        require(_value > 0, "Value must be greater than zero.");
        value = _value;
    }
    function setValueWithAssertion(uint _newValue) external {
        uint diff = _newValue -value;
        assert(diff>0 && diff ==value);
        value = _newValue;
    }
    function withdrawWithRevert()external {
        uint amount = value;
        value = 0;
        if (amount==0){
            revert("Withdraw reverted.Amount is Zero");
        }
    }
}
