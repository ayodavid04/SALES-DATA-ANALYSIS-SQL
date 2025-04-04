--Best Product by Profit-to-Sales Ratio
USE [Sales data]
SELECT Product_Name, SUM(Profit) / NULLIF(SUM(Sales), 0) AS Profit_Sales_Ratio
FROM dbo.sales_data_export
GROUP BY Product_Name
ORDER BY Profit_Sales_Ratio
