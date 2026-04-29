use test_db;

-- CREATE TABLE
CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- INSERT ROWS
INSERT INTO product (name, category, price, stock)
VALUES 
('Mobile', 'Electronics', 20000.00, 25),
('Laptop', 'Electronics', 55000.00, 10),
('Tablet', 'Electronics', 30000.00, 15),
('Headphones', 'Electronics', 2500.00, 40),
('Smartwatch', 'Electronics', 8000.00, 20),

('Shirt', 'Clothing', 1500.00, 50),
('Jeans', 'Clothing', 2500.00, 30),
('Jacket', 'Clothing', 4000.00, 12),
('T-Shirt', 'Clothing', 800.00, 60),
('Sweater', 'Clothing', 2200.00, 25),

('Rice Bag', 'Groceries', 1200.00, 100),
('Cooking Oil', 'Groceries', 1800.00, 80),
('Sugar', 'Groceries', 45.00, 200),
('Milk', 'Groceries', 60.00, 150),
('Tea Powder', 'Groceries', 500.00, 70),

('Office Chair', 'Furniture', 7000.00, 8),
('Dining Table', 'Furniture', 15000.00, 5),
('Sofa', 'Furniture', 25000.00, 3),
('Bed', 'Furniture', 20000.00, 6),
('Wardrobe', 'Furniture', 18000.00, 4);

-- READ OPERATIONS
SELECT * FROM product;

SELECT * FROM product WHERE id = 1;

SELECT * FROM product WHERE category = 'Electronics';

SELECT * FROM product WHERE stock > 10;

-- UPDATE OPERATIONS
UPDATE product
SET name = 'Gaming Laptop',
    price = 75000.00,
    stock = 5
WHERE id = 1;

UPDATE product
SET stock = 20
WHERE id = 1;

-- DELETE OPERATIONS
-- DELETE BY ID
DELETE FROM product WHERE id = 1;
-- DELETE ALL RECORDS
DELETE FROM product; 

