-- database: :memory:
CREATE TABLE Employee(
    salary money,
    job_title nvarchar(256),
    access_level TINYINT,
    working_hour TIME,
    birthdate DATE,
    password BIGINT NOT NULL,
    Fname nvarchar(256),
    Lname nvarchar(256),
    phone_number BIGINT,
    user_name nvarchar(256),
    PRIMARY KEY (user_name),
    Foreign Key (user_name) REFERENCES Account (user_name)
);

