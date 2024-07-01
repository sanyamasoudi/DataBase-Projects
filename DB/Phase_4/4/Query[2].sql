select AVG(score)
from dbo.Register_Review as r , dbo.Review as r1
where r.review_ID = r1.ReviewID AND r.artwork_code = 'AWC007';
--The average for Artwork AWC007