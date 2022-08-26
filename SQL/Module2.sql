-- Module 2 – Where Clause:
-- Run the queries present in MySQL_Assignment_data file before proceeding to the assignments for this module
Use Tiger_db;

-- Retrieve the account ID, customer ID, and available balance for all accounts whose status equals 'ACTIVE' and whose available balance is greater than $2,500.
Select account_id, Cust_id ,avail_balance from account where status ="ACTIVE" and avail_balance>2500;

-- Construct a query that retrieves all accounts opened in 2002.
Select * from account where open_date like "2002-%%-%%";

-- Retrieve the account ID, available balance and pending balance for all accounts where available balance is not equal to pending balance.
Select account_id, Cust_id ,avail_balance, pending_balance from account where avail_balance <> pending_balance;


-- Retrieve account ID, Product code for the account ID’s 1,10,23,27
Select account_id, product_cd from account where account_id in (1,10,23,27);

-- Retrieve account ID, available balance from all those accounts whose available balance is in between 100 and 200.
Select account_id, avail_balance from account where avail_balance between 100 and 200;
