-- How do suppliers rank on overall performance?
SELECT 
    Supplier_name,
    ROUND(AVG(Supplier_Lead_Time), 2) AS Avg_Lead_Time,
    ROUND(AVG(Defect_rate), 2) AS Avg_Defect,
    ROUND(AVG(Manufacturing_cost), 2) AS Avg_Cost
FROM
    supply_chain
GROUP BY Supplier_name;