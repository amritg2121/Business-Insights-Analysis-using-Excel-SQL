SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT Category,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT `Product Name`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT `Customer Type`,
       ROUND(AVG(Sales),2) AS Avg_Sales
FROM sales_data
GROUP BY `Customer Type`;

SELECT Region,
       Sales,
       RANK() OVER(
           PARTITION BY Region
           ORDER BY Sales DESC
       ) AS Sales_Rank
FROM sales_data;