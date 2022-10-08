-- --------------------------------------
--  Precautio: SET SET SESSION sql_mode = ''; BEFORE INSERT INFO
--             OTHERWISE, MySQL error : "Incorrect integer value" for column id at row 1 is going to happen
--             Reference: <https://hoststud.com/resources/resolved-mysql-error-incorrect-integer-value-for-column-id-at-row-1.493/>
-- --------------------------------------
SET SESSION sql_mode = '';

-- --------------------------------------
--  POPULATE Publishers
-- --------------------------------------
INSERT INTO `Publishers` VALUES(1,'Nancy','Davolio','nancy@gmail.com','(360) 234-8488','19481208');
INSERT INTO `Publishers` VALUES(2,'Andrew','Fuller','andrew@yahoo.com',NULL,'19520219');
INSERT INTO `Publishers` VALUES(3,'Janet','Leverling','maggie@outlook.com','(326) 234-4522','19640930');
INSERT INTO `Publishers` VALUES(4,'Margaret','Peacock','janet@hotmail.com','(786) 634-4522','19630830');
INSERT INTO `Publishers` VALUES(5,'Steven','Buchanan','steve@apple.com',NULL,'19550304');

-- --------------------------------------
--  POPULATE Authors
-- --------------------------------------
INSERT INTO `Authors` VALUES(1,'Michael','Suyama','rob@gmail.com','(360) 234-8388','19481208');
INSERT INTO `Authors` VALUES(2,'Robert','King','rob@gmail.com',NULL,'19520219');
INSERT INTO `Authors` VALUES(3,'Laura','Callahan','maewaggie@outlook.com','(326) 234-4522','19610930');
INSERT INTO `Authors` VALUES(4,'Anne','Dodsworth','janerwewt@hotmail.com','(786) 634-4522','19230730');
INSERT INTO `Authors` VALUES(5,'Ivy','Johnson','stevewea@apple.com',NULL,'19590604');

-- --------------------------------------
--  POPULATE Editors
-- --------------------------------------
INSERT INTO `Editors` VALUES(1,'Micfdael','Sfdayama','rob@gmail.com','(360) 234-8388','19481208');
INSERT INTO `Editors` VALUES(2,'Robertson','Kingee','rob@gmail.com',NULL,'19520219');
INSERT INTO `Editors` VALUES(3,'Nancy','Johnson','maewaggie@outlook.com','(326) 234-4522','19610930');
INSERT INTO `Editors` VALUES(4,'Anne','Callahan','janerwewt@hotmail.com','(786) 634-4522','19230730');
INSERT INTO `Editors` VALUES(5,'Ivy','yam','stevewea@apple.com',NULL,'19590604');

-- --------------------------------------
--  POPULATE Customers
-- --------------------------------------
INSERT INTO `Customers` VALUES(1,'Ana','Trujillo','rob@gmail.com','(360) 234-8388','19432208','VISA','rob@gmail.com','ABC' );
INSERT INTO `Customers` VALUES(2,'Andrew','Fuller','roddb@gmail.com','(361) 234-2388','19520219','Master','roddb@gmail.com','ABCr22ew' );
INSERT INTO `Customers` VALUES(3,'Acnancy','Johnfdson','maewaggie@outlook.com','(326) 234-4522','19210930','VISA','maewaggie@outlook.com','AfaC' );
INSERT INTO `Customers` VALUES(4,'Anne','Callahan','janerwewt@hotmail.com','(786) 634-4522','19230930','VISA','maewaggie@outlook.com','Afdsa11BC' );
INSERT INTO `Customers` VALUES(5,'Ivy','yam','stereavewea@apple.com','(362) 234-8338','19590604','AMEX','stevewea@apple.com','AB421maC' );
INSERT INTO `Customers` VALUES(6,'Micfdael','Sfdayama','rorafdab@gmail.com','(360) 234-8388','19481878','VISA','rob@gmail.com','ABC' );
INSERT INTO `Customers` VALUES(7,'Janet','Leverling','fdaaf@gmail.com','(560) 234-3388','19520219','Master','roddb@gmail.com','ABCr22ew' );
INSERT INTO `Customers` VALUES(8,'Anna','Kingee','fdaa@outlook.com','(221) 233-4532','19610930','VISA','maewaggie@outlook.com','AfaC' );
INSERT INTO `Customers` VALUES(9,'Kuzuro','Callahanee','jaanerfdsawt@hotmail.com','(786) 634-4522','19289730','VISA','maewaggie@outlook.com','Afdsa11BC' );
INSERT INTO `Customers` VALUES(10,'Sum','yamsan','sfda@apple.com','(160) 334-8588','19590604','AMEX','stevewea@apple.com','AB421maC' );

-- --------------------------------------
--  POPULATE Genres
-- --------------------------------------
INSERT INTO `Genres` VALUES(1,'Art');
INSERT INTO `Genres` VALUES(2,'Sports');
INSERT INTO `Genres` VALUES(3,'Business');
INSERT INTO `Genres` VALUES(4,'Science');
INSERT INTO `Genres` VALUES(5,'History');

-- --------------------------------------
--  POPULATE Books
-- --------------------------------------
INSERT INTO `Books` VALUES(1,'1','1','ABC Text','Japanese','20020730','20020730','292','1000','1234','4567','121354' );
INSERT INTO `Books` VALUES(2,'2','2','KODC Text','English','20020920','20021020','392','2000','2234','5567','131354' );
INSERT INTO `Books` VALUES(3,'3','3','Pokemon Text','Japanese','19890530','20030120','492','3000','3234','6567','151354' );
INSERT INTO `Books` VALUES(4,'4','4','MIT Text','English','20010630','20120920','592','4000','4234','7567','151354' );
INSERT INTO `Books` VALUES(5,'5','5','HBS Text','English','20000720','20150920','692','5000','5234','8567','161354' );

-- --------------------------------------
--  POPULATE Orders
-- --------------------------------------
INSERT INTO `Orders` VALUES(1,'20030330','Pending','20030331','MA','DHL','1' );
INSERT INTO `Orders` VALUES(2,'20050710','Processing','20030331','OA','DHL' ,'2');
INSERT INTO `Orders` VALUES(3,'20060810','Done','20030331','NY','DHL' ,'3');
INSERT INTO `Orders` VALUES(4,'20100910','Done','20030331','Japan','DHL','4' );
INSERT INTO `Orders` VALUES(5,'20100910','Done','20030331','Japan','DHL' ,'5');