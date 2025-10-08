-- Which suppliers have the shortest average lead times?
SELECT 
    Supplier_name,
    CONCAT(ROUND(AVG(Supplier_Lead_Time), 2),' ','days') AS Avg_Lead_Time
FROM
    supply_chain
GROUP BY Supplier_name
ORDER BY Avg_Lead_Time;