--This app does not support assertion
CREATE ASSERTION a4 
CHECK (NOT EXISTS (SELECT ArtworkCode FROM dbo.ArtWork GROUP BY ArtworkCode HAVING COUNT(ArtworkCode) > 1 ));
