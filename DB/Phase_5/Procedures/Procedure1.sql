CREATE PROCEDURE UpdateBuyerWallet
@Buyer_Username NVARCHAR(256)
AS
BEGIN
	DECLARE @Total_Order_Price MONEY;
	SELECT @Total_Order_Price= Orders.total_price
	FROM Buyer
	JOIN Cart ON Cart.UserName=Buyer.UserName
	JOIN Orders ON Orders.tracking_code=Cart.tracking_code
	WHERE Buyer.UserName=@Buyer_Username;

	UPDATE Buyer
	SET wallet=wallet-@Total_Order_Price;

END;

SELECT wallet
FROM Buyer
WHERE UserName='user01';

EXECUTE Update_Buyer_Wallet 'user01';

SELECT wallet
FROM Buyer
WHERE UserName='user01';