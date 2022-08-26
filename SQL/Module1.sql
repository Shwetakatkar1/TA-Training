-- Module 1 - Basic Statements:

-- Create a database named training.
Create Database if not exists training;
Use training;

-- Create a table ‘demography’ with the following columns inside training database
-- CustID integer auto-increment 
-- Name varchar(50)
-- Age integer
-- Gender varcahr(1)
Create Table demography(CustID integer primary Key auto_increment, Name varchar(50), Age int, Gender varchar(1));

-- Insert the following values into the table ‘demography’
-- Name=’John’, Age=25, Gender=’M’
Insert Into demography(Name, Age, Gender) values ("John",25,"M");

-- Insert the following values into the table ‘demography’ using a single query
-- Name = ’Pawan’, Age = 26, Gender=’M’
-- Name = ‘Hema’, Age=31, Gender=’F’
Insert Into demography(Name, Age, Gender) values ("Pawan",26,"M"),("Hema", 31, "F");

-- Insert the following value into the table ‘demography’
-- Name = ‘Rekha’, Gender=’F’
Insert Into demography(Name, Gender) values ("Rekha","F");

-- Retrieve all  rows and columns from table ‘demography’
Select * from demography;

-- Update the age to NULL for Name = ‘John’. Note that the NULL used here is MySQL NULL and not string NULL.
update demography set Age=Null where Name="John";

-- Retrieve all the rows from table ‘demography’ where Age is NULL.
Select * from demography where age is null;

-- Delete all the rows from the table ‘demography’.
delete  from demography;

-- Drop the table ‘demography’
drop table demography;





