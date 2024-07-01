-- از هر کشور چند هنرمند در سایت ثبت نام کرده اند
SELECT Users.birth_country, COUNT(Users.birth_country) AS bCount
FROM Artist
JOIN Users ON Users.UserName = Artist.UserName
GROUP BY Users.birth_country
ORDER BY bCount DESC;

