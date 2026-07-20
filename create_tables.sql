CREATE DATABASE retail_sales_db;
USE retail_sales_db;
CREATE TABLE categories(category_id INT PRIMARY KEY,category_name VARCHAR(50));
CREATE TABLE customers(customer_id INT PRIMARY KEY,customer_name VARCHAR(100),gender VARCHAR(10),age INT,city VARCHAR(50),email VARCHAR(100));
CREATE TABLE products(product_id INT PRIMARY KEY,product_name VARCHAR(100),category_id INT, selling_price DECIMAL(10,2),FOREIGN KEY(category_id) REFERENCES categories(category_id));
CREATE TABLE employees(employee_id INT PRIMARY KEY,employee_name VARCHAR(100));
CREATE TABLE orders(order_id INT PRIMARY KEY,customer_id INT,employee_id INT,order_date DATE,FOREIGN KEY(customer_id) REFERENCES customers(customer_id),FOREIGN KEY(employee_id) REFERENCES employees(employee_id));
CREATE TABLE order_details(order_detail_id INT PRIMARY KEY,order_id INT,product_id INT,quantity INT,FOREIGN KEY(order_id) REFERENCES orders(order_id),FOREIGN KEY(product_id) REFERENCES products(product_id));
