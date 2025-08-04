# 🧾 Customer Purchase Analytics (SQL + Pandas)

## 📌 Overview
This project analyzes customer purchasing behavior using Superstore retail data.  
It combines **MySQL-based SQL queries** with **Pandas-based visual analytics** to derive actionable insights for business decision-making.

---

## 🧰 Tools & Tech
- MySQL (via XAMPP / phpMyAdmin)
- Pandas, Matplotlib, Seaborn
- Kaggle Notebook
- GitHub

---

## 📁 Dataset
- Source: [kaggle dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
- Files used: `Customers.csv`, `Orders.csv`, `Products.csv`

---

## 📊 Business Questions Answered
1. Top 10 customers by total sales
2. Monthly revenue trend
3. Region-wise sales performance
4. Most profitable categories
5. Category-wise average discount

---

## 📌 Sample SQL Query
```sql
SELECT CustomerName, SUM(Sales) AS TotalSales
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY CustomerName
ORDER BY TotalSales DESC
LIMIT 10;
