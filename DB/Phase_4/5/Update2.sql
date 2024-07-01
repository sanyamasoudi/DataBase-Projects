UPDATE Orders
SET tracking_code='newTRC001',order_status='Delivered',total_price=100,
city='new city',street='new street',post_code=10003
WHERE tracking_code='TRC001';
