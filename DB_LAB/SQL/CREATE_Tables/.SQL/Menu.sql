-- database: :memory:
CREATE TABLE Menu(
    menu_ID TINYINT,
    menu_type nvarchar(256),
    user_name nvarchar(256) NOT NULL,
    PRIMARY KEY (menu_ID),
    Foreign Key (user_name) REFERENCES Account (user_name)
);