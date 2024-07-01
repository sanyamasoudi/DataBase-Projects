-- database: :memory:
CREATE TABLE Factor(
    factor_ID TINYINT,
    payment_status BIT NOT NULL,
    date DATE,
    total_cost money NOT NULL,
    hour TIME,
    user_name nvarchar(256) NOT NULL,
    PRIMARY KEY (factor_ID),
    Foreign Key (user_name) REFERENCES Account (user_name)
    );