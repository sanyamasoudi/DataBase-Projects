CREATE TRIGGER trg_ValidatePhoneNumber
ON Users_Phone
AFTER INSERT, UPDATE
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM inserted WHERE phone LIKE '[0-9]%')
    BEGIN
        RAISERROR ('Invalid phone number format.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;


UPDATE Users_Phone
SET  phone='P_12345678'
WHERE UserName='user38';