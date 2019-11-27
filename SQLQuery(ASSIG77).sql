
DROP PROCEDURE dbo.usspGetAddre
USE AdventureWorks2014
GO
CREATE PROCEDURE dbo.usspGetAddre @City nvarchar(30), @StateProvinceCode nvarchar(30)
AS
SELECT ADRES.AddressLine1, STTB.StateProvinceCode, City, PSTBL.FirstName, PSTBL.LastName
FROM Person.Address AS ADRES
INNER JOIN Person.StateProvince AS STTB ON ADRES.StateProvinceID = STTB.StateProvinceID 
INNER JOIN Person.BusinessEntityAddress AS BIZTBL ON ADRES.AddressID = BIZTBL.AddressID
INNER JOIN Person.Person AS PSTBL ON PSTBL.BusinessEntityID = BIZTBL.BusinessEntityID

WHERE City = @City AND StateProvinceCode= @StateProvinceCode

EXEC dbo.usspGetAddre @City = 'Seattle', @StateProvinceCode='WA';

