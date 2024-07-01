CREATE TRIGGER T2
ON dbo.User_Email1
AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.Users_Email(UserName,email)
    SELECT UserName, email
    FROM inserted;

    DROP TABLE dbo.User_Email1;
END;
