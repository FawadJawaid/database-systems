CREATE TABLE Business Centre (
  Centre ID INTEGER UNSIGNED NOT NULL,
  Guest_ID INTEGER UNSIGNED NOT NULL,
  Member_Membership No INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Centre ID),
  INDEX Business Centre_FKIndex2(Member_Membership No)
);

CREATE TABLE Cosmetics (
  Cosmetics ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Business Centre_Centre ID INTEGER UNSIGNED NOT NULL,
  Staff_Staff ID INTEGER UNSIGNED NOT NULL,
  Amount INTEGER UNSIGNED NULL,
  Supplier VARCHAR NULL,
  Order Date DATE NULL,
  Description VARCHAR(20) NULL,
  PRIMARY KEY(Cosmetics ID),
  INDEX Cosmetics_FKIndex1(Staff_Staff ID),
  INDEX Cosmetics_FKIndex2(Business Centre_Centre ID)
);

CREATE TABLE Guest (
  ID INTEGER UNSIGNED NOT NULL,
  Name VARCHAR NOT NULL,
  Member_Membership No INTEGER UNSIGNED NOT NULL,
  Contact Number NUMERIC NULL,
  PRIMARY KEY(ID),
  INDEX Guest_FKIndex1(Member_Membership No),
  INDEX Guest_FKIndex2(Member_Membership No)
);

CREATE TABLE Management (
  idManagement INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Business Centre_Centre ID INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(idManagement),
  INDEX Management_FKIndex1(Business Centre_Centre ID)
);

CREATE TABLE Management_Send_Records_To_Business Centre (
  Management_idManagement INTEGER UNSIGNED NOT NULL,
  Business Centre_Centre ID INTEGER UNSIGNED NOT NULL,
  Expenses FLOAT NOT NULL AUTO_INCREMENT,
  Revenue FLOAT NULL,
  Date DATE NULL,
  PRIMARY KEY(Management_idManagement, Business Centre_Centre ID),
  INDEX Management_Send_Records_To_Business Centre_FKIndex1(Management_idManagement),
  INDEX Management_Send_Records_To_Business Centre_FKIndex2(Business Centre_Centre ID)
);

CREATE TABLE Member (
  Membership No INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Guests per year INTEGER UNSIGNED NULL,
  Benefits VARCHAR(20) NULL,
  Name VARCHAR NULL,
  Contact Number NUMERIC NULL,
  PRIMARY KEY(Membership No)
);

CREATE TABLE Package (
  Package Id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Guest_ID INTEGER UNSIGNED NOT NULL,
  Member_Membership No INTEGER UNSIGNED NOT NULL,
  Name VARCHAR NULL,
  Duration DATETIME NULL,
  Description VARCHAR(20) NULL,
  PRIMARY KEY(Package Id),
  INDEX Package_FKIndex1(Member_Membership No)
);

CREATE TABLE Package_has_Services (
  Package_Package Id INTEGER UNSIGNED NOT NULL,
  Services_Service ID INTEGER UNSIGNED NOT NULL,
  Day Number INTEGER UNSIGNED NULL,
  PRIMARY KEY(Package_Package Id, Services_Service ID),
  INDEX Package_has_Services_FKIndex1(Package_Package Id),
  INDEX Package_has_Services_FKIndex2(Services_Service ID)
);

CREATE TABLE Services (
  Service ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Guest_ID INTEGER UNSIGNED NOT NULL,
  Business Centre_Centre ID INTEGER UNSIGNED NOT NULL,
  Member_Membership No INTEGER UNSIGNED NOT NULL,
  Service Name VARCHAR NULL,
  PRIMARY KEY(Service ID),
  INDEX Services_FKIndex3(Member_Membership No),
  INDEX Services_FKIndex2(Business Centre_Centre ID)
);

CREATE TABLE Staff (
  Staff ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Guest_ID INTEGER UNSIGNED NOT NULL,
  Business Centre_Centre ID INTEGER UNSIGNED NOT NULL,
  Member_Membership No INTEGER UNSIGNED NOT NULL,
  Staff Type VARCHAR NOT NULL,
  Name VARCHAR NOT NULL,
  Fixed Salary FLOAT NULL,
  Charges per Task FLOAT NULL,
  Number of Tasks per Day INTEGER UNSIGNED NULL,
  PRIMARY KEY(Staff ID),
  INDEX Staff_FKIndex2(Member_Membership No),
  INDEX Staff_FKIndex2(Business Centre_Centre ID),
  INDEX Staff_FKIndex3(Business Centre_Centre ID)
);

CREATE TABLE Sub Tasks (
   Task ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Services_Service ID INTEGER UNSIGNED NOT NULL,
  Task Name VARCHAR NULL,
  Task Duration DATETIME NULL,
  Tariff Prices INTEGER UNSIGNED NULL,
  Membership Prices INTEGER UNSIGNED NULL,
  PRIMARY KEY( Task ID),
  INDEX Sub Tasks_FKIndex1(Services_Service ID)
);


