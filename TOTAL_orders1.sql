--Total Orders
USE [Sales data]
SELECT COUNT(DISTINCT Order_ID) 
AS Total_Orders
FROM dbo.sales_data_export;