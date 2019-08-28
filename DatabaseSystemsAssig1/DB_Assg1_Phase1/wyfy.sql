CREATE TABLE Account Department (
  Department ID INTEGER UNSIGNED NOT NULL,
  Salesperson_Salesperson ID INTEGER UNSIGNED NOT NULL,
  Customer Information VARCHAR NULL,
  Connection Type VARCHAR NULL,
  PRIMARY KEY(Department ID),
  INDEX Account Department_FKIndex1(Salesperson_Salesperson ID)
);

CREATE TABLE Application (
  IP VARCHAR NOT NULL AUTO_INCREMENT,
  Company_Company Name VARCHAR NOT NULL,
  Device_Device Number INTEGER UNSIGNED NOT NULL,
  Time of Disconnection TIME NULL,
  Bytes Downloaded INTEGER UNSIGNED NULL,
  Bytes Uploaded INTEGER UNSIGNED NULL,
  PRIMARY KEY(IP),
  INDEX Application_FKIndex1(Device_Device Number),
  INDEX Application_FKIndex2(Company_Company Name)
);

CREATE TABLE Company (
  Company Name VARCHAR NOT NULL,
  Company_Company Name VARCHAR NOT NULL,
  Telephone Operator_idTelephone Operator INTEGER UNSIGNED NOT NULL,
  Customer_CNIC INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Company Name),
  INDEX Company_FKIndex1(Customer_CNIC),
  INDEX Company_FKIndex2(Telephone Operator_idTelephone Operator),
  INDEX Company_FKIndex3(Company_Company Name),
  INDEX Company_FKIndex4(Company_Company Name)
);

CREATE TABLE Customer (
  CNIC INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Name VARCHAR NULL,
  Address VARCHAR NULL,
  Phone INTEGER UNSIGNED NULL,
  DOB VARCHAR NULL,
  Connection Type VARCHAR NULL,
  Gender VARCHAR NULL,
  Cell INTEGER UNSIGNED NULL,
  Email VARCHAR NULL,
  PRIMARY KEY(CNIC)
);

CREATE TABLE Device (
  Device Number INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Customer_CNIC INTEGER UNSIGNED NOT NULL,
  Manufacturer Number INTEGER UNSIGNED NULL,
  Device Name VARCHAR NULL,
  Stock Number INTEGER UNSIGNED NULL,
  Charges FLOAT NULL,
  Security Deposit FLOAT NULL,
  Connection Type VARCHAR NULL,
  PRIMARY KEY(Device Number),
  INDEX Device_FKIndex1(Customer_CNIC)
);

CREATE TABLE Postpaid Package (
  Postpaid Package ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Company_Company Name VARCHAR NOT NULL,
  Connection Bandwidth INTEGER UNSIGNED NULL,
  Download Limit INTEGER UNSIGNED NULL,
  Monthly Charges FLOAT NULL,
  Promotion Acceptance Charges FLOAT NULL,
  Package Name VARCHAR NULL,
  Speed INTEGER UNSIGNED NULL,
  Volume INTEGER UNSIGNED NULL,
  Package Price FLOAT NULL,
  PRIMARY KEY(Postpaid Package ID),
  INDEX Postpaid Package_FKIndex1(Company_Company Name)
);

CREATE TABLE Prepaid Packages (
  Package ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Company_Company Name VARCHAR NOT NULL,
  Customer_CNIC INTEGER UNSIGNED NOT NULL,
  Connection Bandwidth INTEGER UNSIGNED NULL,
  Download Limit INTEGER UNSIGNED NULL,
  Cost of Extra Download per GB FLOAT() NULL,
  Promotion Acceptance Charges FLOAT NULL,
  Package Amount FLOAT NULL,
  Hours TIME NULL,
  Validity INTEGER UNSIGNED NULL,
  PRIMARY KEY(Package ID),
  INDEX Prepaid Packages_FKIndex1(Customer_CNIC),
  INDEX Prepaid Packages_FKIndex2(Company_Company Name)
);

CREATE TABLE Salesperson (
  Salesperson ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Company_Company Name VARCHAR NOT NULL,
  Customer_CNIC INTEGER UNSIGNED NOT NULL,
  Salesperson Name VARCHAR NULL,
  PRIMARY KEY(Salesperson ID),
  INDEX Salesperson_FKIndex1(Customer_CNIC),
  INDEX Salesperson_FKIndex2(Company_Company Name),
  INDEX Salesperson_FKIndex3(Company_Company Name)
);

CREATE TABLE Salesperson_Delivers_Device (
  Salesperson_Salesperson ID INTEGER UNSIGNED NOT NULL,
  Device_Device Number INTEGER UNSIGNED NOT NULL,
  Delivery Address VARCHAR NULL,
  PRIMARY KEY(Salesperson_Salesperson ID, Device_Device Number),
  INDEX Salesperson_has_Device_FKIndex1(Salesperson_Salesperson ID),
  INDEX Salesperson_has_Device_FKIndex2(Device_Device Number)
);

CREATE TABLE Salesperson_Get_Signed_From_Customer (
  Salesperson_Salesperson ID INTEGER UNSIGNED NOT NULL,
  Customer_CNIC INTEGER UNSIGNED NOT NULL,
  Satisfactory Report VARCHAR NULL,
  PRIMARY KEY(Salesperson_Salesperson ID, Customer_CNIC),
  INDEX Salesperson_has_Customer_FKIndex1(Salesperson_Salesperson ID),
  INDEX Salesperson_has_Customer_FKIndex2(Customer_CNIC)
);

CREATE TABLE Salesperson_Setup_Device (
  Salesperson_Salesperson ID INTEGER UNSIGNED NOT NULL,
  Device_Device Number INTEGER UNSIGNED NOT NULL,
  Test Date DATE NULL,
  Install Date DATE NULL,
  Area Coverage VARCHAR NULL,
  PRIMARY KEY(Salesperson_Salesperson ID, Device_Device Number),
  INDEX Salesperson_has_Device_FKIndex1(Salesperson_Salesperson ID),
  INDEX Salesperson_has_Device_FKIndex2(Device_Device Number)
);

CREATE TABLE Telephone Operator (
  idTelephone Operator INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Customer_CNIC INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(idTelephone Operator),
  INDEX Telephone Operator_FKIndex1(Customer_CNIC)
);

CREATE TABLE Website (
  Company_Company Name VARCHAR NOT NULL,
  Customer_CNIC INTEGER UNSIGNED NOT NULL,
  Time of Connection TIME NOT NULL AUTO_INCREMENT,
  Download Limit INTEGER UNSIGNED NULL,
  Last Five Payment Records VARCHAR NULL,
  INDEX Website_FKIndex1(Customer_CNIC),
  INDEX Website_FKIndex2(Company_Company Name)
);


