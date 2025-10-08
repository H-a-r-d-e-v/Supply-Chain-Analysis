-- What is the average unit price per product category?
SELECT 
    product_category,
    ROUND(AVG(unit_price), 2) AS Avg_Price
FROM
    supply_chain
GROUP BY Product_category;