--2.View that shows the content of a special user cart
CREATE view SpecialUser_Cart AS
	select user2.Fname as FirstName , user2.Lname as LastName , Artwork2.ArtworkName as ContentOFCart
	from dbo.Cart as cart , dbo.Purchasble_Work as artworks , dbo.ArtWork as Artwork2 , dbo.Users as user2
	where artworks.cart_code = cart.cart_code and 
		  artworks.ArtworkCode = Artwork2.ArtworkCode and 
		  Artwork2.UserName = user2.UserName and
		  user2.UserName = 'user02';
GO;
SELECT * FROM SpecialUser_Cart;