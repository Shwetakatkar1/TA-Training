-- Module 5 – Joins and sub-query:

-- Retrieve first name, title and department name by joining tables employee and department using department id.
select fname, title, name from employee e join department d on e.dept_id=d.dept_id; 

-- Left join table product with table product_type (product_type left join product) to retrieve product_type.name and product.name from the tables.
select p.name, pt.name  from product_type pt left join product p on pt.product_type_cd=p.product_type_cd;

-- Using inner join, Retrieve the full employee name (fname followed by a space and then lname), Superior name (using superior_emp_id) from the employee table.
-- Ex, for Susan Barker, Michael is superior
select e1.fname, e1.lname, e2.fname as Superior from employee e1 inner join employee e2 on e1.emp_id=e2.superior_emp_id;

-- Using subquery, retrieve the fname and lname of the employees whose superior is ‘Susan Hawthorne’ from employee
select fname, lname from employee where superior_emp_id =(select emp_id from employee where fname="Susan" and lname ="Hawthorne");

-- In employee table, retrieve the superior names (fname and lname) present in department 
-- 1. A person is superior if he/she is superior to atleast one person in the given department. Use sub-query concept. 
select * from employee e1 where e1.dept_id=1 and exists(select * from employee e2 where e1.emp_id=e2.superior_emp_id);
