/*1. Create stored procedure to show the average 
salary of employees department wise (TestDB) */

--create procedure avgSalary
--as
--begin
--	select avg(salary) as averageSalary,dept.department_name
--from 
--	employees emp
--inner join 
--	departments dept
--on 
--	emp.department_id=dept.department_id
--group by
--	dept.department_name
--end;

--execute avgSalary

--alter procedure avgSalary
--as 
--begin
--	select dept.department_name,avg(salary) as averageSalary
--from 
--	employees emp
--inner join 
--	departments dept
--on 
--	emp.department_id=dept.department_id
--group by
--	dept.department_name
--end;

/* 2. CREAT a stored procedure with parameters 
a. Pass brand name 
b. Declare local variable in SP and set the brandId of the passed brandName 
c. Update the list_price of all products belong to the above brandid to increase by .1% 
*/

--create procedure brandProduct(
--@brandName as varchar(255)='Trek'
--)
--as
--begin
--select 
--	brand_name 
--from 
--	[production].[brands]
--where 
--	brand_name=@brandName
--end;

alter procedure brandProduct
(
	@brandName as varchar(255)
)
as
begin
declare 
	@brandID int;
select 
	@brandID=brand_id 
from 
	[production].[brands]
where 
	brand_name=@brandName
--Update the list_price of all products belong to the above brandid to increase by .1% 
update
	[production].[products]
set
	list_price = list_price + list_price*1/100 
where 
	brand_id=@brandID

select * from [production].[products]  where brand_id=@brandID
end;

--execute brandProduct 'Surly'

--select * from [production].[brands]


