CREATE VIEW v4 
AS SELECT order_status , total_price ,registration_time FROM Orders
WHERE order_status In ('Pending' , 'In Progress');