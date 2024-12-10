USE zerostarthome;

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    PhoneNumber VARCHAR(15),
    Role ENUM('user', 'admin') NOT NULL
);

CREATE TABLE Agents (
    AgentID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    AgentName VARCHAR(100) NOT NULL,
    Experience VARCHAR(5),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Property (
    PropertyID INT AUTO_INCREMENT PRIMARY KEY,
    PropertyName VARCHAR(100) NOT NULL,
    AgentID INT,
    TypeID INT,
    LocationID INT,
    Description VARCHAR(500),
    Price INT,
    Bedrooms INT,
    Bathrooms FLOAT,
    Sqft FLOAT,
    PropertyStatus VARCHAR(15) NOT NULL,
    MatterportURL VARCHAR(200),
    YouTubeURL VARCHAR(200),
    TikTokURL VARCHAR(200),
    Exceptions ENUM('foreignerquota', 'petsallow', 'duplex', 'penthouse') NOT NULL,
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID),
    FOREIGN KEY (TypeID) REFERENCES PropertyType(TypeID),
    FOREIGN KEY (LocationID) REFERENCES PropertyLocation(LocationID)
);

CREATE TABLE PropertyType (
    TypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeDescription VARCHAR(100) NOT NULL
);

CREATE TABLE PropertyLocation (
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    City VARCHAR(20) NOT NULL,
    Province VARCHAR(20) NOT NULL
);

CREATE TABLE Amenities (
    PropertyID INT PRIMARY KEY,
    Parking BOOL,
    Pool BOOL,
    Gym BOOL,
    Garden BOOL,
    Safety BOOL,
    WiFi BOOL,
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);

CREATE TABLE PTransaction (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    PropertyID INT NOT NULL,
    BuyerName VARCHAR(50) NOT NULL,
    SellerName VARCHAR(50) NOT NULL, 
    Price INT NOT NULL,
    TransactionDate DATE,
    TransactionStatus VARCHAR(10),
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)
);

CREATE TABLE UserReview (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    PropertyID INT NOT NULL,
    UserID INT NOT NULL,
    Rating INT NOT NULL,
    ReviewText VARCHAR(200),
    ReviewDate DATE,
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Images (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Image BLOB NOT NULL
);