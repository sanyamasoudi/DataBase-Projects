CREATE TRIGGER TransferUserPhoneData
ON dbo.User_PhoneNumber1
AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.Users_Phone(UserName, phone)
    SELECT UserName, PhoneNumber
    FROM inserted;

    DROP TABLE dbo.User_PhoneNumber1;
END;
