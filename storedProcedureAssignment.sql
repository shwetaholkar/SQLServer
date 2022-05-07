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

--alter procedure brandProduct
--(
--	@brandName as varchar(255)
--)
--as
--begin
--declare 
--	@brandID int;
--select 
--	@brandID=brand_id 
--from 
--	[production].[brands]
--where 
--	brand_name=@brandName
----Update the list_price of all products belong to the above brandid to increase by .1% 
--update
--	[production].[products]
--set
--	list_price = list_price + list_price*1/100 
--where 
--	brand_id=@brandID

----select * from [production].[products]  where brand_id=@brandID
--end;

--execute brandProduct 'Surly'

--select * from [production].[brands]

/*3. Create a log table for customers. Apart from all the fields of customer it should also have 
datetime of the operation performed 
a. Write trigger to log the delete of customer 
b. Write trigger to log the insert of customers */

--CREATE TABLE sales.customer_logs(

--    change_id INT IDENTITY PRIMARY KEY,

--    [customer_id] INT NOT NULL,

--    [first_name] VARCHAR(255) NOT NULL,

--    [last_name] VARCHAR(255) NOT NULL,

--    [phone] varchar(25) NOT NULL,

--    [email] VARCHAR(255) NOT NULL,

--    [street] VARCHAR(255) NOT NULL,

--	[city] VARCHAR(255) NOT NULL,

--	[state] VARCHAR(255) NOT NULL,

--	[zip_code] int NOT NULL,

--    updated_at DATETIME NOT NULL,

--    operation CHAR(3) NOT NULL,

--    CHECK(operation = 'INS' or operation='DEL')

--);

--select * from sales.customer_logs;

--create trigger sales.customer_log
--on [sales].[customers]
--after insert,delete
--as 
--begin
--	--virtual inserted and deleted table
--	insert into [sales].[customer_logs]
--		([customer_id],[first_name],[last_name],
--		[phone],[email],[street],
--		[city],[state],[zip_code],[updated_at],[operation])
--	select 
--		i.customer_id,i.first_name,i.last_name,i.phone,
--		i.email,i.street,i.city,i.state,i.zip_code,GETDATE(),'INS'
--	from 
--		inserted i
--	union all
--	select
--		d.customer_id,d.first_name,d.last_name,d.phone,
--		d.email,d.street,d.city,d.state,d.zip_code,GETDATE(),'DEL'
--	from 
--		deleted d
--End;

--insert value to [sales].[customers] table 
--select * from [sales].[customers]
--select * from sales.customer_logs
--delete from [sales].[customers] where customer_id=1449

/*4. Create a view to list the product with category details 
a. Order by category name 
b. Create a view to show the average list_price of all categories */

--create view production.product_view1
--as
--select
--	c.category_name,p.product_name
--from 
--	[production].[products] p
--inner join
--	[production].[categories] c
--on
--	p.category_id=c.category_id
--group by 
--	c.category_name,p.product_name

--select * from production.product_view1

--create view production.product_view
--as
--select
--	category_name,
--	avg(list_price) as 'AverageListprice'
--from 
--	[production].[products] p
--inner join
--	[production].[categories] c
--on
--	p.category_id=c.category_id
--group by
--	category_name

--select * from production.product_view

/*5. Create a view to list the orders with the count of order items for each order */

--alter view sales.orderview
--as
--select
--	ordItem.item_id,count(ord.order_id) as 'CountOfOrderItems'
--from 
--	[sales].[orders] ord
--inner join
--	[sales].[order_items] ordItem
--on 
--	ord.order_id = ordItem.order_id
--group by
--	ordItem.item_id

--select * from sales.orderview


/*6. Create a stored procedure that will take two parameter 
a. Brand name to be deleted 
b. New brand name (make sure the name is not already present in brand table using 
exits) 
c. New brand name is to be entered in brand table 
d. All products which belonged to brandname to be deleted shouldget updated with 
the new brand name*/

create procedure findBrandName
(
@brandName as varchar(250),
@newBrandName as varchar(250)
)
as 
begin
	select brand_name
	from [production].[brands]
where 
	brand_name=@brandName 
order by 
	brand_name
end;
		




/* 7. Create a new table called Currency, should have id ,nameOfCurrency, conversionFromINR 
o Set id to PK 
o NameOfCurrency to unique 
o conversionFromINR should have check constraint to more than 10 */

--create table Currency(id int identity primary key not null,
--nameOfCurrency varchar(250) unique not null,
--conversionFromINR varchar(500) check (conversionFromINR>10));

--select * from Currency



