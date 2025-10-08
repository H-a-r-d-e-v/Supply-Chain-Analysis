-- Which product categories generate the most revenue?
SELECT 
    product_category,
    SUM(revenue) AS Total_revenue
FROM
    supply_chain
GROUP BY Product_category
ORDER BY Total_revenue DESC;
