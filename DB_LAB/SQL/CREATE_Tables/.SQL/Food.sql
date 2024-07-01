-- database: :memory:
CREATE TABLE Food(
    name nvarchar(256) NOT NULL,
    cost money NOT NULL,
    food_ID TINYINT,
    description nvarchar(256),
    user_name nvarchar(256) NOT NULL,
    remain_number TINYINT,
    menu_ID TINYINT NOT NULL,
    PRIMARY KEY (food_ID),
    Foreign Key (user_name) REFERENCES Account (user_name),
    Foreign Key (menu_ID) REFERENCES Menu (menu_ID)

);