SELECT COUNT(DISTINCT ar.UserName) as Artist ,COUNT(DISTINCT re.UserName) as Reviewer , COUNT( DISTINCT b.UserName) as Buyer
from dbo.Artist as ar , dbo.Reviewer as re , dbo.Buyer as b ;
-- the number of buyers, artists and reviewer active in the site