DROP DATABASE IF EXISTS `book_business`;
CREATE DATABASE IF NOT EXISTS `book_business`; 
USE `book_business`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;

-- --------------------------------------
--  TABLE Publishers
-- --------------------------------------

CREATE TABLE `Publishers` (
	`PublisherID` 		int NOT NULL AUTO_INCREMENT,
	`FirstName` 		varchar (15) NOT NULL,
	`LastName` 		    varchar (15) NOT NULL,
	`Email` 		    varchar (30) NULL,
	`Phone` 		    varchar (30) NULL,
	`BirthDay` 		    char (8) NULL,
	PRIMARY KEY (`PublisherID`),
    INDEX `PublisherID` (`PublisherID` ASC),
    INDEX `FirstName` (`FirstName` ASC),
    INDEX `LastName` (`LastName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE Genres
-- --------------------------------------

CREATE TABLE `Genres` (
	`GenreID` 		    int NOT NULL AUTO_INCREMENT,
	`GenreName` 		varchar (15) NOT NULL,
	PRIMARY KEY (`GenreID`),
    INDEX `GenreID` (`GenreID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE Books
-- --------------------------------------

CREATE TABLE `Books` (
	`BookID` 		    int NOT NULL AUTO_INCREMENT,
	`PublisherID` 		int NOT NULL, 
	`GenreID` 		    int NOT NULL, 
	`BookTitle` 		varchar (30) NOT NULL,
	`Language` 		    varchar (30) NOT NULL,
	`PublicationDate` 	char (8) NULL,
	`EditionDate`   	char (8) NULL,
	`Page`      	    int NULL,
	`Price`      	    int NOT NULL,
	`ISBN10`      	    int NULL,
	`ISBN13`      	    int NULL,
	`Dimentions`      	int NULL,
	PRIMARY KEY (`BookID`),
    FOREIGN KEY(`PublisherID`) 
    REFERENCES `Publishers`(`PublisherID`) ,
    FOREIGN KEY(`GenreID`) 
    REFERENCES `Genres`(`GenreID`),
    INDEX `BookID` (`BookID` ASC),
    INDEX `BookTitle` (`BookTitle` ASC),
    INDEX `PublisherID` (`PublisherID` ASC),
    INDEX `GenreID` (`GenreID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE Authors
-- --------------------------------------

CREATE TABLE `Authors` (
	`AuthorID` 		    int NOT NULL AUTO_INCREMENT,
	`FirstName` 		varchar (15) NOT NULL,
	`LastName` 		    varchar (15) NOT NULL,
	`Email` 		    varchar (30) NULL,
	`Phone` 		    varchar (30) NULL,
	`BirthDay` 		    char (8) NULL,
	PRIMARY KEY (`AuthorID`),
    INDEX `AuthorID` (`AuthorID` ASC),
    INDEX `FirstName` (`FirstName` ASC),
    INDEX `LastName` (`LastName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------
--  TABLE Editors
-- --------------------------------------

CREATE TABLE `Editors` (
	`EditorID` 		    int NOT NULL AUTO_INCREMENT,
	`FirstName` 		varchar (15) NOT NULL,
	`LastName` 		    varchar (15) NOT NULL,
	`Email` 		    varchar (30) NULL,
	`Phone` 		    varchar (30) NULL,
	`BirthDay` 		    char (8) NULL,
	PRIMARY KEY (`EditorID`),
    INDEX `EditorID` (`EditorID` ASC),
    INDEX `FirstName` (`FirstName` ASC),
    INDEX `LastName` (`LastName` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE Customers
-- --------------------------------------

CREATE TABLE `Customers` (
	`CustomerID` 		int NOT NULL AUTO_INCREMENT,
	`FirstName` 		varchar (15) NOT NULL,
	`LastName` 		    varchar (15) NOT NULL,
	`Email` 		    varchar (30) NOT NULL,
	`Phone` 		    varchar (30) NOT NULL,
	`BirthDay` 		    char (8) NULL,
	`PaymentMethod`     varchar (30) NULL,
	`LoginID`           varchar (30) NOT NULL,
	`LoginPass`         varchar (30) NOT NULL,
	PRIMARY KEY (`CustomerID`),
    INDEX `CustomerID` (`CustomerID` ASC),
    INDEX `FirstName` (`FirstName` ASC),
    INDEX `LastName` (`LoginID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE Orders
-- --------------------------------------

CREATE TABLE `Orders` (
	`OrderID` 		        int NOT NULL AUTO_INCREMENT,
	`OrderDate` 	        char (8) NULL,
	`ShippingStatus`        varchar (15) NULL,
	`ShippingDate` 	        char (8) NULL,
	`ShippingLocation` 	    char (8) NULL,
	`ShippingCompany` 	    char (8) NULL,
	`OverValue`             varchar (15) NULL,
	PRIMARY KEY (`OrderID`),
    INDEX `OrderID` (`OrderID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;


-- --------------------------------------
--  TABLE BookAuthors
-- --------------------------------------

CREATE TABLE `BookAuthors` (
	`BookID` 		INT NOT NULL,
	`AuthorID` 		INT NOT NULL,
	`Royalty`       varchar(3) NOT NULL,
	FOREIGN KEY(`BookID`) 
    REFERENCES `Books`(`BookID`) ,
    FOREIGN KEY(`AuthorID`) 
    REFERENCES `Authors`(`AuthorID`),
    INDEX `BookID` (`BookID` ASC),
    INDEX `AuthorID` (`AuthorID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE BookEditors
-- --------------------------------------

CREATE TABLE `BookEditors` (
	`BookID` 		INT NOT NULL,
	`EditorID` 		INT NOT NULL,
	FOREIGN KEY(`BookID`) 
    REFERENCES `Books`(`BookID`) ,
    FOREIGN KEY(`EditorID`) 
    REFERENCES `Editors`(`EditorID`),
    INDEX `BookID` (`BookID` ASC),
    INDEX `EditorID` (`EditorID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE BookOrders
-- --------------------------------------

CREATE TABLE `BookOrders` (
	`BookID` 		INT NOT NULL,
	`OrderID` 		INT NOT NULL,
	FOREIGN KEY(`BookID`) 
    REFERENCES `Books`(`BookID`) ,
    FOREIGN KEY(`OrderID`) 
    REFERENCES `Orders`(`OrderID`),
    INDEX `BookID` (`BookID` ASC),
    INDEX `OrderID` (`OrderID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------
--  TABLE CustomerOrders
-- --------------------------------------

CREATE TABLE `CustomerOrders` (
	`CustomerID` 		INT NOT NULL,
	`OrderID` 		    INT NOT NULL,
	FOREIGN KEY(`CustomerID`) 
    REFERENCES `Customers`(`CustomerID`) ,
    FOREIGN KEY(`OrderID`) 
    REFERENCES `Orders`(`OrderID`),
    INDEX `CustomerID` (`CustomerID` ASC),
    INDEX `OrderID` (`OrderID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;