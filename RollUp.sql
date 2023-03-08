-- Grouping by ROLLUP, CUBE and GROUPING SETS
-- ROLLUP works best with hierarchical data


USE AdventureWorksDW2016

--SELECT c.MonthNumberOfYear, c.DayNumberOfMonth, SUM(s.SalesAmount) AS TotalSales
--FROM FactInternetSales s JOIN DimDate c ON s.OrderDateKey = c.DateKey
--GROUP BY c.MonthNumberOfYear,c.DayNumberOfMonth
--ORDER BY c.MonthNumberOfYear,c.DayNumberOfMonth

SELECT c.MonthNumberOfYear,DayNumberOfMonth , SUM(s.SalesAmount) AS TotalSales
FROM FactInternetSales s JOIN DimDate c ON s.OrderDateKey = c.DateKey
GROUP BY c.MonthNumberOfYear,c.DayNumberOfMonth
WITH ROLLUP
ORDER BY c.MonthNumberOfYear,c.DayNumberOfMonth



--SELECT DayNumberOfMonth, DateKey
--FROM DimDate
--WHERE DayNumberOfMonth IS NULL


