SELECT b.[ProductAssemblyID], b.[ComponentID], p.[Name], b.[PerAssemblyQty], p.[StandardCost], p.[ListPrice], b.[BOMLevel], 0 
FROM [Production].[BillOfMaterials] b
INNER JOIN [Production].[Product] p 
ON b.[ComponentID] = p.[ProductID] 
WHERE b.[ProductAssemblyID] = 791


SELECT b.[ProductAssemblyID], b.[ComponentID], p.[Name], b.[PerAssemblyQty], p.[StandardCost], p.[ListPrice], b.[BOMLevel], 0 
FROM [Production].[BillOfMaterials] b
INNER JOIN [Production].[Product] p 
ON b.[ComponentID] = p.[ProductID] 
WHERE b.[ProductAssemblyID] = 795

SELECT *
FROM [Production].[BillOfMaterials] 
WHERE StartDate>='20000601' and StartDate<='20000605'

SELECT *
FROM [Production].[BillOfMaterials] 
WHERE BOMLevel=1