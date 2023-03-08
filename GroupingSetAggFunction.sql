--GROUPING SETS
-- We control the levels of aggregation and can include any combination of aggregates we need

USE AdventureWorksDW2016

SELECT c.MonthNumberOfYear,DayNumberOfMonth , SUM(s.SalesAmount) AS TotalSales
FROM FactInternetSales s JOIN DimDate c ON s.OrderDateKey = c.DateKey
GROUP BY GROUPING SETS
(	--Combina dos sets de datos, por un lado una combinacion de meses y dias
	-- y por otro lado el total general
	(c.MonthNumberOfYear, c.DayNumberOfMonth),  --La combinacion de estos dos 
	() --El vacio hace referencia a no combinar ninguna columna, por ende el total general
)
ORDER BY c.MonthNumberOfYear,c.DayNumberOfMonth

--In the last three exercises, we walked through the ROLLUP, CUBE, and GROUPING SETS grouping operators. 
--Of these three, GROUPING SETS is the most customizable, allowing you to build out exactly the levels of aggregation you want. 
--GROUPING SETS makes no assumptions about hierarchy (unlike ROLLUP) and can remain manageable with a good number of columns (unlike CUBE).