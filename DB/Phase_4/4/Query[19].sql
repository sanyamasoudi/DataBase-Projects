select re.UserName , ar.UserName
from dbo.Artist as ar , dbo.Reviewer as re , dbo.Register_Review as rr , dbo.ArtWork as ak
where rr.ReviewerUserName = re.UserName AND 
	  rr.artwork_code = ak.ArtworkCode AND 
	  ak.UserName = ar.UserName;
	  -- each artist with his reviewer