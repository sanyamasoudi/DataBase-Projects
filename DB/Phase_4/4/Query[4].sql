select Fname,Lname
from dbo.Artist_Awards as aa , dbo.Users as u
where YEAR(aa.date_received) = 2020 AND u.UserName = aa.UserName;
-- Name of the artist that won a prize in 2020;