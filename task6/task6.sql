create database onlinesales;
use onlinesales;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
(1, 1, '2022-01-01', 100.00),
(2, 1, '2022-01-05', 200.00),
(3, 2, '2022-01-10', 50.00),
(4, 3, '2022-02-01', 150.00),
(5, 4, '2022-02-05', 250.00),
(6, 5, '2022-03-01', 300.00),
(7, 6, '2022-03-10', 400.00),
(8, 7, '2022-04-01', 200.00),
(9, 8, '2022-04-05', 350.00),
(10, 9, '2022-05-01', 450.00),
(11, 10, '2022-05-10', 500.00),
(12, 1, '2022-06-01', 250.00),
(13, 2, '2022-06-05', 300.00),
(14, 3, '2022-07-01', 400.00),
(15, 4, '2022-07-10', 450.00),
(16, 5, '2022-08-01', 500.00),
(17, 6, '2022-08-05', 550.00),
(18, 7, '2022-09-01', 600.00),
(19, 8, '2022-09-10', 650.00),
(20, 9, '2022-10-01', 700.00),
(21, 10, '2022-10-05', 750.00),
(22, 1, '2022-11-01', 800.00),
(23, 2, '2022-11-10', 850.00),
(24, 3, '2022-12-01', 900.00),
(25, 4, '2022-12-05', 950.00),
(26, 5, '2022-01-15', 100.00),
(27, 6, '2022-01-20', 200.00),
(28, 7, '2022-01-25', 50.00),
(29, 8, '2022-02-10', 150.00),
(30, 9, '2022-02-15', 250.00),
(31, 10, '2022-03-05', 300.00),
(32, 1, '2022-03-10', 400.00),
(33, 2, '2022-04-01', 200.00),
(34, 3, '2022-04-05', 350.00),
(35, 4, '2022-05-01', 450.00),
(36, 5, '2022-05-10', 500.00),
(37, 6, '2022-06-01', 250.00),
(38, 7, '2022-06-05', 300.00),
(39, 8, '2022-07-01', 400.00),
(40, 9, '2022-07-10', 450.00),
(41, 10, '2022-08-01', 500.00),
(42, 1, '2022-08-05', 550.00),
(43, 2, '2022-09-01', 600.00),
(44, 3, '2022-09-10', 650.00),
(45, 4, '2022-10-01', 700.00),
(46, 5, '2022-10-05', 750.00),
(47, 6, '2022-11-01', 800.00),
(48, 7, '2022-11-10', 850.00),
(49, 8, '2022-12-01', 900.00),
(50, 9, '2022-12-05', 950.00);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2),
    product_category VARCHAR(50)
);

INSERT INTO products (product_id, product_name, price, product_category)
VALUES
(1, 'Product A', 10.00, 'Electronics'),
(2, 'Product B', 20.00, 'Electronics'),
(3, 'Product C', 30.00, 'Fashion'),
(4, 'Product D', 40.00, 'Fashion'),
(5, 'Product E', 50.00, 'Home Goods'),
(6, 'Product F', 60.00, 'Home Goods'),
(7, 'Product G', 70.00, 'Electronics'),
(8, 'Product H', 80.00, 'Electronics'),
(9, 'Product I', 90.00, 'Fashion'),
(10, 'Product J', 100.00, 'Fashion'),
(11, 'Product K', 110.00, 'Home Goods'),
(12, 'Product L', 120.00, 'Home Goods'),
(13, 'Product M', 130.00, 'Electronics'),
(14, 'Product N', 140.00, 'Electronics'),
(15, 'Product O', 150.00, 'Fashion'),
(16, 'Product P', 160.00, 'Fashion'),
(17, 'Product Q', 170.00, 'Home Goods'),
(18, 'Product R', 180.00, 'Home Goods'),
(19, 'Product S', 190.00, 'Electronics'),
(20, 'Product T', 200.00, 'Electronics'),
(21, 'Product U', 210.00, 'Fashion'),
(22, 'Product V', 220.00, 'Fashion'),
(23, 'Product W', 230.00, 'Home Goods'),
(24, 'Product X', 240.00, 'Home Goods'),
(25, 'Product Y', 250.00, 'Electronics'),
(26, 'Product Z', 260.00, 'Electronics'),
(27, 'Product AA', 270.00, 'Fashion'),
(28, 'Product BB', 280.00, 'Fashion'),
(29, 'Product CC', 290.00, 'Home Goods'),
(30, 'Product DD', 300.00, 'Home Goods'),
(31, 'Product EE', 310.00, 'Electronics'),
(32, 'Product FF', 320.00, 'Electronics'),
(33, 'Product GG', 330.00, 'Fashion'),
(34, 'Product HH', 340.00, 'Fashion'),
(35, 'Product II', 350.00, 'Home Goods'),
(36, 'Product JJ', 360.00, 'Home Goods'),
(37, 'Product KK', 370.00, 'Electronics'),
(38, 'Product LL', 380.00, 'Electronics'),
(39, 'Product MM', 390.00, 'Fashion'),
(40, 'Product NN', 400.00, 'Fashion'),
(41, 'Product OO', 410.00, 'Home Goods'),
(42, 'Product PP', 420.00, 'Home Goods'),
(43, 'Product QQ', 430.00, 'Electronics'),
(44, 'Product RR', 440.00, 'Electronics'),
(45, 'Product SS', 450.00, 'Fashion'),
(46, 'Product TT', 460.00, 'Fashion'),
(47, 'Product UU', 470.00, 'Home Goods'),
(48, 'Product VV', 480.00, 'Home Goods'),
(49, 'Product WW', 490.00, 'Electronics'),
(50, 'Product XX', 500.00, 'Electronics');


CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2)
);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 2, 10.00),
(2, 1, 2, 1, 20.00),
(3, 2, 3, 3, 30.00),
(4, 3, 4, 2, 40.00),
(5, 4, 5, 1, 50.00),
(6, 5, 6, 2, 60.00),
(7, 6, 7, 3, 70.00),
(8, 7, 8, 1, 80.00),
(9, 8, 9, 2, 90.00),
(10, 9, 10, 1, 100.00),
(11, 10, 11, 2, 110.00),
(12, 11, 12, 1, 120.00),
(13, 12, 13, 3, 130.00),
(14, 13, 14, 2, 140.00),
(15, 14, 15, 1, 150.00),
(16, 15, 16, 2, 160.00),
(17, 16, 17, 3, 170.00),
(18, 17, 18, 1, 180.00),
(19, 18, 19, 2, 190.00),
(20, 19, 20, 1, 200.00),
(21, 20, 21, 2, 210.00),
(22, 21, 22, 1, 220.00),
(23, 22, 23, 3, 230.00),
(24, 23, 24, 2, 240.00),
(25, 24, 25, 1, 250.00),
(26, 25, 26, 2, 260.00),
(27, 26, 27, 3, 270.00),
(28, 27, 28, 1, 280.00),
(29, 28, 29, 2, 290.00),
(30, 29, 30, 1, 300.00),
(31, 30, 31, 2, 310.00),
(32, 31, 32, 1, 320.00),
(33, 32, 33, 3, 330.00),
(34, 33, 34, 2, 340.00),
(35, 34, 35, 1, 350.00),
(36, 35, 36, 2, 360.00),
(37, 36, 37, 3, 370.00),
(38, 37, 38, 1, 380.00),
(39, 38, 39, 2, 390.00),
(40, 39, 40, 1, 400.00),
(41, 40, 41, 2, 410.00),
(42, 41, 42, 1, 420.00),
(43, 42, 43, 3, 430.00),
(44, 43, 44, 2, 440.00),
(45, 44, 45, 1, 450.00),
(46, 45, 46, 2, 460.00),
(47, 46, 47, 3, 470.00),
(48, 47, 48, 1, 480.00),
(49, 48, 49, 2, 490.00),
(50, 49, 50, 1, 500.00);


-- --------A. Query to analyze monthly revenue and order volume
SELECT 
    EXTRACT(YEAR FROM o.order_date) AS year,
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(oi.quantity * oi.unit_price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
GROUP BY 
    EXTRACT(YEAR FROM o.order_date),
    EXTRACT(MONTH FROM o.order_date)
ORDER BY 
    year, month;
    
    -- ---B. Query to analyze monthly revenue and order volume for a specific year (2022)
SELECT 
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(oi.quantity * oi.unit_price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
WHERE 
    EXTRACT(YEAR FROM o.order_date) = 2022
GROUP BY 
    EXTRACT(MONTH FROM o.order_date)
ORDER BY 
    month;
    
    -- -----C. Query to analyze monthly revenue and order volume for a specific product (product_id = 1)
SELECT 
    EXTRACT(YEAR FROM o.order_date) AS year,
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(oi.quantity * oi.unit_price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
WHERE 
    oi.product_id = 1
GROUP BY 
    EXTRACT(YEAR FROM o.order_date),
    EXTRACT(MONTH FROM o.order_date)
ORDER BY 
    year, month;

-- ----D. Query to analyze monthly revenue and order volume for a specific customer (customer_id = 1)
SELECT 
    EXTRACT(YEAR FROM o.order_date) AS year,
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(oi.quantity * oi.unit_price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
WHERE 
    o.customer_id = 1
GROUP BY 
    EXTRACT(YEAR FROM o.order_date),
    EXTRACT(MONTH FROM o.order_date)
ORDER BY 
    year, month;
    
    -- --------E. Query to analyze monthly revenue and order volume for a specific date range (2022-01-01 to 2022-12-31)
SELECT 
    EXTRACT(YEAR FROM o.order_date) AS year,
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(oi.quantity * oi.unit_price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
WHERE 
    o.order_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY 
    EXTRACT(YEAR FROM o.order_date),
    EXTRACT(MONTH FROM o.order_date)
ORDER BY 
    year, month;
    
    -- -------F. Query to analyze monthly revenue and order volume for a specific product category
SELECT 
    EXTRACT(YEAR FROM o.order_date) AS year,
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(oi.quantity * oi.unit_price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS order_volume
FROM 
    orders o
JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    products p ON oi.product_id = p.product_id
WHERE 
    p.product_category = 'Electronics'
GROUP BY 
    EXTRACT(YEAR FROM o.order_date),
    EXTRACT(MONTH FROM o.order_date)
ORDER BY 
    year, month;
