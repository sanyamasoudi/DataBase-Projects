use[Art Gallery DataBase]
CREATE TABLE Users(
    UserName NVARCHAR(256) NOT NULL,
    Fname NVARCHAR(256),
    Lname NVARCHAR(256),
    pass Nvarchar(256) NOT NULL, 
    gender Nvarchar(50),
    registration_type NVARCHAR(256),
    user_resume nvarchar(MAX),
    birthdate DATE,
    user_image nvarchar(MAX),
    birth_country NVARCHAR(256),
    PRIMARY KEY (UserName) 
)

CREATE TABLE Users_Email(
	UserName NVARCHAR(256) NOT NULL,
    email NVARCHAR(256) NOT NULL,
    PRIMARY KEY (email),
    FOREIGN KEY (UserName) REFERENCES Users(UserName)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Users_Phone(
	UserName NVARCHAR(256) NOT NULL,
    phone Nvarchar(50) NOT NULL,
    PRIMARY KEY (phone),
    FOREIGN KEY (UserName) REFERENCES Users(UserName)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE ArtWork (
    ArtworkCode NVARCHAR(256)NOT NULL,
    ArtworkName NVARCHAR(256),
    Explanation NVARCHAR(256),
    style NVARCHAR(256),
    Material NVARCHAR(256),
    UserName NVARCHAR(256) NOT NULL,
    PRIMARY KEY (ArtworkCode),
    FOREIGN KEY (UserName) REFERENCES Users(UserName)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
)

CREATE TABLE Users_Favorites (
	UserName NVARCHAR(256) NOT NULL,
    favorite NVARCHAR(256) NOT NULL,
    FOREIGN KEY (UserName) REFERENCES Users(UserName)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
    FOREIGN KEY (favorite) REFERENCES ArtWork(ArtworkCode)
        ON DELETE CASCADE
        ON UPDATE NO ACTION, 
    PRIMARY KEY (favorite, UserName)
);

CREATE TABLE Artist(
    UserName NVARCHAR(256) NOT NULL,
    wallet MONEY DEFAULT 0,
	field_of_activity NVARCHAR(256),
    PRIMARY KEY (UserName),
    FOREIGN KEY (UserName) REFERENCES Users(UserName)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Buyer(
    UserName NVARCHAR(256) NOT NULL,
    wallet MONEY DEFAULT 0,
    PRIMARY KEY (UserName),
    FOREIGN KEY (UserName) REFERENCES Users(UserName)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Reviewer(
    UserName NVARCHAR(256) NOT NULL,
    PRIMARY KEY (UserName),
    FOREIGN KEY (UserName) REFERENCES Users(UserName)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Artist_Awards(
    AwardId NVARCHAR(50) NOT NULL,
    UserName NVARCHAR(256) NOT NULL,
	award_name NVARCHAR(256) NOT NULL,
    date_received DATE,
    PRIMARY KEY (AwardId),
    FOREIGN KEY (UserName) REFERENCES Artist(UserName)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Orders (
    tracking_code NVARCHAR(256) NOT NULL,
    order_status NVARCHAR(256) DEFAULT 'Unknown',
    registration_time DATETIME, 
    total_price MONEY DEFAULT 0,
    city NVARCHAR(256) NOT NULL, 
    street NVARCHAR(256) NOT NULL,
    post_code NVARCHAR(256) NOT NULL,
    PRIMARY KEY (tracking_code)
);

CREATE TABLE Cart (
	UserName NVARCHAR(256) NOT NULL,
    cart_code NVARCHAR(50) NOT NULL,
	tracking_code NVARCHAR(256),
    PRIMARY KEY (cart_code),
    FOREIGN KEY (tracking_code) REFERENCES Orders(tracking_code)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY (UserName) REFERENCES Users(UserName)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Non_Purchasble_Work(
    Artworkcode NVARCHAR(256) NOT NULL,
	old_age INT,
	keeping_place NVARCHAR(256),
    PRIMARY KEY (Artworkcode),
    FOREIGN KEY (Artworkcode) REFERENCES ArtWork(Artworkcode)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
);

CREATE TABLE Purchasble_Work(
    ArtworkCode NVARCHAR(256) NOT NULL,
	price money,
	Art_weight DECIMAL(10, 2),
	Art_length DECIMAL(10, 2),
	width DECIMAL(10, 2),
	height DECIMAL(10, 2),
	cart_code NVARCHAR(50) NOT NULL,
    PRIMARY KEY (ArtworkCode),
    FOREIGN KEY (ArtworkCode) REFERENCES ArtWork(ArtworkCode)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (cart_code) REFERENCES Cart(cart_code)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
);

CREATE TABLE Review (
    ReviewID NVARCHAR(50) NOT NULL,
	score INT CHECK (score >= 1 AND score <= 5),
	review_text NVARCHAR(256),
    PRIMARY KEY (ReviewID),
);

CREATE TABLE Register_Review(
    ReviewerUserName NVARCHAR(256) NOT NULL,
    review_ID NVARCHAR(50) NOT NULL,
    artwork_code NVARCHAR(256) NOT NULL,
    PRIMARY KEY (ReviewerUserName, review_ID, artwork_code),
    FOREIGN KEY (ReviewerUserName) REFERENCES Reviewer(UserName)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    FOREIGN KEY (review_ID) REFERENCES Review (ReviewID)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    FOREIGN KEY (artwork_code) REFERENCES ArtWork (ArtworkCode)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);