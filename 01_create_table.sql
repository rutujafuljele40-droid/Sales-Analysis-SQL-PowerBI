CREATE TABLE sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(20),
    order_date DATE,
    order_month VARCHAR(7),
    customer_name VARCHAR(100),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    payment_mode VARCHAR(20),
    quantity INT,
    amount DECIMAL(10,2),
    profit DECIMAL(10,2)
);
