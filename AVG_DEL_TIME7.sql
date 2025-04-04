--Average time to Deliver
USE [Sales data]

SELECT AVG(DATEDIFF(DAY, Order_Date, Delivery_Date)) AS Avg_Delivery_Time

FROM dbo.sales_data_export;
