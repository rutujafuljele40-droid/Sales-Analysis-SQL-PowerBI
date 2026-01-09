-- Total Sales & Profit
SELECT 
    SUM(amount) AS total_sales,
    SUM(profit) AS total_profit
FROM sales;

-- Category wise sales
SELECT 
    category,
    SUM(amount) AS total_sales,
    SUM(profit) AS total_profit
FROM sales
GROUP BY category;

-- Top 10 Sub-Categories by sales
SELECT 
    sub_category,
    SUM(amount) AS total_sales
FROM sales
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 10;

-- Monthly Sales Trend
SELECT 
    order_month,
    SUM(amount) AS total_sales
FROM sales
GROUP BY order_month
ORDER BY order_month;

-- State wise sales
SELECT 
    state,
    SUM(amount) AS total_sales
FROM sales
GROUP BY state
ORDER BY total_sales DESC;

-- Payment mode share
SELECT 
    payment_mode,
    SUM(amount) AS total_sales
FROM sales
GROUP BY payment_mode;
