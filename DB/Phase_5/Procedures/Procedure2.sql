CREATE PROCEDURE UpdateOrderStatus
    @TrackingCode NVARCHAR(256),
    @NewStatus NVARCHAR(256)
AS
BEGIN
    UPDATE Orders 
	SET order_status = @NewStatus 
	WHERE tracking_code = @TrackingCode;
END;

SELECT order_status FROM Orders WHERE Orders.tracking_code='TRC007';
EXECUTE UpdateOrderStatus 'TRC007','Delivered';
SELECT order_status FROM Orders WHERE Orders.tracking_code='TRC007';