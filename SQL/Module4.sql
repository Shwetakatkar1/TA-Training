-- Module 4 – Group by:
use Tiger_db;
-- Construct a query to count the number of accounts held by each customer. Show the customer ID and the number of accounts for each customer.
select cust_id, count(account_id) from account group by cust_id;

-- Modify the previous query to fetch only those customers who has more than two accounts.
select cust_id, count(account_id) as acct_count from account  group by cust_id having acct_count>2;

-- Retrieve first name and date of birth from individual and sort them from youngest to oldest.
select fname, birth_date from individual order by birth_date;

-- From the account table, retrieve the year of account opening (year part of open_date) and average available balance (avail_balance) present in the accounts that are opened in each calendar year. Retrieve the year only if the average balance is greater than 200. Also sort the results based on calendar year.
select year(open_date) as oyear, avg(avail_balance) from account group by oyear order by oyear;

-- Retrieve the product code and maximum pending balance for the product codes (CHK, SAV, CD)  present in account table. 
select product_cd, max(avail_balance) from account group by product_cd;