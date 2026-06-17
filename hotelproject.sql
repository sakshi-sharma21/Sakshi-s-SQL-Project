--create Database
CREATE DATABASE Hotel2;


--switch to the database
\c Hotel2;


--create table
Drop Table if exists Hotel2;

CREATE TABLE Hotel2(
Customer_ID VARCHAR(10) PRIMARY KEY,
First_Name VARCHAR(50),
Last_Name VARCHAR(50),
Gender VARCHAR(10),
Phone VARCHAR(15),
Email VARCHAR(100),
City VARCHAR(50)
);

SELECT * FROM Hotel2;

SELECT * FROM information_schema.columns WHERE table_name = 'hotel2';

--Import Data into Hotel2 Table
COPY Hotel2(Customer_ID, First_Name, Last_Name, Gender, Phone, Email, City)
FROM'C:\College_Level_Hotel_SQL_Project_Data.csv'
CSV HEADER;


SELECT * FROM Hotel2;
WHERE Genre='Fiction';


--Basic Queries

--1)Show the list of all customers who belong to the city 'Agra'or'Delhi':
SELECT * FROM Hotel2
WHERE city IN('Agra','Delhi');

--2)Find the total numbers of female customers registered in the database:
SELECT COUNT(*) AS Total_Female_Customers
FROM Hotel2
WHERE gender='Female';

--3)Display the first name,last name, and phone number of customers whose email ends with 'gmail.com':
SELECT First_Name, Last_Name, Phone
FROM Hotel2
WHERE email LIKE '%@gmail.com';


--4)Sort and display all customer records in alphabetical order(A to Z)by their First_Name:
SELECT * FROM Hotel2
ORDER BY First_Name ASC;


--5)List all the unique cities from where the customers have registered:
SELECT DISTINCT city
FROM Hotel2;





























