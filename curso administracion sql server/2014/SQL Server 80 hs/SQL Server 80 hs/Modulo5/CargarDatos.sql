INSERT INTO SalesOrderHeader ([RevisionNumber], [OrderDate], [DueDate], [ShipDate],
[Status], [OnlineOrderFlag], [PurchaseOrderNumber], [AccountNumber], [CustomerID],
[SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [CreditCardID], 
[CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [Comment], [ModifiedDate])
SELECT [RevisionNumber], [OrderDate], [DueDate], [ShipDate],
[Status], [OnlineOrderFlag], [PurchaseOrderNumber], [AccountNumber], [CustomerID],
[SalesPersonID], [TerritoryID], [BillToAddressID], [ShipToAddressID], [CreditCardID], 
[CreditCardApprovalCode], [CurrencyRateID], [SubTotal], [TaxAmt], [Freight], [Comment], [ModifiedDate]
FROM AdventureWorks2008.Sales.SalesOrderHeader
