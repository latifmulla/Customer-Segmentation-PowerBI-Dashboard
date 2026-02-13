# 📊 Customer Segmentation & Sales Data Analysis Project

## 📌 Project Overview
This project focuses on analyzing customer and sales data using **SQL, Excel, and Power BI**.  
The goal is to identify business insights such as customer behavior, sales trends, and regional performance to support data-driven decision-making.

---

## 🛠 Tools & Technologies Used
- **SQL (MySQL)** – Data cleaning, querying, and analysis  
- **Microsoft Excel** – Data preprocessing and calculations  
- **Power BI** – Interactive dashboard and data visualization  
- **GitHub** – Project version control and portfolio hosting  

---

## 📂 Dataset Information
The dataset contains sales and customer transaction details such as:

| Column Name | Description |
|-------------|-------------|
| Customer_ID | Unique customer identifier |
| Order_ID | Unique order number |
| Order_Date | Date of order |
| Product_Category | Product category type |
| Quantity | Number of items purchased |
| Unit_Price | Price per unit |
| Sales_Amount | Total sales value |
| Region | Customer region |
| Payment_Mode | Payment method used |

---

## 📈 Project Objectives
- Analyze total sales and revenue trends  
- Identify top-performing regions and products  
- Understand customer purchasing patterns  
- Create interactive dashboards for business insights  
- Perform SQL queries from basic to advanced level  

---

## 🧮 SQL Analysis
### Example SQL Queries Used:

```sql
-- Total Sales
SELECT SUM(Sales_Amount) AS Total_Sales 
FROM customer_segmentation;

-- Sales by Region
SELECT Region, SUM(Sales_Amount) AS Total_Sales
FROM customer_segmentation
GROUP BY Region;

-- Top 5 Highest Sales Orders
SELECT * 
FROM customer_segmentation
ORDER BY Sales_Amount DESC
LIMIT 5;
