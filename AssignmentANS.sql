select * from countries;
select * from employees;

/*1. Write a query to display the names (first_name, last_name) using alias 
name �First Name", "Last Name" � Employee table */

select emp.first_name,emp.last_name from employees emp;

/* 2. Write a query to get unique jobId from employee table*/

select distinct job_id from employees;

/* 3. Write a query to get all employee details from the table order by first 
name, descending.*/

select * from employees order by first_name desc;

/* 4. Write a query to get the names (first_name, last_name), salary, PF of 
all the employees (PF is calculated as 15% of salary).*/

select first_name,last_name,salary,15*salary/100 as PF from employees ;

/*5. Write a query to get the employee ID, names (first_name, last_name), 
salary in ascending order of salary. */

select * from employees order by employee_id,first_name,last_name,salary asc ;

/* 6. Write a query to get the total salaries payable to employees*/

select sum(salary) from employees;

/* 7. Write a query to get the maximum and minimum salary from 
employees table.*/

select max(salary),min(salary) from employees;

/* 8. Write a query to get the average salary and number of employees in 
the employees table.*/

select avg(salary), count(*) from employees;

/* 9. Write a query to get the number of employees working with the 
company.*/

select count(*) from employees;

/*10. Write a query to get the number of jobs available in the employees 
table */
select count(distinct job_id) from employees;

/*11. Write a query get all first name from employees table in upper case. */

select upper(first_name) from employees;

/* 12. Write a query to get the first 3 characters of first name from employees 
table.*/
select substring(first_name,1,3) from employees;

/*13. Write a query to calculate 171*214+625. */

select 171*214+625 result;

/*14. Write a query to get the names (for example Ellen Abel, Sundar Ande 
etc.) of all the employees from employees table.*/

select concat(first_name,' ',last_name) from employees;

/*15. Write a query to get first name from employees table after removing 
white spaces from both side */

select first_name from employees;

/*16. Write a query to get the length of the employee names (first_name, 
last_name) from employees table.*/

select first_name,last_name, datalength(first_name)+datalength(last_name) from employees;

/*17. Write a query to check if the first_name fields of the employees table 
contains numbers. */

select * from employees where first_name like '[0-9]';

/* 18. Write a query to select first 10 records from a table*/

select top 10 * from employees;

/* 19. Write a query to get monthly salary (round 2 decimal places) of each 
and every employee*/

select first_name, last_name, round(salary/12,2) as 'Monthly Salary' from employees;

