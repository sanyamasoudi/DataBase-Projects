CREATE FUNCTION GetArtworkStyle (@ArtworkCode NVARCHAR(256))
RETURNS NVARCHAR(256)
AS
BEGIN
    DECLARE @Style NVARCHAR(256);
    SELECT @Style = style
    FROM ArtWork
    WHERE ArtworkCode = @ArtworkCode;
    RETURN @Style;
END;
GO
SELECT dbo.GetArtworkStyle('AWC001') AS ArtworkStyle;
