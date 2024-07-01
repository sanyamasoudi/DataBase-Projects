--1.View that shows the names of all artists with their artwork
CREATE view ArtistName_ArtName AS
	select users.Fname as FirstName , users.Lname as LastName , Artwork.ArtworkName
	from dbo.Artist as artist , dbo.Users as users , dbo.ArtWork as Artwork
	where users.UserName = artist.UserName and Artwork.UserName = artist.UserName;
GO;
SELECT * FROM ArtistName_ArtName;

