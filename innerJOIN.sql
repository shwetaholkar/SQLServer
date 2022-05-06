--inner join example

select jobs.job_title,
	count(emp.employee_id) as 'Number of employees',
	avg(emp.salary) as 'Average Salary'
from
	employees emp
inner join 
	jobs
on
	emp.job_id=jobs.job_id
group by 
	jobs.job_title
having 
   count (emp.employee_id)>=3

--show the departments with max number of employees

select 
	dep.department_name,
	count(emp.employee_id) as empCount
from
	employees emp
inner join
	departments dep
on
	emp.department_id=dep.department_id
group by
	dep.department_name
having 
	count(emp.employee_id)=
	(
	select 
		max(a.empCount)
	from
	(
		select 
			dep.department_name,
			count(emp.employee_id) as empCount
		from
			employees emp
		inner join
			departments dep
			on
				emp.department_id = dep.department_id
			group by 
				dep.department_name
			)a
		)


