create database customer_segmentation;
use customer_segmentation;

-- 1️ Show all customer data
SELECT * 
FROM customer_segmentation;

-- 2 Find total number of customers
SELECT COUNT(*) AS total_customers
FROM customer_segmentation ;

-- 3 Count total orders
SELECT COUNT(*) AS total_orders
FROM customer_segmentation;

-- 4 Show all orders from North region
SELECT * 
FROM customer_segmentation
WHERE Region = 'North';

-- 5 Find total sales amount
SELECT SUM(Sales_Amount) AS total_sales
FROM customer_segmentation;

-- 6 Find total sales by region
SELECT Region, SUM(Sales_Amount) AS total_sales
FROM customer_segmentation
GROUP BY Region;

-- 7 Find average unit price per product category
SELECT Product_Category, AVG(Unit_Price) AS avg_price
FROM customer_segmentation
GROUP BY Product_Category;

-- 8 Show top 5 highest sales orders
SELECT * 
FROM customer_segmentation
ORDER BY Sales_Amount DESC
LIMIT 5;

-- 9 Count orders by payment mode
SELECT Payment_Mode, COUNT(*) AS total_orders
FROM customer_segmentation
GROUP BY Payment_Mode;

-- 10 Show orders between two dates
SELECT * 
FROM customer_segmentation
WHERE Order_Date BETWEEN '2023-01-01' AND '2023-12-31';

-- 11 Create sales category (High, Medium, Low)
SELECT Order_ID, Sales_Amount,
CASE 
    WHEN Sales_Amount >= 10000 THEN 'High Sales'
    WHEN Sales_Amount BETWEEN 5000 AND 9999 THEN 'Medium Sales'
    ELSE 'Low Sales'
END AS Sales_Category
FROM customer_segmentation;

-- 12 Monthly total sales
SELECT YEAR(Order_Date) AS Year,
       MONTH(Order_Date) AS Month,
       SUM(Sales_Amount) AS total_sales
FROM customer_segmentation
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;

-- 13 Rank orders by sales amount
SELECT Order_ID, Sales_Amount,
       RANK() OVER (ORDER BY Sales_Amount DESC) AS sales_rank
FROM customer_segmentation;

-- 14 Top 3 sales orders in each region
SELECT *
FROM (
    SELECT Order_ID, Region, Sales_Amount,
           RANK() OVER (PARTITION BY Region ORDER BY Sales_Amount DESC) AS rnk
    FROM customer_segmentation
) t
WHERE rnk <= 3;

-- 15 Find orders with sales above average
SELECT * 
FROM customer_segmentation
WHERE Sales_Amount > (SELECT AVG(Sales_Amount) FROM customer_segmentation);





















