CREATE TABLE ArtworkChangeLog 
(   
    ArtworkCode nvarchar(256), 
	PreviousDetails nvarchar(256), 
	NewDetails nvarchar(256), 
	ChangeDate nvarchar(256)
);
GO;

CREATE TRIGGER trg_LogArtworkChanges
ON ArtWork
AFTER UPDATE
AS
BEGIN
    INSERT INTO ArtworkChangeLog (ArtworkCode, PreviousDetails, NewDetails, ChangeDate)
    SELECT inserted.ArtworkCode, deleted.Explanation, inserted.Explanation, GETDATE()
    FROM inserted 
	JOIN deleted 
	ON inserted.ArtworkCode = deleted.ArtworkCode
    WHERE inserted.Explanation != deleted.Explanation;
END;


UPDATE ArtWork
SET Explanation='UPDATED EXPLANATION'
WHERE ArtworkCode='AWC001';

SELECT * FROM ArtworkChangeLog;