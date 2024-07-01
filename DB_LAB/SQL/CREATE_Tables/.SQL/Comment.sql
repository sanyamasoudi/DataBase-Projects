-- database: :memory:
CREATE TABLE Comment(
    score TINYINT NOT NULL,
    description nvarchar(256),
    coment_ID TINYINT,
    user_name nvarchar(256) NOT NULL,
    PRIMARY KEY(coment_ID),
    Foreign Key (user_name) REFERENCES Account (user_name)
);
