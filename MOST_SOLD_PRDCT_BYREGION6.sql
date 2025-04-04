--Most sold Product by RegionS
WITH ProductSales AS (
    SELECT 
        Region, 
        Product_Name, 
        SUM(Quantity) AS Total_Quantity,
        RANK() OVER (PARTITION BY Region ORDER BY SUM(Quantity) DESC) AS rnk
    FROM sales_data_export
    GROUP BY Region, Product_Name
)
SELECT Region, Product_Name, Total_Quantity
FROM ProductSales
WHERE rnk = 1;
