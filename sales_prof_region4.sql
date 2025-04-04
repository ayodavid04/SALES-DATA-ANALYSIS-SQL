SELECT REGION, 
ROUND(SUM(Sales), 2) AS Total_Sales,
ROUND(SUM(Profit), 2) AS Total_profit
FROM dbo.sales_data_export
GROUP BY Region
ORDER BY Total_profit DESC;