
--  NAME
--    Second-hand-Books.com.pk.sql
--
-- DESCRIPTION
--   This script creates the SQL*Plus tables of above (Second-hand-Books.com.pk) scenario.
--   To remove the tables use the "k112116-B Second-hand-Books.com.pk Drop.sql" script.
--   To insert tuples in this schema use 'k112116-B Data File for Problem#3 (Second-hand-Books.com.pk)'



CREATE TABLE PrivateCourier 
 (CourierID INTEGER CHECK(CourierID>0) NOT NULL PRIMARY KEY,
  CourierName VARCHAR(10) NOT NULL,
  CostofDelivery FLOAT NULL);



CREATE TABLE Users 
 (EmailAddress VARCHAR(20) NOT NULL PRIMARY KEY,
  PrivateCourier_CourierID INTEGER CHECK(PrivateCourier_CourierID>0) NOT NULL,
  Name VARCHAR(10) NOT NULL,
  Address VARCHAR(20) NOT NULL,
  CONSTRAINT User_FK3 FOREIGN KEY (PrivateCourier_CourierID) REFERENCES PrivateCourier(CourierID));

CREATE TABLE Users1
 (Users_EmailAddress VARCHAR(20) NOT NULL,
  UserType VARCHAR(6) NOT NULL,
  PaymentofSell FLOAT NULL,
  PRIMARY KEY(UserType, Users_EmailAddress),
  CONSTRAINT User1_FK FOREIGN KEY (Users_EmailAddress) REFERENCES Users(EmailAddress)); 



CREATE TABLE User_Pays_to_PrivateCourier 
 (Users_EmailAddress VARCHAR(20) NOT NULL PRIMARY KEY,
  PrivateCourier_CourierID INTEGER CHECK(PrivateCourier_CourierID>0) NOT NULL,
  PaymentMethod VARCHAR(20) NULL,
  CONSTRAINT User_PaysTo_PvtCourier_FK1 FOREIGN KEY(Users_EmailAddress) REFERENCES Users(EmailAddress),
  CONSTRAINT User_PaysTo_PvtCourier_FK2 FOREIGN KEY(PrivateCourier_CourierID) REFERENCES PrivateCourier(CourierID));



CREATE TABLE Registration_Process 
 (FormSerialNumber INTEGER CHECK(FormSerialNumber>0) NOT NULL PRIMARY KEY,
  Users_EmailAddress VARCHAR(20) NOT NULL,
  CONSTRAINT Registration_Process_FK1 FOREIGN KEY (Users_EmailAddress) REFERENCES Users(EmailAddress),
  CONSTRAINT Registration_Process_FK2 FOREIGN KEY (Users_EmailAddress) REFERENCES Users(EmailAddress));



CREATE TABLE Ranking_System 
 (Comments VARCHAR(30) NULL,
  RankValue INTEGER CHECK(RankValue>0) NOT NULL,
  RetainedUsers VARCHAR(10) NOT NULL,
  Users_EmailAddress VARCHAR(20) NOT NULL,
  CONSTRAINT Ranking_System_FK1 FOREIGN KEY (Users_EmailAddress) REFERENCES Users(EmailAddress));



CREATE TABLE Book 
 (Title VARCHAR(20) NOT NULL PRIMARY KEY,
  Publisher VARCHAR(20) NOT NULL,
  Edition FLOAT NOT NULL,
  User_EmailAddress VARCHAR(20) NOT NULL,
  Price FLOAT NOT NULL,
  BindingType VARCHAR(10) NULL,
  NumberofPages INTEGER CHECK(NumberofPages>0) NOT NULL,
  ConditionofBook VARCHAR(20) NULL,
  Image VARCHAR(30) NULL,
  CONSTRAINT Book_FK1 FOREIGN KEY(User_EmailAddress) REFERENCES Users(EmailAddress),
  CONSTRAINT Book_FK2 FOREIGN KEY(User_EmailAddress) REFERENCES Users(EmailAddress));

CREATE TABLE Book1 
 (Book_Title VARCHAR(20) NOT NULL,
  Author VARCHAR(20) NOT NULL,
  PRIMARY KEY(Author, Book_Title),
  CONSTRAINT Book1_FK FOREIGN KEY(Book_Title) REFERENCES Book(Title));



CREATE TABLE Book_ShipmentBy_PvtCourier 
 (Book_Title VARCHAR(20) NOT NULL PRIMARY KEY,
  PvtCourier_CourierID INTEGER CHECK(PvtCourier_CourierID>0) NOT NULL,
  ShippingAddress VARCHAR(20) NOT NULL,
  CONSTRAINT Book_has_PvtCourier_FK1 FOREIGN KEY(Book_Title) REFERENCES Book(Title),
  CONSTRAINT Book_has_PvtCourier_FK2 FOREIGN KEY(PvtCourier_CourierID) REFERENCES PrivateCOurier(CourierID));



CREATE TABLE RegularProcess 
 (RegularProcessID INTEGER CHECK(RegularProcessID>0) NOT NULL PRIMARY KEY,
  User_EmailAddress VARCHAR(20) NOT NULL,
  Book_Title VARCHAR(20) NOT NULL,
  CONSTRAINT RegularProcess_FK1 FOREIGN KEY(Book_Title) REFERENCES Book(Title),
  CONSTRAINT RegularProcess_FK2 FOREIGN KEY(User_EmailAddress) REFERENCES Users(EmailAddress));



CREATE TABLE BiddingProcess 
 (BiddingProcessID INTEGER CHECK(BiddingProcessID>0) NOT NULL PRIMARY KEY,
  User_EmailAddress VARCHAR(20) NOT NULL,
  Book_Title VARCHAR(20) NOT NULL,
  CONSTRAINT BiddingProcess_FK1 FOREIGN KEY(Book_Title) REFERENCES Book(Title),
  CONSTRAINT BiddingProcess_FK2 FOREIGN KEY(User_EmailAddress) REFERENCES Users(EmailAddress),
  CONSTRAINT BiddingProcess_FK3 FOREIGN KEY(User_EmailAddress) REFERENCES Users(EmailAddress));

CREATE TABLE BiddingProcess1 
 (BiddingProcess_BidProcID INTEGER CHECK(BiddingProcess_BidProcID>0) NOT NULL,
  CloseDate DATE NOT NULL,
  HighestBidPrice FLOAT NOT NULL,
  PRIMARY KEY(CloseDate, BiddingProcess_BidProcID),
  CONSTRAINT BiddingProcess1_FK FOREIGN KEY(BiddingProcess_BidProcID) REFERENCES BiddingProcess(BiddingProcessID));



CREATE TABLE WebPageforBidProc 
 (BiddingProcess_BiddingProcID INTEGER CHECK(BiddingProcess_BiddingProcID>0) NOT NULL,
  ConnectionTime FLOAT NOT NULL,
  AvailableLimit INTEGER CHECK(AvailableLimit>0) NOT NULL,
  CONSTRAINT WebPageforBidProc_FK FOREIGN KEY(BiddingProcess_BiddingProcID) REFERENCES BiddingProcess(BiddingProcessID));

CREATE TABLE WebPageforRegProc 
 (RegularProcess_RegularProcID INTEGER CHECK(RegularProcess_RegularProcID>0) NOT NULL,
  ConnectionTime FLOAT NOT NULL,
  AvailableLimit INTEGER CHECK(AvailableLimit>0) NOT NULL,
  CONSTRAINT WebPageforRegProc_FK1 FOREIGN KEY(RegularProcess_RegularProcID) REFERENCES RegularProcess(RegularProcessID),
  CONSTRAINT WebPageforRegProc_FK2 FOREIGN KEY(RegularProcess_RegularProcID) REFERENCES RegularProcess(RegularProcessID));



CREATE TABLE SellingProcPlacesAdon_WebPage 
 (RegularProcess_RegularProcID INTEGER CHECK(RegularProcess_RegularProcID>0) NOT NULL,
  AdCharges INTEGER CHECK(AdCharges>0) NOT NULL,
  CONSTRAINT SellingProc_PlacesAdon_WebFK FOREIGN KEY(RegularProcess_RegularProcID) REFERENCES RegularProcess(RegularProcessID));



CREATE TABLE SearchingProcess 
 (SearchingProcessID INTEGER CHECK(SearchingProcessID>0) NOT NULL PRIMARY KEY,
  Book_Title VARCHAR(20) NOT NULL,
  On_ContentAnd_Topics VARCHAR(30) NULL,
  On_CombinationOf_Fields VARCHAR(30) NULL,
  On_Specified_Field VARCHAR(30) NULL,
  CONSTRAINT SearchingProcess_FK1 FOREIGN KEY(Book_Title) REFERENCES Book(Title));

