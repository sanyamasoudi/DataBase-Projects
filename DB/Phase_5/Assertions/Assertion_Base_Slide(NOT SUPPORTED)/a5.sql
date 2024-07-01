--This app does not support assertion
CREATE ASSERTION a5 
CHECK (NOT EXISTS (SELECT tracking_code FROM dbo.Orders GROUP BY tracking_code HAVING COUNT(tracking_code) > 1));
