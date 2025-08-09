CREATE TABLE Salestask (
    SaleID INT PRIMARY KEY,
    Salesperson VARCHAR(50),
    Region VARCHAR(50),
    Product VARCHAR(50),
    Quantity INT,
    SaleAmount DECIMAL(10,2)
);

SELECT * FROM Salestask;

INSERT INTO Salestask VALUES (1, 'Alice', 'North', 'Laptop', 1, 1000.00);
INSERT INTO Salestask VALUES (2, 'Bob', 'South', 'Mouse', 3, 75.00);
INSERT INTO Salestask VALUES (3, 'Alice', 'North', 'Monitor', 2, 300.00);
INSERT INTO Salestask VALUES (4, 'Charlie', 'East', 'Keyboard', 1, 50.00);
INSERT INTO Salestask VALUES (5, 'Bob', 'South', 'Monitor', 1, 150.00);
INSERT INTO Salestask VALUES (6, 'Alice', 'North', 'Mouse', 2, 50.00);
INSERT INTO Salestask VALUES (7, 'Charlie', 'East', 'Laptop', 2, 2000.00);
INSERT INTO Salestask VALUES (8, 'David', 'West', 'Laptop', 1, 1100.00);
INSERT INTO Salestask VALUES (9, 'David', 'West', 'Mouse', 4, 100.00);
INSERT INTO Salestask VALUES (10, 'Eve', 'South', 'Monitor', 3, 450.00);
INSERT INTO Salestask VALUES (11, 'Eve', 'South', 'Keyboard', 2, 100.00);
INSERT INTO Salestask VALUES (12, 'Eve', 'South', 'Mouse', 1, 25.00);
INSERT INTO Salestask VALUES (13, 'Alice', 'North', 'Keyboard', 1, 60.00);
INSERT INTO Salestask VALUES (14, 'Bob', 'South', 'Laptop', 1, 1200.00);
INSERT INTO Salestask VALUES (15, 'Charlie', 'East', 'Mouse', 2, 50.00);
SELECT Salesperson, SUM(Quantity) AS TotalQuantity FROM Salestask GROUP BY Salesperson;
SELECT Salesperson, SUM(Quantity) AS TotalQuantity FROM Salestask GROUP BY Salesperson HAVING SUM(Quantity) > 5;
SELECT Salesperson, COUNT(*) AS NumberOfSales FROM Salestask GROUP BY Salesperson;
SELECT Region, SUM(SaleAmount) AS TotalSales FROM Salestask GROUP BY Region HAVING SUM(SaleAmount) > 1000;
SELECT Salesperson, COUNT(*) AS Transactions FROM Salestask GROUP BY Salesperson HAVING COUNT(*) > 2;
SELECT Product, SUM(SaleAmount) AS TotalSales FROM Salestask GROUP BY Product HAVING SUM(SaleAmount) > 500;
SELECT Region, Product, SUM(Quantity) AS TotalQuantity FROM Salestask GROUP BY Region, Product;
SELECT Salesperson FROM Salestask GROUP BY Salesperson HAVING COUNT(DISTINCT Product) > 1;
SELECT Region, Product, AVG(Quantity) AS AvgQuantity FROM Salestask GROUP BY Region, Product HAVING AVG(Quantity) > 1;
SELECT Salesperson, SUM(SaleAmount) AS TotalSales FROM Salestask GROUP BY Salesperson HAVING SUM(SaleAmount) BETWEEN 500 AND 1500;
SELECT Product, SUM(Quantity) AS TotalQuantity FROM Salestask GROUP BY Product HAVING SUM(Quantity) > 3;
SELECT DISTINCT Salesperson FROM Salestask WHERE Product = 'Laptop';
SELECT Salesperson, Region, SUM(SaleAmount) AS TotalSales FROM Salestask GROUP BY Salesperson, Region HAVING SUM(SaleAmount) > 500;
SELECT Salesperson, Region FROM Salestask GROUP BY Salesperson, Region HAVING COUNT(DISTINCT Product) >= 2;
SELECT Product FROM Salestask GROUP BY Product HAVING COUNT(DISTINCT Region) > 1;
SELECT Product, COUNT(*) AS SalesCount FROM Salestask GROUP BY Product HAVING COUNT(*) >= 2;
SELECT Region, Salesperson, SUM(Quantity) AS TotalQuantity FROM Salestask GROUP BY Region, Salesperson;
SELECT Salesperson, COUNT(*) AS Transactions, SUM(SaleAmount) AS TotalSales FROM Salestask GROUP BY Salesperson HAVING COUNT(*) > 3 AND SUM(SaleAmount) > 1000;
SELECT Region, AVG(SaleAmount) AS AvgSaleAmount FROM Salestask GROUP BY Region HAVING AVG(SaleAmount) > 200;
SELECT Region, Product, SUM(Quantity) AS TotalQuantity FROM Salestask GROUP BY Region, Product HAVING SUM(Quantity) > 3;
