--This app does not support assertion
CREATE ASSERTION a3
CHECK (NOT EXISTS (SELECT * FROM Users WHERE UserName IS NULL) AND
NOT EXISTS (SELECT email FROM dbo.Users_Email GROUP BY email HAVING COUNT(email) > 1));