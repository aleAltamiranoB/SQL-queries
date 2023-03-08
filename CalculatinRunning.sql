--Calculating running total and moving averages
-- Suma Acumulada y particionada por CustomerKey

SELECT
	CustomerKey,
	SalesAmount,
	SUM(SalesAmount) OVER(PARTITION BY CustomerKey 
						ORDER BY SalesAmount ASC
						RANGE BETWEEN UNBOUNDED PRECEDING
						AND CURRENT ROW) AS TotalSales
FROM FactInternetSales

-- Equivalent Example

--SELECT
--	ir.IncidentDate,
--	ir.IncidentTypeID,
--	ir.NumberOfIncidents,
--    -- Get the total number of incidents
--	SUM(ir.NumberOfIncidents) OVER (
--      	-- Do this for each incident type ID
--		PARTITION BY ir.IncidentTypeID
--      	-- Sort by the incident date
--		ORDER BY ir.IncidentDate
--	) AS NumberOfIncidents
--FROM dbo.IncidentRollup ir
--	INNER JOIN dbo.Calendar c
--		ON ir.IncidentDate = c.Date
--WHERE
--	c.CalendarYear = 2019
--	AND c.CalendarMonth = 7
--	AND ir.IncidentTypeID IN (1, 2)
--ORDER BY
--	ir.IncidentTypeID,
--	ir.IncidentDate;

--RANGE and ROWS. Differences

-- RANGE										--ROWS
--Specify a range of results					-- Specify number of rows to include
--Duplicates processed all at once				-- Duplicates processed a row at a time
-- Only supports UNBOUNDED and CURRENT			-- Supports UNBOUNDED, CURRENT ROW, and number of row
--ROW

--Calculating moving Averages

SELECT
	CustomerKey,
	SalesAmount,
	AVG(SalesAmount) OVER(PARTITION BY CustomerKey 
						ORDER BY SalesAmount ASC
						ROWS BETWEEN 2 PRECEDING -- En este caso suma las dos filas precedentes para sacar el promedio
						AND CURRENT ROW) AS AvgSales
FROM FactInternetSales
WHERE CustomerKey = 11000



SELECT
	CustomerKey,
	SalesAmount,
	AVG(SalesAmount) OVER(PARTITION BY CustomerKey 
						ORDER BY SalesAmount ASC
						ROWS BETWEEN 1 PRECEDING
						AND CURRENT ROW) AS AvgSales
FROM FactInternetSales
WHERE CustomerKey = 11000


