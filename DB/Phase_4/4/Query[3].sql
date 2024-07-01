select Fname , Lname
from dbo.Users as u , dbo.Review as re , dbo.Register_Review as rr , dbo.ArtWork as ak
where re.ReviewID = rr.review_ID AND rr.artwork_code = ak.ArtworkCode AND ak.UserName = u.UserName AND re.score>=3 AND re.score<=5;
--Name of the artists which have the artwork rated between 3 and 5;