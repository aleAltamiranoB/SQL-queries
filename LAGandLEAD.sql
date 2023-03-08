-- Working with LAG() and LEAD() functions
-- The LAG and LEAD functions give us the ability ti link together past, present and future
-- in the same query

--LAG()
SELECT
	CustomerKey,
	LAG(SalesAmount) OVER(PARTITION BY CustomerKey 
						ORDER BY SalesAmount 
						) AS Prior,
	SalesAmount
FROM FactInternetSales

--The result us a table wich includes the current row as well as the prior records row

--LEAD()
SELECT
	CustomerKey,
	SalesAmount,
	LEAD(SalesAmount) OVER(PARTITION BY CustomerKey 
						ORDER BY SalesAmount 
						) AS Next
FROM FactInternetSales

-- The next rows result

--Specifing number of rows back:

SELECT
	CustomerKey,
	LAG(SalesAmount,2) OVER(PARTITION BY CustomerKey 
						ORDER BY SalesAmount 
						) AS Prior2,
	SalesAmount
FROM FactInternetSales

--LEAD and LAG functions execute after WHERE clause

SELECT
	CustomerKey,
	LAG(SalesAmount,1) OVER(ORDER BY SalesAmount) AS Prior1,
	SalesAmount
FROM FactInternetSales
WHERE CustomerKey >= 11008

-- Se puede usar una CTE para crear una tabla temporal con LAG sin WHERE 
-- Y luego armar otra query poniendo el WHERE

