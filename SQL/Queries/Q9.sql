-- Which products are the most profitable after costs?
SELECT 
    product_id,
    SUM(revenue) - (SUM(shipping_cost) + SUM(manufacturing_cost) + SUM(total_cost)) AS Net_Profits
FROM
    supply_chain
GROUP BY product_id
ORDER BY Net_Profits DESC;