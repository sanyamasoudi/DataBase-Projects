INSERT INTO Users(UserName,Fname,Lname,pass,gender,registration_type,user_resume,birthdate,user_image,birth_country)
select UserName,name,name2,pass,Gender,RegisterType,CV,DateOfBirth,Picture,Country
from dbo.User1;
DROP TABLE dbo.User1;

INSERT INTO dbo.Users_Email(UserName,email)
select *
from dbo.User_Email1;
DROP TABLE dbo.User_Email1;

INSERT INTO dbo.Users_Phone(UserName,phone)
select UserName , PhoneNumber
from dbo.User_PhoneNumber1;
DROP TABLE dbo.User_PhoneNumber1;

INSERT INTO dbo.ArtWork(ArtworkCode,ArtworkName,Explanation,style,Material,UserName)
select *
from ArtWork1;
DROP TABLE dbo.ArtWork1;

INSERT INTO dbo.Users_Favorites(UserName,favorite)
select *
from dbo.Favarites1;
DROP TABLE dbo.Favarites1;

INSERT INTO dbo.Artist(UserName,wallet,field_of_activity)
select* 
from dbo.Artist1;
DROP TABLE dbo.Artist1;

INSERT INTO dbo.Buyer(UserName,wallet)
select *
from dbo.Buyer1;
DROP TABLE dbo.Buyer1;

INSERT INTO dbo.Reviewer(UserName)
select *
from dbo.Reviewer1;
DROP TABLE dbo.Reviewer1;

INSERT INTO dbo.Artist_Awards(AwardId,UserName,award_name,date_received)
select AwardID,ArtistUserName,NameOfAward,DateOfAward
from dbo.[Awards won1];
DROP TABLE dbo.[Awards won1];

INSERT INTO dbo.Orders(tracking_code,order_status,registration_time,total_price,city,street,post_code)
select TrackingCode,Status,DateOfOrdering,TotalPrice,City,Street,PostalCode
from dbo.Order1;
DROP TABLE dbo.Order1;

INSERT INTO dbo.Cart(UserName,cart_code,tracking_code)
select BuyerUsername,CartID,TrackingCode
from dbo.Cart1;
DROP TABLE dbo.Cart1;

INSERT INTO dbo.Non_Purchasble_Work(Artworkcode,old_age,keeping_place)
select *
from dbo.NotBuyableArtWork1;
DROP TABLE dbo.NotBuyableArtWork1;

INSERT INTO dbo.Purchasble_Work(ArtworkCode,price,Art_weight,Art_length,width,height,cart_code)
select *
from dbo.BuyableArtWork1;
DROP TABLE dbo.BuyableArtWork1;

INSERT INTO dbo.Review(ReviewID,score,review_text)
select *
from dbo.Review1;
DROP TABLE dbo.Review1;

INSERT INTO dbo.Register_Review(ReviewerUserName,review_ID,artwork_code)
select *
from dbo.RegisterTheReview1;
DROP TABLE dbo.RegisterTheReview1;




