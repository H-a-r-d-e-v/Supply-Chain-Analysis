-- How much stock is physically present vs available for sale?
SELECT 
    product_id,
    units_available,
    current_stock,
    Current_stock - Units_available AS Non_Available_Stock
FROM
    supply_chain;