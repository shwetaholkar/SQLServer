
--IN example
--1)

select product_name,list_price
from [production].[products]
where list_price IN (89.99, 109.99, 159.99)
order by list_price;

--2)
SELECT    product_name,    list_price
FROM    production.products
WHERE product_id IN (
        SELECT product_id
        FROM production.stocks
        WHERE  store_id = 1 AND quantity >= 30
    )
ORDER BY product_name;
