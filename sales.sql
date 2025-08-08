CREATE TABLE Sales1 (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES Products1(product_id)
);
SELECT * FROM Sales1;
INSERT INTO Sales1 VALUES  (1, 101, 5, '2024-01-01', 2500.00);
INSERT INTO Sales1 VALUES  (2, 102, 3, '2024-01-02', 900.00);
INSERT INTO Sales1 VALUES  (3, 103, 2, '2024-01-02', 60.00);
INSERT INTO Sales1 VALUES  (4, 104, 4, '2024-01-03', 80.00);
INSERT INTO Sales1 VALUES  (5, 105, 6, '2024-01-03', 90.00);
SELECT sale_id, sale_date FROM Sales1;
SELECT * FROM Sales1
WHERE total_price > 100;
SELECT sale_id, total_price FROM Sales1
WHERE sale_date = '2024-01-03';
SELECT SUM(total_price) AS total_revenue FROM Sales1;
SELECT SUM(quantity_sold) AS total_quantity_sold FROM Sales1;
SELECT sale_id, product_id, total_price FROM Sales1
WHERE quantity_sold > 4;
SELECT AVG(total_price) AS average_sale_price FROM Sales1;