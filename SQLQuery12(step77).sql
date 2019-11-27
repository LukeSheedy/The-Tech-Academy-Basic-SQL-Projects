USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.usspGetAddre @City nvarchar(30), @StateProvinceID nvarchar(30)
AS
SELECT * 
FROM Person.Address
WHERE City = @City AND StateProvinceID = @StateProvinceID 
GO

EXEC dbo.usspGetAddre @City = 'Seattle', @StateProvinceID =79;


