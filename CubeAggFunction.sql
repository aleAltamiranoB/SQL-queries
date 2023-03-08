--Cartesian aggregation with CUBE

--For cases where you  want to see the full combination of all aggregations between columns

USE AdventureWorksDW2016

SELECT c.MonthNumberOfYear,DayNumberOfMonth , SUM(s.SalesAmount) AS TotalSales
FROM FactInternetSales s JOIN DimDate c ON s.OrderDateKey = c.DateKey
GROUP BY c.MonthNumberOfYear,c.DayNumberOfMonth
WITH CUBE
ORDER BY c.MonthNumberOfYear,c.DayNumberOfMonth
