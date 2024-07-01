-- سن یه کاربر خاص
SELECT DATEDIFF(year, birthdate, GETDATE()) AS AGE
FROM Users
WHERE UserName = 'user45';
