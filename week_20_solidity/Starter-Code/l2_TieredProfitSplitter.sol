pragma solidity ^0.5.0;

// lvl 2: tiered split
contract TieredProfitSplitter {
    address payable ceo; // ceo
    address payable cto; // cto
    address payable bob; // bob

    constructor(address payable _ceo, address payable _cto, address payable _bob) public {
        ceo = _ceo;
        cto = _cto;
        bob = _bob;
    }

    // Should always return 0! Use this to test your `deposit` function's logic
    function balance() public view returns(uint) {
        return address(this).balance;
    }

    function deposit() public payable {
        uint points = msg.value / 100;
        uint total;
        uint amount;

        // @TODO: Calculate and transfer the distribution percentage
        // Step 1: Set amount to equal `points` * the number of percentage points for this employee
        // Step 2: Add the `amount` to `total` to keep a running total
        // Step 3: Transfer the `amount` to the employee
        // @TODO: Repeat the previous steps for `employee_two` and `employee_three`
        // Your code here!
        
        // Employee One
        amount = points * 60;
        total += amount;
        ceo.transfer(amount);
        
        // Employee Two
        amount = points * 25;
        total += amount;
        cto.transfer(amount);

        // Employee Two
        amount = points * 15;
        total += amount;
        bob.transfer(amount);
        
        ceo.transfer(msg.value - total); // ceo gets the remaining wei
    }

    function() external payable {
        deposit();
    }
}
