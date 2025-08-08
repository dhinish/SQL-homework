create schema homework;
use homework;
CREATE TABLE Products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
unit_price DECIMAL(10, 2)
);
INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(101, 'Laptop','Electronics', 500.00),
(102, 'Smartphone','Electronics', 300.00),
(103, 'Headphones','Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse','Electronics',15.00);
select product_name, unit_price from products;
 select *from products where category= "Electronics";
 select *from products where unit_price> 100 ;
 select avg(unit_price) as avg_unit_price from products;
 select product_name, unit_price from products order by unit_price desc;
 select product_name, unit_price from products where unit_price between 20 and 600;
  select product_name, category from products order by category asc;
select*from products;

