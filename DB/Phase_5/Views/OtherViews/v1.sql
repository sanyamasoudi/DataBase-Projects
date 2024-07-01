CREATE VIEW v1
AS SELECT Artist.UserName , Artist.field_of_activity , Artist.Wallet
CASE 

WHEN Wallet < 5300 THEN N'Low sales'
WHEN Wallet BETWEEN 5300 , 5900 THEN N'Average sales'
WHEN Wallet > 5900 THEN N'High sales'
END

FROM Artist
SELECT * FROM V1
