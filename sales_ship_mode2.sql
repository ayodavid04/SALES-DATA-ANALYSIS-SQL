--Total Sales by Ship Mode
USE [Sales data]
SELECT Ship_Mode, ROUND(SUM(Sales), 2) AS Total_Sales
FROM dbo.sales_data_export
GROUP BY Ship_Mode
ORDER BY Total_Sales DESC;
