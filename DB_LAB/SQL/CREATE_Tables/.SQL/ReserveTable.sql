-- database: :memory:
CREATE TABLE ReserveTable(
    date DATE,
    reservation_time TIME,
    capacity TINYINT,
    reserve_status BIT NOT NULL,
    table_ID TINYINT,
    user_name nvarchar(256) NOT NULL,
    PRIMARY KEY (table_ID),
    Foreign Key (user_name) REFERENCES Account (user_name)
);