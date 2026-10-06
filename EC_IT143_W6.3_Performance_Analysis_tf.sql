/*
EC_IT143_W6.3_Performance_Analysis_lf.sql

Purpose:
Demonstrate SQL Server performance analysis using
execution plans and nonclustered indexes.

Author: Timote Finau
*/


/*******************************************************
QUERY 1 - PRODUCTS BEFORE INDEX
*******************************************************/

SELECT ProductID, ProductName, Category, ProductCode, Description
FROM dbo.Products
WHERE ProductCode = 'CODE5000'
OPTION (RECOMPILE);
GO


/*******************************************************
QUERY 1 - CREATE INDEX
*******************************************************/

CREATE NONCLUSTERED INDEX IX_Products_ProductCode
ON dbo.Products (ProductCode);
GO


/*******************************************************
QUERY 1 - PRODUCTS AFTER INDEX
*******************************************************/

SELECT ProductID, ProductName, Category, ProductCode, Description
FROM dbo.Products
WHERE ProductCode = 'CODE5000'
OPTION (RECOMPILE);
GO


/*******************************************************
QUERY 2 - CUSTOMERS BEFORE INDEX
*******************************************************/

SELECT CustomerID, FirstName, LastName, City, Email
FROM dbo.Customers
WHERE Email = 'user5000@example.com'
OPTION (RECOMPILE);
GO


/*******************************************************
QUERY 2 - CREATE INDEX
*******************************************************/

CREATE NONCLUSTERED INDEX IX_Customers_Email
ON dbo.Customers (Email);
GO


/*******************************************************
QUERY 2 - CUSTOMERS AFTER INDEX
*******************************************************/

SELECT CustomerID, FirstName, LastName, City, Email
FROM dbo.Customers
WHERE Email = 'user5000@example.com'
OPTION (RECOMPILE);
GO