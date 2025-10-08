-- Which products are at risk of stockouts?
SELECT 
    product_id,
    units_available,
    ROUND(AVG(order_quantity), 0) AS Avg_Orders
FROM
    supply_chain
GROUP BY product_id , units_available
HAVING Units_available < 2 * (Avg_Orders);