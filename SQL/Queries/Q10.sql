-- What is the on-time delivery rate?
SELECT 
    CONCAT(ROUND(COUNT(CASE
                WHEN shipping_duration <= Delivery_lead_time THEN 1
				END) * 100 / COUNT(*),2),'%') AS On_Time_Delivery_Rate
FROM
    supply_chain;