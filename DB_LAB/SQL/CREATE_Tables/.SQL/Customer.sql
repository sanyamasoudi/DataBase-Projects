-- database: :memory:
CREATE TABLE Customer(
    street nvarchar(256),
    city nvarchar(256),
    postcode INT,
    birthdate DATE,
    password BIGINT NOT NULL,
    Fname nvarchar(256),
    Lname nvarchar(256),
    phone_number BIGINT,
    user_name nvarchar(256),
    PRIMARY KEY (user_name),
    Foreign Key (user_name) REFERENCES Account (user_name)
);

