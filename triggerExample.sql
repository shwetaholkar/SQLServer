--CREATE TABLE production.product_audits(

--    change_id INT IDENTITY PRIMARY KEY,

--    product_id INT NOT NULL,

--    product_name VARCHAR(255) NOT NULL,

--    brand_id INT NOT NULL,

--    category_id INT NOT NULL,

--    model_year SMALLINT NOT NULL,

--    list_price DEC(10,2) NOT NULL,

--    updated_at DATETIME NOT NULL,

--    operation CHAR(3) NOT NULL,

--    CHECK(operation = 'INS' or operation='DEL')

--);


create trigger production.product_audit
on [production].[products]
after insert,delete
as 
begin
	--virtual inserted and deleted table
	insert into [production].[product_audits]
		([product_id],[product_name],[brand_id],
		[category_id],[model_year],[list_price],
		[updated_at],[operation])
	select 
		i.product_id,i.product_name,i.brand_id,i.category_id,
		i.model_year,i.list_price,GETDATE(),'INS'
	from 
		inserted i
	union all
	select
		d.product_id,d.product_name,d.brand_id,d.category_id,
		d.model_year,d.list_price,GETDATE(),'DEL'
	from 
		deleted d
End;

--insert value to production.products table 
select * from production.product_audits
delete from production.products where product_id=322
--select * from production.products

