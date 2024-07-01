CREATE TRIGGER  T5
ON dbo.Favarites1
AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.Users_Favorites(UserName,favorite)
    SELECT *
    FROM inserted;
    
    DROP TABLE dbo.Favarites1;
END;
