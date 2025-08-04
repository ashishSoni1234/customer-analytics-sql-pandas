-- 1. Top 10 customers by total sales
SELECT CustomerName, SUM(Sales) AS TotalSales
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY CustomerName
ORDER BY TotalSales DESC
LIMIT 10;

-- 2. Monthly revenue trend
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS Month, SUM(Sales) AS MonthlyRevenue
FROM Orders
GROUP BY Month
ORDER BY Month;

-- 3. Region-wise sales performance
SELECT Region, SUM(Sales) AS TotalSales
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY Region;

-- 4. Most profitable categories
SELECT Category, SUM(Profit) AS TotalProfit
FROM Products p
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY Category
ORDER BY TotalProfit DESC;

-- 5. Category-wise average discount
SELECT Category, AVG(Discount) AS AvgDiscount
FROM Products p
JOIN Orders o ON p.ProductID = o.ProductID
GROUP BY Category;