CREATE FUNCTION GetFavoriteArtworkCount (@Username NVARCHAR(256))
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;
    SELECT @Count = COUNT(favorite)
    FROM Users_Favorites
    WHERE UserName = @Username;
    RETURN ISNULL(@Count, 0);
END;
GO;

SELECT dbo.GetFavoriteArtworkCount('user01') AS FavoriteArtworkCount;