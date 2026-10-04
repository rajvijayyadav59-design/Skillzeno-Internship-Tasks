-- Amazon Sales Analytics
-- SQL Analysis

--1. Total Orders
SELECT COUNT(DISTINCT "Order ID") AS toatal_sales
FROM amazon_sales;

--2. Total Sales
SELECT round(SUM("Amount"),2) AS total_sales
FROM amazon_sales;

--3. Total Qty
SELECT sum("Qty") AS total_qFROM amazon_sales;

--4.Average Amount
SELECT round(AVG("Amount"),2) AS average_amount
FROM amazon_sales;

--5. Category-wise-sales
select "Category" ,SUM("Amount") AS total_sales
FROM amazon_sales
GROUP BY "Category"
ORDER BY total_sales DESC;

-- 6. State-wise Sales
SELECT 
    "ship-state",
    SUM("Amount") AS total_sales
FROM amazon_sales
GROUP BY "ship-state"
ORDER BY total_sales DESC;

-- 7. Order Status Analysis
SELECT 
    "Status",
    COUNT(*) AS order_count
FROM amazon_sales
GROUP BY "Status"
ORDER BY order_count DESC;

-- 8. Fulfilment Analysis
SELECT 
    "Fulfilment",
    COUNT(*) AS order_count,
    SUM("Amount") AS total_sales
FROM amazon_sales
GROUP BY "Fulfilment"
ORDER BY total_sales DESC;

-- 9. Monthly Sales
SELECT 
    DATE_TRUNC('month', "Date") AS month,
    SUM("Amount") AS total_sales
FROM amazon_sales
GROUP BY month
ORDER BY month;

-- 10. B2B vs B2C
SELECT 
    "B2B",
    COUNT(*) AS orders,
    SUM("Amount") AS total_sales
FROM amazon_sales
GROUP BY "B2B"
ORDER BY total_sales DESC;

select * from amazon_sales;
