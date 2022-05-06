--Nesting Subquery

/* A subquery can be nested within another subquery. SQL Server supports up to 32 levels of nesting.
Example – 
Get all the product whoes list_price is more than the average price of product of brand 'Strider' or 'Trek'
1. get the brand id of bran names - 'Strider' or 'Trek'
2. get the average of list price whoes brand id falls in the above list
3. get all the products whoes list price is more than the average calculated above
*/

SELECT    
	product_name,
	list_price
FROM    
	production.products
WHERE   list_price > (
        SELECT  
			AVG (list_price) 
		FROM 
			production.products
        WHERE brand_id IN (
                SELECT 
					brand_id 
				FROM 
					production.brands
                WHERE  brand_name = 'Strider'
					OR brand_name = 'Trek'
            )
    )
ORDER BY
    list_price;
