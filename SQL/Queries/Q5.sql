-- What percentage of revenue is spent on shipping costs?
SELECT 
    Product_category,
    SUM(revenue) AS total_revenue,
    SUM(shipping_cost) AS total_shipping_cost,
    CONCAT(ROUND((SUM(shipping_cost) / SUM(revenue)) * 100,2),'%') AS shipping_cost_percentage
FROM
    supply_chain
GROUP BY Product_category
ORDER BY shipping_cost_percentage;