CREATE TRIGGER T1
ON dbo.User1
AFTER INSERT
AS
BEGIN
    INSERT INTO Users(UserName, Fname, Lname, pass, gender, registration_type, user_resume, birthdate, user_image, birth_country)
    SELECT 
        newInsert.UserName,
        newInsert.Fname,
        newInsert.Lname,
        newInsert.pass,
        newInsert.gender,
        newInsert.registration_type,
        newInsert.user_resume,
        newInsert.birthdate,
        newInsert.user_image,
        newInsert.birth_country
    FROM inserted newInsert;
END;
