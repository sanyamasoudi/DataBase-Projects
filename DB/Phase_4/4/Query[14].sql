select COUNT(ak.ArtworkCode)
from dbo.Register_Review as rr , dbo.ArtWork as ak 
where rr.artwork_code = ak.ArtworkCode AND ak.ArtworkCode = 'AWC025';
--Number of reviews on a particular artwork