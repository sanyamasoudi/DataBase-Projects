-- database: :memory:
CREATE TABLE Discount(
    discount_ID TINYINT,
    factor_ID TINYINT NOT NULL,
    discount_type nvarchar(256),
    user_name nvarchar(256) NOT NULL,
    PRIMARY KEY (discount_ID),
    Foreign Key (user_name) REFERENCES Account (user_name),
    Foreign Key (factor_ID) REFERENCES Factor (factor_ID)
);