--Aggregate Functions on Dates

--NULLIF
USE AdventureWorksDW2016

SELECT
	COUNT(DISTINCT CalendarYear) AS DintinctCount,
	COUNT(DISTINCT NULLIF(CalendarYear, 2005)) AS NullCount -- Le estoy diciendo que si es 2005 lo convierta en nulo para el count
FROM dbo.DimDate

--Using CASE Statement

--My form to replicate the above statement 

SELECT
	COUNT(DISTINCT(CASE WHEN CalendarYear = 2005 THEN NULL
	ELSE CalendarYear END)) AS CaseCount
FROM dbo.DimDate

--Filtering aggregates with CASE

SELECT
	MAX(CASE WHEN SalesTerritoryKey = 4
			THEN OrderDate
			ELSE NULL END) AS LastDate4Territory

FROM FactInternetSales

-- Se vuelve còmplicado al aumentar el numero de registros!!!
