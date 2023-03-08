--Statistical aggregates functions
--AVG()
--STDEV() Standard Deviation
--STDEVP() Population Standard Deviation
--VAR()
--VARP()
-- SQL Server doesn't have a Median built in function, we need ot use PERCENTILE_CONT set at 50% 
--to obtain median measure

USE AdventureWorksDW2016

SELECT TOP(1) PERCENTILE_CONT(0.5)
	WITHIN GROUP (ORDER BY SalesAmount) OVER() AS MedianSalesAmount --Specify the group, wich is how you order the dataset
FROM FactInternetSales
-- Agrupamos el dataset por la cantidad vendida para luego dividir en percentiles y tomar el percentil 0.5
--que seria la mediana. Posterior se aplica una funcion de ventana para aplicar a todos los registros
-- y por ultimo tomamos solo el primer dato.

--No se recomienda usar esto en PRODUCCION tiene un costo de PERFORMANCE ALTISIMO!!!
