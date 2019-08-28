
--  NAME
--    Wyfy.sql
--
-- DESCRIPTION
--   This script creates the SQL*Plus tables of above (Wyfy) scenario.
--   To remove the tables use the "k112116-B Wyfy Drop.sql" script.
--   To insert tuples in this schema use 'k112116-B Data File for Problem#1 (wyfy)'


CREATE TABLE Customer 
 (CNIC INTEGER CHECK(CNIC>0) NOT NULL PRIMARY KEY,
  Name VARCHAR(10) NOT NULL,
  Address VARCHAR(20) NOT NULL,
  Phone INTEGER CHECK(Phone>0) NULL,
  DOB VARCHAR(20) NULL,
  Gender VARCHAR(10) NULL,
  Cell INTEGER CHECK(Cell>0) NULL,
  Email VARCHAR(20) NULL,
  ConnectionType VARCHAR(6) NOT NULL);


  
CREATE TABLE Telephone_Operator 
 (idTelephone_Operator INTEGER CHECK(idTelephone_Operator>0) NOT NULL PRIMARY KEY,
  Customer_CNIC INTEGER CHECK(Customer_CNIC>0) NOT NULL,
  CONSTRAINT Telephone_Operator_FK FOREIGN KEY (Customer_CNIC) REFERENCES Customer (CNIC));



CREATE TABLE Company 
 (CompanyName VARCHAR(10) NOT NULL PRIMARY KEY,
  Company_CompanyName VARCHAR(10) NOT NULL,
  Telephone_Operatorid INTEGER CHECK(Telephone_Operatorid>0) NULL,
  Customer_CNIC INTEGER CHECK(Customer_CNIC>0) NOT NULL,
  CONSTRAINT Company_FK1 FOREIGN KEY(Customer_CNIC) REFERENCES Customer (CNIC),
  CONSTRAINT Company_FK2 FOREIGN KEY(Telephone_Operatorid) REFERENCES Telephone_Operator (idTelephone_Operator),
  CONSTRAINT Company_FK3 FOREIGN KEY(Company_CompanyName) REFERENCES Company(CompanyName),
  CONSTRAINT Company_FK4 FOREIGN KEY(Company_CompanyName) REFERENCES Company(CompanyName));



CREATE TABLE Device 
 (DeviceNumber INTEGER CHECK(DeviceNumber>0) NOT NULL PRIMARY KEY,
  Customer_CNIC INTEGER CHECK(Customer_CNIC>0) NOT NULL,
  ManufacturerNumber INTEGER CHECK(ManufacturerNumber>0) NOT NULL,  
  LifeofDevice INTEGER CHECK(LifeofDevice<4) NOT NULL,
  CONSTRAINT Device_FK FOREIGN KEY(Customer_CNIC) REFERENCES Customer(CNIC));

CREATE TABLE Device1
 (Device_DeviceNumber INTEGER CHECK(Device_DeviceNumber>0) NOT NULL,
  StockNumber INTEGER CHECK(StockNumber>0) NOT NULL,
  DeviceName VARCHAR(20) NOT NULL,
  PRIMARY KEY(StockNumber),
  CONSTRAINT Device1_FK FOREIGN KEY(Device_DeviceNumber) REFERENCES Device(DeviceNumber));

CREATE TABLE Device2 
 (Device_DeviceNumber INTEGER CHECK(Device_DeviceNumber>0) NOT NULL,
  DeviceType VARCHAR(20) NOT NULL,
  Charges FLOAT NOT NULL,
  SecurityDeposit FLOAT NOT NULL,
  PRIMARY KEY(DeviceType),
  CONSTRAINT Device2_FK FOREIGN KEY(Device_DeviceNumber) REFERENCES Device(DeviceNumber));



CREATE TABLE Salesperson 
 (SalespersonID INTEGER CHECK(SalespersonID>0) NOT NULL PRIMARY KEY,
  Company_CompanyName VARCHAR(10) NOT NULL,
  Customer_CNIC INTEGER CHECK(Customer_CNIC>0) NOT NULL,
  SalespersonName VARCHAR(10) NOT NULL,
  CONSTRAINT Salesperson_FK1 FOREIGN KEY(Customer_CNIC) REFERENCES Customer (CNIC),
  CONSTRAINT Salesperson_FK2 FOREIGN KEY(Company_CompanyName) REFERENCES Company (CompanyName),
  CONSTRAINT Salesperson_FK3 FOREIGN KEY(Company_CompanyName) REFERENCES Company (CompanyName));



CREATE TABLE Salesperson_SignedByCustomer 
 (Salesperson_ID INTEGER CHECK(Salesperson_ID>0) NOT NULL PRIMARY KEY,
  Customer_CNIC INTEGER CHECK(Customer_CNIC>0) NOT NULL,
  SatReport VARCHAR(20) NULL,
  CONSTRAINT Salesperson_SignedCustomer_FK1 FOREIGN KEY(Salesperson_ID) REFERENCES Salesperson(SalespersonID),
  CONSTRAINT Salesperson_SignedCustomer_FK2 FOREIGN KEY(Customer_CNIC) REFERENCES Customer (CNIC));



CREATE TABLE Salesperson_Delivers_Device 
 (Salesperson_SalespersonID INTEGER CHECK(Salesperson_SalespersonID>0) NOT NULL PRIMARY KEY,
  Device_DeviceNumber INTEGER CHECK(Device_DeviceNumber>0) NOT NULL,
  DeliveryAddress VARCHAR(20) NOT NULL,
  CONSTRAINT SalespersonDeliversDevice_FK1 FOREIGN KEY(Salesperson_SalespersonID) REFERENCES Salesperson(SalespersonID),
  CONSTRAINT SalespersonDeliversDevice_FK2 FOREIGN KEY(Device_DeviceNumber) REFERENCES Device(DeviceNumber));


 
CREATE TABLE Salesperson_Setup_Device 
 (Salesperson_SalespID INTEGER CHECK(Salesperson_SalespID>0) NOT NULL PRIMARY KEY,
  Device_DeviceNum INTEGER CHECK(Device_DeviceNum>0) NOT NULL,
  TestDate DATE NOT NULL,
  InstallDate DATE NOT NULL,
  AreaCoverage VARCHAR(10) NULL,
  CONSTRAINT SalespersonsetupDevice_FK1 FOREIGN KEY(Salesperson_SalespID) REFERENCES Salesperson(SalespersonID),
  CONSTRAINT SalespersonsetupDevice_FK2 FOREIGN KEY(Device_DeviceNum) REFERENCES Device(DeviceNumber));



CREATE TABLE Application 
 (IP VARCHAR(15) NOT NULL PRIMARY KEY,
  Company_CompanyName VARCHAR(10) NOT NULL,
  Device_DeviceNumber INTEGER CHECK(Device_DeviceNumber>0) NOT NULL,
  TimeofDisconnection INTEGER CHECK(TimeofDisconnection>0) NOT NULL,
  BytesDownloaded INTEGER CHECK(BytesDownloaded>0) NULL,
  BytesUploaded INTEGER CHECK(BytesUploaded>0) NULL,
  CONSTRAINT Application_FK1 FOREIGN KEY(Device_DeviceNumber) REFERENCES Device(DeviceNumber),
  CONSTRAINT Application_FK2 FOREIGN KEY(Company_CompanyName) REFERENCES Company(CompanyName));



CREATE TABLE Website 
 (Company_CompanyName VARCHAR(10) NOT NULL,
  Customer_CNIC INTEGER CHECK(Customer_CNIC>0) NOT NULL,
  TimeofConnection INTEGER CHECK(TimeofConnection>0) NOT NULL,
  DownloadLimit INTEGER CHECK(DownloadLimit>0) NOT NULL,
  LastFivePaymentRecords VARCHAR(20) NULL,
  CONSTRAINT Website_FK1 FOREIGN KEY(Customer_CNIC) REFERENCES Customer(CNIC),
  CONSTRAINT Website_FK2 FOREIGN KEY(Company_CompanyName) REFERENCES Company(CompanyName));



CREATE TABLE AccountDepartment 
 (DepartmentID INTEGER CHECK(DepartmentID>0) NOT NULL PRIMARY KEY,
  Salesperson_SalespersonID INTEGER CHECK(Salesperson_SalespersonID>0) NOT NULL,
  CustomerInformation VARCHAR(30) NOT NULL,
  ConnectionType VARCHAR(6) NOT NULL,
  CONSTRAINT AccountDepartment_FK1 FOREIGN KEY(Salesperson_SalespersonID) REFERENCES Salesperson(SalespersonID));



CREATE TABLE PostpaidPackage 
 (PostpaidPackageID INTEGER CHECK(PostpaidPackageID>0) NOT NULL PRIMARY KEY,
  Company_CompanyName VARCHAR(10) NOT NULL,
  Connection_Bandwidth INTEGER CHECK(Connection_Bandwidth>0) NOT NULL,
  PromotionAcceptanceCharges FLOAT NOT NULL,
  Speed INTEGER CHECK(Speed>0) NOT NULL,
  Volume INTEGER CHECK(Volume>0) NOT NULL,
  CONSTRAINT PostpaidPackage_FK1 FOREIGN KEY(Company_CompanyName) REFERENCES Company(CompanyName));

CREATE TABLE PostpaidPackage1 
 (PostpdPkg_PostpdPkgID INTEGER CHECK(PostpdPkg_PostpdPkgID>0) NOT NULL,
  PackageName VARCHAR(20) NOT NULL,
  Package_Price FLOAT NOT NULL,
  PRIMARY KEY(PackageName, PostpdPkg_PostpdPkgID),
  CONSTRAINT PostpaidPackage1_FK FOREIGN KEY(PostpdPkg_PostpdPkgID) REFERENCES PostpaidPackage(PostpaidPackageID));

CREATE TABLE PostpaidPackage2 
 (PostpdPkg_PostpdPkgID INTEGER CHECK(PostpdPkg_PostpdPkgID>0) NOT NULL,
  Download_Limit VARCHAR(20) NOT NULL,
  Monthly_Charges FLOAT NOT NULL,
  PRIMARY KEY(Download_Limit, PostpdPkg_PostpdPkgID),
  CONSTRAINT PostpaidPackage2_FK FOREIGN KEY(PostpdPkg_PostpdPkgID) REFERENCES PostpaidPackage(PostpaidPackageID));



CREATE TABLE PrepaidPackages 
 (PackageID INTEGER CHECK(PackageID>0) NOT NULL PRIMARY KEY,
  Company_CompanyName VARCHAR(10) NOT NULL,
  Customer_CNIC INTEGER CHECK(Customer_CNIC>0) NOT NULL,
  Connection_Bandwidth INTEGER CHECK(Connection_Bandwidth>0) NULL,
  PromotionAcceptanceCharges FLOAT NOT NULL,
  CONSTRAINT PrepaidPackages_FK1 FOREIGN KEY(Customer_CNIC) REFERENCES Customer(CNIC),
  CONSTRAINT PrepaidPackages_FK2 FOREIGN KEY(Company_CompanyName) REFERENCES Company(CompanyName));

CREATE TABLE PrepaidPackages1 
 (PrepdPkg_PackageID INTEGER CHECK(PrepdPkg_PackageID>0) NOT NULL, 
  DeviceType VARCHAR(10) NOT NULL,
  SecurityDeposit INTEGER NOT NULL,
  PRIMARY KEY(DeviceType, PrepdPkg_PackageID),
  CONSTRAINT PrepaidPackages1_FK FOREIGN KEY(PrepdPkg_PackageID) REFERENCES PrepaidPackages(PackageID));

CREATE TABLE PrepaidPackages2 
 (PrepdPkg_PackageID INTEGER CHECK(PrepdPkg_PackageID>0) NOT NULL,
  Download_Limit VARCHAR(10) NOT NULL,
  CostofExtraDownloadperGB FLOAT NOT NULL,
  PRIMARY KEY(Download_Limit, PrepdPkg_PackageID),
  CONSTRAINT PrepaidPackages2_FK FOREIGN KEY(PrepdPkg_PackageID) REFERENCES PrepaidPackages(PackageID));

CREATE TABLE PrepaidPackages3 
 (PrepdPkg_PackageID INTEGER CHECK(PrepdPkg_PackageID>0) NOT NULL,
  Hours INTEGER CHECK(Hours>0) NOT NULL,
  PackageAmount FLOAT NOT NULL,
  ValidityInDays INTEGER CHECK(Validity>0) NOT NULL,
  PRIMARY KEY(Hours, PrepdPkg_PackageID),
  CONSTRAINT PrepaidPackages3_FK FOREIGN KEY(PrepdPkg_PackageID) REFERENCES PrepaidPackages(PackageID));


