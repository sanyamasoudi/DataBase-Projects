CREATE VIEW v3 
AS SELECT order_status , total_price ,registration_time FROM Orders
WHERE order_status = 'Delivered' ;