-- مقدار پول مبادله شده از طریق سفارش در هر شهر
CREATE PROCEDURE Procedure1
    @CITY nvarchar(256)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT o.city, SUM(o.total_price) AS TotalSales
    FROM Orders o
    WHERE o.city = @CITY
    GROUP BY o.city;
END;
GO


DECLARE MyCursor CURSOR FOR
SELECT DISTINCT city
FROM Orders;

OPEN MyCursor;
DECLARE @MyCursorVar nvarchar(256);

FETCH NEXT FROM MyCursor INTO @MyCursorVar;

WHILE @@FETCH_STATUS = 0
BEGIN
    EXEC Procedure1 @CITY = @MyCursorVar;
    FETCH NEXT FROM MyCursor INTO @MyCursorVar;
END;

CLOSE MyCursor;
DEALLOCATE MyCursor;
