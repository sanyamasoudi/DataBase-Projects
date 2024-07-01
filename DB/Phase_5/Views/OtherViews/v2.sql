CREATE VIEW v2
AS SELECT ArtworkName ,style ,Material FROM Artworks 
INNER JOIN Purchasble_Work ON Purchasble_Work.ArtworkCode = Atrworks.ArtworkCode 

SELECT * FROM V2
