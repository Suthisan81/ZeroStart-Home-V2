USE zerostarthome;

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    PhoneNumber VARCHAR(15),
    Role ENUM('User', 'Admin') NOT NULL
);

CREATE TABLE Agents (
    AgentID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    AgentName VARCHAR(100) NOT NULL,
    Experience VARCHAR(5),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE PropertyLocations (
    LocationID INT AUTO_INCREMENT PRIMARY KEY,
    City VARCHAR(50) NOT NULL,
    Province VARCHAR(50) NOT NULL
);

CREATE TABLE Properties (
    PropertyID INT AUTO_INCREMENT PRIMARY KEY,
    PropertyName VARCHAR(100) NOT NULL,
    AgentID INT,
    Type ENUM('Condo', 'Land', 'Villa', 'House', 'Townhouse', 'Apartment'),
    LocationID INT,
    Description TEXT,
    Price DECIMAL(10, 2),
    Bedrooms INT,
    Bathrooms DECIMAL(3, 1),
    Sqft DECIMAL(10, 2),
    PropertyStatus VARCHAR(20) NOT NULL,
    MatterportURL VARCHAR(255),
    YouTubeURL VARCHAR(255),
    TikTokURL VARCHAR(255),
    Parameter ENUM('foreignerquota', 'petsallow', 'duplex', 'penthouse') NOT NULL,
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID),
    FOREIGN KEY (LocationID) REFERENCES PropertyLocations(LocationID)
);

CREATE TABLE Amenities (
    PropertyID INT PRIMARY KEY,
    Parking BOOLEAN,
    Pool BOOLEAN,
    Gym BOOLEAN,
    Garden BOOLEAN,
    Safety BOOLEAN,
    WiFi BOOLEAN,
    FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID)
);

CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    PropertyID INT NOT NULL,
    BuyerName VARCHAR(100) NOT NULL,
    SellerName VARCHAR(100) NOT NULL, 
    Price DECIMAL(10, 2) NOT NULL,
    TransactionDate DATE,
    TransactionStatus VARCHAR(20),
    FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID)
);

CREATE TABLE UserReviews (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    PropertyID INT NOT NULL,
    UserID INT NOT NULL,
    Rating INT NOT NULL,
    ReviewText TEXT,
    ReviewDate DATE,
    FOREIGN KEY (PropertyID) REFERENCES Properties(PropertyID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Images (
    ImageID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Image BLOB NOT NULL
);
