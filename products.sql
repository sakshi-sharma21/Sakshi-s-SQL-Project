--create Database
CREATE DATABASE Products;


DROP TABLE IF EXISTS products;
CREATE TABLE Products(
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price NUMERIC(10,2),
quantity INT,
added_date DATE,
discount_rate NUMERIC(5,2)
);

SELECT * FROM products;

INSERT INTO products(product_name,category,price,quantity,added_date,discount_rate)
VALUES 
('Laptop','Electronics',75000.50,10,'2024-01-15',10.00),
('Smart Phone','Electronics',45000.99,25,'2024-02-20',5.00),
('Headphones','Accessories',1500.75,50,'2024-03-05',15.00),
('Office Chair','Furniture',5500.00,20,'2023-12-01',20.00),
('Desk','Furniture',8000.00,15,'2023-11-20',12.00),
('Monitor','Electronics',12000.00,8,'2024-02-01',7.50),
('Printer','Electronics',9500.50,5,'2024-02-01',7.50),
('Mouse','Accessories',750.00,40,'2024-08-18',10.00),
('Keyboard','Accessories',1250.00,35,'2024-03-18',10.00),
('Tablet','Electronics',30000.00,12,'2024-02-28',5.00);

SELECT * FROM products;

--Total Quantity Available of all products
SELECT SUM(quantity)AS total_quantity FROM products;

SELECT SUM(quantity)AS total_quantity_of_ele FROM products
WHERE Category='Eectronics'AND price>20000;

--Total number  of products
SELECT COUNT(*) AS total_products FROM products;

--Count with condition
SELECT COUNT (*) AS total_products
FROM products;

--Average price of products 
SELECT AVG(price)AS average_price
FROM products;

--Average price of products with condition
SELECT AVG(price)AS average_price
FROM products
WHERE category='Accessories'OR added_date>'2024-02-01';

SELECT * FROM products;

--Maximum and minimum price

SELECT MAX(price)AS MAX_PRICE,
MIN(price)AS MIN_PRICE
FROM products;

SELECT * FROM products;


--Get all the categories in uppercase
SELECT UPPER(category)AS catergory_capital from products;

--Get all the categories in Lowercase
SELECT LOWER(category)AS catergory_Capital FROM products;

--join product_name adn category text with hypen
SELECT CONCAT(product_name,'-',category)AS
Product_details
FROM products;

--Extract the first 5 characters from product_name
SELECT SUBSTRING(product_name,1,5)AS
Short_name
FROM products;


--Count length
SELECT product_name,LENGTH(product_name)
AS COUNT_OF_CHAR
FROM products;

--Remove leading and trailing spaces from string
 SELECT LENGTH(TRIM('MONITOR'))AS
Trimmed_TEXT;
SELECT LENGTH('Monitor')AS Trimmed_Text;

--Replace the word "Phone" with "device" in product names
SELECT REPLACE (product_name,'phone','device')AS updated
FROM products;

--Get the first 3 characters from category 
SELECT RIGHT(category,3)AS category_capital
FROM products;

SELECT * FROM products;

--1)NOW()-get current date and time
SELECT Now()AS current_datetime;

--2)CURRENT_DATE()-get current date
SELECT CURRENT_DATE AS today_date;

SELECT Added_date, Current_Date,
(current_date - added_date)AS
Days_difference
FROM products;

--3)EXTRACT()-EXTRACT parts of a date
--Extract the year,month,and day from the added_date column.

SELECT product_name,
EXTRACT(year from added_date)AS year_Added,
EXTRACT(month from added_date)AS month_added,
EXTRACT(day from added_date)AS day_added 
FROM products;

--4)AGE()-calculate Age Between dates
--calculate the time difference between added_date and today's date.
SELECT product_name,
AGE(CURRENT_DATE, added_date)AS
Age_Since_added
FROM products;


--5)TO_CHAR()_Format dates as strings
--format added_date in a Custom format (DD-MM-YYYY).

SELECT product_name,
TO_CHAR(added_date,'DD-MM-YYYY')AS
FORMATED_DATE
FROM products;



 






























