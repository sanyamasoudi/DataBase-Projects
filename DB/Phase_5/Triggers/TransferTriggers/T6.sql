CREATE TRIGGER trg_AfterInsertArtist1
ON dbo.Artist1
AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.Artist(UserName,wallet,field_of_activity)
    SELECT *
    FROM inserted;
    
    DROP TABLE dbo.Artist1;
END;
