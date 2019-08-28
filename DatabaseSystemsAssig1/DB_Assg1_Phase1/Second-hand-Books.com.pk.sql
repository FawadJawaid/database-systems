CREATE TABLE 'User' (
  Email Address VARCHAR NOT NULL AUTO_INCREMENT,
  Private Courier_Courier ID INTEGER UNSIGNED NOT NULL,
  Name VARCHAR NOT NULL,
  Address VARCHAR NOT NULL,
  User Type VARCHAR NOT NULL,
  Rank Value INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Email Address),
  INDEX 'User'_FKIndex3(Private Courier_Courier ID)
);

CREATE TABLE 'User'_Pays_to_Private Courier (
  'User'_Email Address VARCHAR NOT NULL,
  Private Courier_Courier ID INTEGER UNSIGNED NOT NULL,
  Payment Method VARCHAR(20) NULL,
  PRIMARY KEY('User'_Email Address, Private Courier_Courier ID),
  INDEX 'User'_has_Private Courier_FKIndex1('User'_Email Address),
  INDEX 'User'_has_Private Courier_FKIndex2(Private Courier_Courier ID)
);

CREATE TABLE Bidding Process (
  Bidding Process ID INTEGER UNSIGNED NOT NULL,
  'User'_Email Address VARCHAR NOT NULL,
  Book_Edition FLOAT NOT NULL,
  Book_Publisher VARCHAR NOT NULL,
  Book_Author VARCHAR NOT NULL,
  Book_Title VARCHAR NOT NULL,
  Close Date DATE NULL,
  PRIMARY KEY(Bidding Process ID),
  INDEX Bidding Process_FKIndex1(Book_Title, Book_Author, Book_Publisher, Book_Edition),
  INDEX Bidding Process_FKIndex2('User'_Email Address),
  INDEX Bidding Process_FKIndex3('User'_Email Address)
);

CREATE TABLE Book (
  Title VARCHAR NOT NULL AUTO_INCREMENT,
  Author VARCHAR NOT NULL,
  Publisher VARCHAR NOT NULL,
  Edition FLOAT NOT NULL,
  Bidding Process_Bidding Process ID INTEGER UNSIGNED NOT NULL,
  Regular Process_Regular Process ID INTEGER UNSIGNED NOT NULL,
  'User'_Email Address VARCHAR NOT NULL,
  Price FLOAT NULL,
  Binding Type VARCHAR NULL,
  Number of Pages INTEGER UNSIGNED NULL,
  Condition of Book VARCHAR(20) NULL,
  Image BLOB NULL,
  PRIMARY KEY(Title, Author, Publisher, Edition),
  INDEX Book_FKIndex1('User'_Email Address),
  INDEX Book_FKIndex2('User'_Email Address),
  INDEX Book_FKIndex3(Regular Process_Regular Process ID),
  INDEX Book_FKIndex4(Bidding Process_Bidding Process ID)
);

CREATE TABLE Book_Shipment_Through_Private Courier (
  Book_Edition FLOAT NOT NULL,
  Book_Publisher VARCHAR NOT NULL,
  Book_Author VARCHAR NOT NULL,
  Book_Title VARCHAR NOT NULL,
  Private Courier_Courier ID INTEGER UNSIGNED NOT NULL,
  Shipping Address VARCHAR NULL,
  PRIMARY KEY(Book_Edition, Book_Publisher, Book_Author, Book_Title, Private Courier_Courier ID),
  INDEX Book_has_Private Courier_FKIndex1(Book_Title, Book_Author, Book_Publisher, Book_Edition),
  INDEX Book_has_Private Courier_FKIndex2(Private Courier_Courier ID)
);

CREATE TABLE Private Courier (
  Courier ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Courier Name VARCHAR NULL,
  Cost of Delivery VARCHAR NULL,
  PRIMARY KEY(Courier ID)
);

CREATE TABLE Ranking System (
  Retained Users INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Comments VARCHAR() NULL
);

CREATE TABLE Registration Process (
  Form Serial Number INTEGER UNSIGNED NOT NULL,
  'User'_Email Address VARCHAR NOT NULL,
  PRIMARY KEY(Form Serial Number),
  INDEX Registration Process_FKIndex1('User'_Email Address),
  INDEX Registration Process_FKIndex2('User'_Email Address)
);

CREATE TABLE Regular Process (
  Regular Process ID INTEGER UNSIGNED NOT NULL,
  Book_Edition FLOAT NOT NULL,
  Book_Publisher VARCHAR NOT NULL,
  Book_Author VARCHAR NOT NULL,
  Book_Title VARCHAR NOT NULL,
  PRIMARY KEY(Regular Process ID),
  INDEX Regular Process_FKIndex1(Book_Title, Book_Author, Book_Publisher, Book_Edition)
);

CREATE TABLE Searching Process (
  Searching Process ID INTEGER UNSIGNED NOT NULL,
  Book_Edition FLOAT NOT NULL,
  Book_Publisher VARCHAR NOT NULL,
  Book_Author VARCHAR NOT NULL,
  Book_Title VARCHAR NOT NULL,
  Searches On Content and Topics VARCHAR NULL,
  Searches On Combination of Fields VARCHAR NULL,
  Searches On Specified Field VARCHAR NULL,
  PRIMARY KEY(Searching Process ID),
  INDEX Searching Process_FKIndex1(Book_Title, Book_Author, Book_Publisher, Book_Edition)
);

CREATE TABLE Selling Process_Places_Ad_on_WebPage (
  Regular Process_Regular Process ID INTEGER UNSIGNED NOT NULL,
  Ad Charges INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  INDEX Selling Process_Places_Ad_on_WebPage_FKIndex2(Regular Process_Regular Process ID)
);

CREATE TABLE WebPage (
  Bidding Process_Bidding Process ID INTEGER UNSIGNED NOT NULL,
  Regular Process_Regular Process ID INTEGER UNSIGNED NOT NULL,
  Connection Time FLOAT NOT NULL AUTO_INCREMENT,
  Available Limit INTEGER UNSIGNED NULL,
  INDEX WebPage_FKIndex1(Regular Process_Regular Process ID),
  INDEX WebPage_FKIndex2(Regular Process_Regular Process ID),
  INDEX WebPage_FKIndex3(Bidding Process_Bidding Process ID)
);


