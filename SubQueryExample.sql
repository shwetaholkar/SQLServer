--subquery example

select 
	order_id,
	order_date,       --outer query
	customer_id
from
	[sales].[orders]
where
	customer_id IN (
		select 
			customer_id
		from
			sales.customers   --subquery
		where
			city='New York'
		)
		order by 
			order_date desc;