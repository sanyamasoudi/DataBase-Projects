CREATE TRIGGER trg_PreventUserDeletionWithActiveOrders
ON Users
INSTEAD OF DELETE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM deleted 
	JOIN Buyer ON deleted.UserName=Buyer.UserName
	JOIN Cart ON Cart.UserName=Buyer.UserName
	JOIN Orders ON Orders.tracking_code=Cart.tracking_code
	WHERE Orders.order_status != 'Delivered')

    BEGIN
        RAISERROR ('Cannot delete users with active orders.', 16, 1);
    END

    ELSE
    BEGIN
        DELETE FROM Users WHERE UserName IN (SELECT UserName FROM deleted);
    END
END;

DELETE FROM Users
WHERE UserName='user07';