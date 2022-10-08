-- --------------------------------------
--  7.1 Books per author
-- --------------------------------------
SELECT CONCAT(FirstName, " ", LastName) AS AuthorName, BookTitle
FROM Authors LEFT OUTER JOIN Books ON Authors.AuthorID = Books.BookID;

-- --------------------------------------
--  7.2 Authors per book
-- --------------------------------------
SELECT BookTitle, CONCAT(FirstName, " ", LastName) AS AuthorName
FROM Books LEFT OUTER JOIN Authors ON Books.BookID = Authors.AuthorID;

-- --------------------------------------
--  7.3 Author royalties on a book
-- --------------------------------------
SELECT BookTitle, Royalty
FROM Books INNER JOIN Authors ON Books.BookID = Authors.AuthorID 
INNER JOIN BookAuthors ON Books.BookID = BookAuthors.AuthorID ;

-- --------------------------------------
--  7.4 Book royalties per author
-- --------------------------------------
SELECT CONCAT(FirstName, " ", LastName) AS AuthorName, Royalty
FROM Books INNER JOIN Authors ON Books.BookID = Authors.AuthorID 
INNER JOIN BookAuthors ON Books.BookID = BookAuthors.AuthorID ;

-- --------------------------------------
--  7.5 Books in a genre.
-- --------------------------------------
SELECT GenreName, BookID, BookTitle, Language, PublicationDate, EditionDate, Page, Price, ISBN10, ISBN13, Dimentions
FROM Books INNER JOIN Genres ON Books.BookID = Genres.GenreID; 

-- --------------------------------------
--  7.6 Books published by a publisher
-- --------------------------------------
SELECT BookTitle, CONCAT(FirstName, " ", LastName) AS PublishserName, Language, PublicationDate, EditionDate, Page, Price, ISBN10, ISBN13, Dimentions
FROM Books INNER JOIN Publishers ON Books.BookID = Publishers.PublisherID;

-- --------------------------------------
--  7.7 Editors per book.
-- --------------------------------------
SELECT BookTitle, CONCAT(FirstName, " ", LastName) AS EditorName, 
FROM Books INNER JOIN Editors ON Books.BookID = Editors.EditorID;

-- --------------------------------------
--  7.8 Books per editor.
-- --------------------------------------
SELECT CONCAT(FirstName, " ", LastName) AS EditorName, BookTitle 
FROM Editors INNER JOIN Books ON Editors.EditorID=Books.BookID;

-- --------------------------------------
--  7.9 Books in an order
-- --------------------------------------
SELECT OrderID, OrderDate, ShippingStatus, ShippingDate, ShippingLocation, ShippingCompany, OverValue, BookTitle
FROM Orders LEFT OUTER JOIN Books ON Orders.OrderID=Books.BookID;

-- --------------------------------------
--  7.10 Orders for a book
-- --------------------------------------
SELECT BookTitle, OrderID, OrderDate, ShippingStatus, ShippingDate, ShippingLocation, ShippingCompany, OverValue
FROM Orders LEFT OUTER JOIN Books ON Orders.OrderID=Books.BookID;

-- --------------------------------------
--  7.11 Customer orders.
-- --------------------------------------
SELECT  Customer ID, CONCAT(FirstName, " ", LastName) AS CustomerName, OrderID, OrderDate, ShippingStatus
FROM Customers LEFT OUTER JOIN Orders ON Customers.CustomerID=Orders.OrderID;

-- --------------------------------------
--  7.12 Orders per customer
-- --------------------------------------
SELECT  Customer ID, CONCAT(FirstName, " ", LastName) AS CustomerName, Email, Phone, Birthday, OrderID, PaymentMethod, OrderDate
FROM Customers LEFT OUTER JOIN Orders ON Customers.CustomerID=Orders.OrderID;
