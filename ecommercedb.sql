-- Create the database
CREATE DATABASE ecommerce_db;
GO

-- Use the created database
USE ecommerce_db;
GO

-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    email NVARCHAR(255) NOT NULL,
    signup_date DATE NOT NULL
);
GO

-- Create the Orders table
CREATE TABLE Orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
GO

-- Create the Products table
CREATE TABLE Products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    category NVARCHAR(255) NOT NULL
);
GO

-- Create the Order_Items table
CREATE TABLE Order_Items (
    order_item_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
GO


------------------------------------------------------------------------------
-- Data Insertion

INSERT INTO Customers (name, email, signup_date)
VALUES
('John Doe', 'johndoe@example.com', '2023-01-15'),
('Jane Smith', 'janesmith@example.com', '2023-02-20'),
('Michael Brown', 'michaelbrown@example.com', '2023-03-05'),
('Emily Davis', 'emilydavis@example.com', '2023-04-10'),
('Chris Wilson', 'chriswilson@example.com', '2023-05-25'),
('Olivia Johnson', 'oliviajohnson@example.com', '2023-06-15'),
('David Martinez', 'davidmartinez@example.com', '2023-07-20'),
('Sophia Garcia', 'sophiagarcia@example.com', '2023-08-10'),
('Liam Rodriguez', 'liamrodriguez@example.com', '2023-09-12'),
('Mia Hernandez', 'miahernandez@example.com', '2023-10-18');
GO





INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES
(1, '2023-02-01', 150.00),
(2, '2023-03-01', 200.00),
(3, '2023-04-01', 250.00),
(4, '2023-05-01', 100.00),
(5, '2023-06-01', 300.00),
(6, '2023-07-01', 350.00),
(7, '2023-08-01', 400.00),
(8, '2023-09-01', 450.00),
(9, '2023-10-01', 500.00),
(10, '2023-11-01', 550.00),
(1, '2023-03-15', 100.00),
(2, '2023-04-20', 150.00),
(3, '2023-05-25', 200.00),
(4, '2023-06-30', 250.00),
(5, '2023-07-10', 300.00),
(6, '2023-08-15', 350.00),
(7, '2023-09-20', 400.00),
(8, '2023-10-25', 450.00),
(9, '2023-11-30', 500.00),
(10, '2023-12-05', 550.00);
GO





INSERT INTO Products (name, category)
VALUES
('Product A', 'Category 1'),
('Product B', 'Category 1'),
('Product C', 'Category 2'),
('Product D', 'Category 2'),
('Product E', 'Category 3'),
('Product F', 'Category 3'),
('Product G', 'Category 4'),
('Product H', 'Category 4'),
('Product I', 'Category 5'),
('Product J', 'Category 5'),
('Product K', 'Category 6');
GO





INSERT INTO Order_Items (order_id, product_id, quantity, price)
VALUES
(1, 101, 2, 50.00),
(1, 102, 1, 50.00),
(2, 101, 3, 50.00),
(2, 103, 1, 50.00),
(3, 102, 2, 50.00),
(3, 104, 2, 50.00),
(4, 101, 1, 50.00),
(4, 105, 1, 50.00),
(5, 102, 4, 50.00),
(5, 106, 2, 50.00),
(6, 101, 3, 50.00),
(6, 107, 1, 50.00),
(7, 103, 2, 50.00),
(7, 108, 3, 50.00),
(8, 104, 4, 50.00),
(8, 109, 2, 50.00),
(9, 105, 5, 50.00),
(9, 110, 1, 50.00),
(10, 106, 2, 50.00),
(10, 111, 3, 50.00),
(11, 101, 1, 50.00),
(11, 102, 1, 50.00),
(12, 103, 3, 50.00),
(12, 104, 2, 50.00),
(13, 105, 1, 50.00),
(13, 106, 2, 50.00),
(14, 107, 3, 50.00),
(14, 108, 1, 50.00),
(15, 109, 2, 50.00),
(15, 110, 3, 50.00),
(16, 111, 1, 50.00),
(16, 101, 4, 50.00),
(17, 102, 2, 50.00),
(17, 103, 1, 50.00),
(18, 104, 3, 50.00),
(18, 105, 2, 50.00),
(19, 106, 1, 50.00),
(19, 107, 4, 50.00),
(20, 108, 2, 50.00),
(20, 109, 3, 50.00);
GO






INSERT INTO Order_Items (order_id, product_id, quantity, price)
VALUES
(1, 1, 2, 50.00),    -- Product A
(1, 2, 1, 50.00),    -- Product B
(2, 1, 3, 50.00),    -- Product A
(2, 3, 1, 50.00),    -- Product C
(3, 2, 2, 50.00),    -- Product B
(3, 4, 2, 50.00),    -- Product D
(4, 1, 1, 50.00),    -- Product A
(4, 5, 1, 50.00),    -- Product E
(5, 2, 4, 50.00),    -- Product B
(5, 6, 2, 50.00),    -- Product F
(6, 1, 3, 50.00),    -- Product A
(6, 7, 1, 50.00),    -- Product G
(7, 3, 2, 50.00),    -- Product C
(7, 8, 3, 50.00),    -- Product H
(8, 4, 4, 50.00),    -- Product D
(8, 9, 2, 50.00),    -- Product I
(9, 5, 5, 50.00),    -- Product E
(9, 10, 1, 50.00),   -- Product J
(10, 6, 2, 50.00),   -- Product F
(10, 11, 3, 50.00),  -- Product K
(11, 1, 1, 50.00),   -- Product A
(11, 2, 1, 50.00),   -- Product B
(12, 3, 3, 50.00),   -- Product C
(12, 4, 2, 50.00),   -- Product D
(13, 5, 1, 50.00),   -- Product E
(13, 6, 2, 50.00),   -- Product F
(14, 7, 3, 50.00),   -- Product G
(14, 8, 1, 50.00),   -- Product H
(15, 9, 2, 50.00),   -- Product I
(15, 10, 3, 50.00),  -- Product J
(16, 11, 1, 50.00),  -- Product K
(16, 1, 4, 50.00),   -- Product A
(17, 2, 2, 50.00),   -- Product B
(17, 3, 1, 50.00),   -- Product C
(18, 4, 3, 50.00),   -- Product D
(18, 5, 2, 50.00),   -- Product E
(19, 6, 1, 50.00),   -- Product F
(19, 7, 4, 50.00),   -- Product G
(20, 8, 2, 50.00),   -- Product H
(20, 9, 3, 50.00);   -- Product I
GO
  







  ---------------------------------------------------
-- Analysis



-- 1. Top 5 Customers by Total Spend
SELECT TOP 5
    c.customer_id,
    c.name,
    SUM(o.total_amount) AS total_spent
FROM
    Customers c
JOIN
    Orders o ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id, c.name
ORDER BY
    total_spent DESC;
GO





-- 2. Monthly Revenue for the Last Year
SELECT
    FORMAT(o.order_date, 'yyyy-MM') AS month,
    SUM(o.total_amount) AS total_revenue
FROM
    Orders o
WHERE
    o.order_date >= DATEADD(YEAR, -1, GETDATE())
GROUP BY
    FORMAT(o.order_date, 'yyyy-MM')
ORDER BY
    month;
GO


-- 3. Average Order Value by Customer
SELECT
    c.customer_id,
    c.name,
    AVG(o.total_amount) AS average_order_value
FROM
    Customers c
JOIN
    Orders o ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id, c.name
ORDER BY
    average_order_value DESC;
GO


-- 4. Most Popular Products
SELECT TOP 10
    p.product_id,
    p.name,
    SUM(oi.quantity) AS total_quantity_sold
FROM
    Order_Items oi
JOIN
    Products p ON oi.product_id = p.product_id
GROUP BY
    p.product_id, p.name
ORDER BY
    total_quantity_sold DESC;
GO


-- 5. Customer Retention Rate
;WITH MonthlyPurchases AS (
    SELECT
        c.customer_id,
        FORMAT(o.order_date, 'yyyy-MM') AS month
    FROM
        Orders o
    JOIN
        Customers c ON o.customer_id = c.customer_id
    GROUP BY
        c.customer_id, FORMAT(o.order_date, 'yyyy-MM')
),
PreviousMonth AS (
    SELECT DISTINCT
        p1.customer_id,
        p1.month AS current_month,
        p2.month AS previous_month
    FROM
        MonthlyPurchases p1
    LEFT JOIN
        MonthlyPurchases p2 ON p1.customer_id = p2.customer_id
        AND DATEADD(MONTH, 1, CAST(p2.month + '-01' AS DATE)) = CAST(p1.month + '-01' AS DATE)
),
Retention AS (
    SELECT
        current_month,
        COUNT(DISTINCT customer_id) AS retained_customers
    FROM
        PreviousMonth
    WHERE
        previous_month IS NOT NULL
    GROUP BY
        current_month
),
TotalCustomers AS (
    SELECT
        month,
        COUNT(DISTINCT customer_id) AS total_customers
    FROM
        MonthlyPurchases
    GROUP BY
        month
)
SELECT
    t.month,
    ISNULL(r.retained_customers, 0) AS retained_customers,
    t.total_customers,
    CASE 
        WHEN t.total_customers = 0 THEN 0
        ELSE (CAST(r.retained_customers AS FLOAT) / t.total_customers) * 100
    END AS retention_rate
FROM
    TotalCustomers t
LEFT JOIN
    Retention r ON t.month = r.current_month
ORDER BY
    t.month;
GO


-- 6. Category Performance
SELECT
    p.category,
    SUM(oi.quantity * oi.price) AS total_revenue
FROM
    Order_Items oi
JOIN
    Products p ON oi.product_id = p.product_id
GROUP BY
    p.category
ORDER BY
    total_revenue DESC;
GO

/*
-- Explanation of Queries:

1. **Top 5 Customers by Total Spend**: Joins `Customers` and `Orders` to aggregate total spending by each customer and ranks them.
2. **Monthly Revenue for the Last Year**: Uses `FORMAT` to group orders by month and calculate the total revenue for each month in the last year.
3. **Average Order Value by Customer**: Calculates the average order value for each customer by joining `Customers` and `Orders`.
4. **Most Popular Products**: Joins `Order_Items` and `Products` to find the top 10 products based on total quantity sold.
5. **Customer Retention Rate**: Calculates the percentage of customers who made a purchase in the previous month and in the current month.
6. **Category Performance**: Aggregates revenue by product category to determine which category generates the most revenue.



*/