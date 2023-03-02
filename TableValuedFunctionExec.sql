DECLARE @TableValueFunction TABLE (
Standard_Cost money,
Color_2 nvarchar(15)
)
INSERT INTO @TableValueFunction
SELECT TOP 10 StandardCost, Color
FROM dbo.DimProduct
ORDER BY StandardCost DESC

SELECT * FROM @TableValueFunction

-- Esto representa una alternativa a crear un CTE o una tabla temporal tambien