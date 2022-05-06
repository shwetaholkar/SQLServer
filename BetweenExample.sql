--Between example

SELECT product_id, product_name,
    list_price
FROM production.products
WHERE
    list_price BETWEEN 149.99 AND 199.99
ORDER BY
    list_price;
