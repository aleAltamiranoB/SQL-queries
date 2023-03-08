--Using aggregation function over windows
--ROW_NUMBER()
--Unique, ascending integer value starting from 1
--RANK()
--Ascending Integer value starting from 1.Can have ties.Can Skip numbers
--DENSE_RANK()
--Ascending integer value starting from 1.Can have ties. Will not skip numbers


-- ALL RANKING FUNCTIONS REQUIRE AN OVER() CLAUSE WITH AN 'ORDER BY' CLAUSE INSIDE IT.


SELECT 
	SalesAmount,
	ROW_NUMBER() OVER(ORDER BY SalesAmount DESC) AS rn
FROM FactInternetSales
ORDER BY SalesAmount DESC

SELECT
	SalesAmount,
	RANK() OVER(ORDER BY SalesAmount DESC) AS rn
FROM FactInternetSales

SELECT
	SalesAmount,
	DENSE_RANK() OVER(ORDER BY SalesAmount DESC) AS rn
FROM FactInternetSales

--Adding PARTITION BY

SELECT
	CustomerKey,
	SalesAmount,
	DENSE_RANK() OVER(PARTITION BY CustomerKey ORDER BY SalesAmount DESC) AS rn
FROM FactInternetSales
