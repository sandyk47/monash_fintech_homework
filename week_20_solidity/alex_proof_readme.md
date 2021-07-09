# Unit 20 - Homework - Alex Work

## Level 1 - Associate Profit Splitter Results

<br>

![AK-proof](Images/1_proof.gif)

Below are tables summarising the rough balances for the three accounts in the contract before and after account employee_three deposits 9 eth into the account.


| Account           | Before txn  | After txn  |Difference |
| ---------         |:-----------:| ----------:|----------:|
| employee_one      | 98          | 101        |+3         |
| employee_two      | 69          | 72         |+3         |
| employee_three    | 92          | 86         |-6         |


<br>

***

<br>


## Level Two: The `TieredProfitSplitter` Results

<br>

![AK-proof](Images/2_proof.gif)

Below are tables summarising the rough balances for the three accounts in the contract before and after account employee_three deposits 10 eth into the account.


| Account  | Before txn  | After txn  |Difference |
| ---------|:-----------:| ----------:|----------:|
| ceo      | 117.4       | 123.4      |+6         |
| cto      | 76.3        | 77.8       |+3         |
| bob      | 68.45       | 59.95      |-8.5       |


<br>

***

<br>


## Level Three: The `DeferredEquityPlan` Results


<br>

![AK-proof](Images/3_proof.gif)

The screenshot above commences straight after the contract has been deployed. It showcases the version of the code with a 'fakenow' timestamp as well as a 366 day fastforward function. You can clearly see:
* Following the initial deployment (in the first year), you are unable to distribute any shares, as they have not vested yet.
* Shares can only be distributed after hitting the 'fast forward one year' function.
* After distributing all 1000 shares, no more shares can be distributed.


