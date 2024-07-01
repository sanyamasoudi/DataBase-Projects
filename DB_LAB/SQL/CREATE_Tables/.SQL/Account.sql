-- database: :memory:
CREATE TABLE Account(
    birthdate DATE,
    password BIGINT NOT NULL,
    Fname nvarchar(256),
    Lname nvarchar(256),
    phone_number BIGINT,
    user_name nvarchar(256),
    PRIMARY KEY (user_name) 
);

