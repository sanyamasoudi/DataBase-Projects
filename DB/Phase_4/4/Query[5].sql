-- میانگین قیمت اثرهای قابل خریداری موجود در سبد خرید یک خریدار خاص که سفارش خود را پرداخت کرده
SELECT AVG(Purchasble_Work.price)
FROM Buyer
JOIN Cart ON Cart.UserName=Buyer.UserName
JOIN Orders ON Orders.tracking_code=Cart.tracking_code
JOIN Purchasble_Work ON Purchasble_Work.cart_code=Cart.cart_code
WHERE Orders.order_status=1 AND Buyer.UserName='user01';