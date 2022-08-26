-- Module 3 - Operators and Functions:
-- Construct a query that counts the number of rows in the account table.
Select count(*) from account;

-- Retrieve the first two rows from account table
Select * from account limit 2;

-- Retrieve the third and fourth row from account table.
Select * from account limit 2 offset 2;

-- retrieve year of birth, month of birth, day of birth, weekday of birth for all the individuals from the table individual
select year(birth_date), month(birth_date), day(birth_date), weekday(birth_date) from individual;

-- Write a query that returns the 17th through 25th characters of the string 'Please find the substring in this string'.
select substring('Please find the substring in this string',17,1) as "17th Character", substring('Please find the substring in this string',25,1) as "25th Character";

-- Write a query that returns the absolute value and sign (-1, 0, or 1) of the number -25.76823.Also return the number rounded to the nearest hundredth.
select round( abs(-25.76823), 2), sign(-25.76823);

-- Write a query that adds 30 days to the current date.
select date_add(curdate(),Interval 30 day) ;

-- Retrieve the first three letters of first name and last three letters of last name from the table individual.
select left(fname, 3), right(lname, 3) from individual;

-- Retrieve the first names in Upper case from individual whose first name consists of five characters.
select upper(fname) from individual where length(fname)=5;

-- Retrieve the maximum balance and average balance from the account table for customer ID = 1.
select avg(avail_balance), max(avail_balance) from account where cust_id = 1;