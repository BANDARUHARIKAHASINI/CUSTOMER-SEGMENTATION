USE project_shopping_trends;
SHOW TABLES;
SELECT * FROM shopping;
SELECT *
FROM shopping
WHERE Age IS NULL;
SELECT Customer_ID,
COUNT(*)
FROM shopping
GROUP BY Customer_ID
HAVING COUNT(*)>1;
SELECT Category,
SUM(Purchase_Amount_USD) AS TotalSales
FROM shopping
GROUP BY Category
ORDER BY TotalSales;
SELECT Location,
SUM(Purchase_Amount_USD) AS Sales
FROM shopping
GROUP BY Location
ORDER BY Sales DESC;
SELECT Payment_Method,
COUNT(*) AS Customers
FROM shopping
GROUP BY Payment_Method;
SELECT Frequency_of_Purchases,
COUNT(*) AS Customers
FROM shopping
GROUP BY Frequency_of_Purchases;
