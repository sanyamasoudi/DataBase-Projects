UPDATE Orders
SET order_status=NULL
WHERE city='New York' AND street='123 Main St' AND post_code=10001;
