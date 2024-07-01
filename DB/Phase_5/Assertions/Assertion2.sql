--This app does not support assertion so for our project we used check clause;
ALTER TABLE dbo.Users
ADD CONSTRAINT passCHECK CHECK (LEN(pass)>=3 AND LEN(pass)<=20);

--The INSERT statement conflicted with the CHECK constraint "passCHECK". 
INSERT INTO dbo.Users(UserName,Fname,Lname,pass,gender,registration_type,user_resume,birthdate,user_image,birth_country)
VALUES
('newUserName','newName','newLastName','01234567890123456789_21','Male','Artist','Renowned artist specializing in oil paintings','2024-06-08','pic02.jpg','Iran');
