CREATE TRIGGER T4
ON dbo.Orders
AFTER DELETE
AS
BEGIN
    INSERT INTO dbo.Orders(tracking_code, order_status, total_price, city, street, post_code)
    SELECT tracking_code, order_status, total_price, city, street, post_code
    FROM deleted;

END;

