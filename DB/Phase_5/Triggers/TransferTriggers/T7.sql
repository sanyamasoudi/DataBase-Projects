CREATE TRIGGER T6
ON  Orders
AFTER Delete
AS 
BEGIN
declare @tracking_code ;
set @tracking_code = (SELECT tracking_code FROM DELETED)
DELETE FROM Orders WHERE tracking_code=@tracking_code
END