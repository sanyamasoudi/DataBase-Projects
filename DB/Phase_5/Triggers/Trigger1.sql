CREATE TRIGGER trg_UpdateWalletAfterPurchase
ON Orders
AFTER INSERT,UPDATE
AS
BEGIN
    UPDATE Buyer
    SET wallet = wallet - inserted.total_price
    FROM Buyer 
	JOIN Cart ON Cart.UserName=Buyer.UserName
	JOIN inserted ON Cart.tracking_code=inserted.tracking_code
    WHERE inserted.order_status = 'Delivered';
END;


SELECT Buyer.wallet,total_price
    FROM Buyer 
	JOIN Cart ON Cart.UserName=Buyer.UserName
	JOIN Orders ON Cart.tracking_code=Orders.tracking_code
    WHERE  Orders.tracking_code='TRC013';


UPDATE dbo.Orders
SET order_status='Delivered'
WHERE  Orders.tracking_code='TRC013';

SELECT Buyer.wallet
    FROM Buyer 
	JOIN Cart ON Cart.UserName=Buyer.UserName
	JOIN Orders ON Cart.tracking_code=Orders.tracking_code
    WHERE  Orders.tracking_code='TRC013';


