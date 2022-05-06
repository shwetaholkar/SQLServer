--inner join with 3 tables

select 
	department_name,first_name + last_name as 'Employee Name',job_title
from
	employees
inner join 
	departments
on
	employees.department_id=departments.department_id
inner join 
	jobs
on 
	employees.job_id=jobs.job_id
	



	
