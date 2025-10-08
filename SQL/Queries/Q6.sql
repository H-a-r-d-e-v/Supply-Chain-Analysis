-- Which suppliers have the highest defect rates?
SELECT 
    supplier_name,
    ROUND(AVG(Defect_rate), 2) AS Avg_Defect_Rate
FROM
    supply_chain
GROUP BY supplier_name
ORDER BY Avg_Defect_Rate;