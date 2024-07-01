CREATE TRIGGER trg_AutoAddNewArtist
ON Users
AFTER INSERT
AS
BEGIN
    INSERT INTO Artist (UserName)
    SELECT UserName FROM inserted WHERE registration_type = 'Artist';
END;

INSERT INTO Users VALUES
('NEW Username','NEW Fname','NEW Lname','NEW PASS','Male','Artist','NEW Resume','2023-10-07','pic46.png','IRAN');

SELECT * 
FROM Artist
WHERE UserName='NEW Username';