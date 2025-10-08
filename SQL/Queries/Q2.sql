-- What are the top 5 best-selling products by units sold?
SELECT 
    product_category,
    Product_id,
    units_sold
FROM
    supply_chain
ORDER BY units_sold DESC
LIMIT 5;