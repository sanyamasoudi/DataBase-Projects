select u.UserName
from dbo.Users as u , dbo.Users_Favorites as uf
where u.UserName = uf.UserName 
GROUP BY u.UserName 
HAVING COUNT(u.UserName)>=2;
--Name of the users that have more than 2 favarite artworks(in the data we added there is no such a user)