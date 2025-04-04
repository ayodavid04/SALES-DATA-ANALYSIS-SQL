--Profit & Sales by Segment
USE [Sales data]
SELECT Segment, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM dbo.sales_data_export
GROUP BY Segment
ORDER BY Total_Profit DESC;
