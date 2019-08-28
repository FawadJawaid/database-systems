
--  NAME
--    Reflectors.sql
--
-- DESCRIPTION
--   This script creates the SQL*Plus tables of above (Reflectors) scenario.
--   To remove the tables use the "k112116-B Reflectors Drop.sql" script.
--   To insert tuples in this schema use 'k112116-B Data File for Problem#2 (Reflectors)'


CREATE TABLE Member 
 (MembershipNo INTEGER CHECK(MembershipNo>0) NOT NULL PRIMARY KEY,
  Name VARCHAR(10) NULL,
  Guestsperyear INTEGER CHECK(Guestsperyear<6) NOT NULL,
  Benefits VARCHAR(20) NULL,  
  Contact_Number NUMERIC NULL);



CREATE TABLE Guest 
 (ID INTEGER CHECK(ID>0) NOT NULL PRIMARY KEY,
  Member_MembershipNo INTEGER CHECK(Member_MembershipNo>0) NULL,
  Name VARCHAR(10) NOT NULL,
  ContactNumber NUMERIC(10) NULL,
  CONSTRAINT Guest_FK1 FOREIGN KEY (Member_MembershipNo) REFERENCES Member(MembershipNo),
  CONSTRAINT Guest_FK2 FOREIGN KEY (Member_MembershipNo) REFERENCES Member(MembershipNo));



CREATE TABLE Package 
 (PackageId INTEGER CHECK(PackageId>0) NOT NULL PRIMARY KEY,
  Guest_ID INTEGER CHECK(Guest_ID>0) NULL,
  Member_MembershipNo INTEGER CHECK(Member_MembershipNo>0) NULL,
  Name VARCHAR(10) NOT NULL,
  Duration INTEGER NULL,
  Description VARCHAR(20) NULL,
  CONSTRAINT Package_FK1 FOREIGN KEY (Member_MembershipNo) REFERENCES Member(MembershipNo),
  CONSTRAINT Package_FK2 FOREIGN KEY (Guest_ID) REFERENCES Guest(ID));



CREATE TABLE BusinessCentre 
 (CentreID INTEGER CHECK(CentreID>0) NOT NULL PRIMARY KEY,
  Guest_ID INTEGER CHECK(Guest_ID>0) NULL,
  Member_MembershipNo INTEGER CHECK(Member_MembershipNo>0) NULL,
  AmountRecieved INTEGER CHECK(AmountRecieved>0) NOT NULL,
  CONSTRAINT BusinessCentre_FK1 FOREIGN KEY (Member_MembershipNo) REFERENCES Member(MembershipNo),
  CONSTRAINT BusinessCentre_FK2 FOREIGN KEY (Guest_ID) REFERENCES Guest(ID));



CREATE TABLE Services 
 (ServiceID INTEGER CHECK(ServiceID>0) NOT NULL PRIMARY KEY,
  Guest_ID INTEGER CHECK(Guest_ID>0) NULL,
  BusinessCentre_CentreID INTEGER CHECK(BusinessCentre_CentreID>0) NOT NULL,
  Member_MembershipNo INTEGER CHECK(Member_MembershipNo>0) NULL,
  ServiceName VARCHAR(20) NOT NULL,
  CONSTRAINT Services_FK3 FOREIGN KEY (Member_MembershipNo) REFERENCES Member(MembershipNo),
  CONSTRAINT Services_FK2 FOREIGN KEY (Guest_ID) REFERENCES Guest(ID),
  CONSTRAINT Services_FK1 FOREIGN KEY (BusinessCentre_CentreID) REFERENCES BusinessCentre(CentreID));



CREATE TABLE Package_has_Services 
 (Package_PackageId INTEGER CHECK(Package_PackageId>0) NOT NULL PRIMARY KEY,
  Services_ServiceID INTEGER CHECK(Services_ServiceID>0) NOT NULL,
  DayNumber INTEGER CHECK(DayNumber>0) NOT NULL,
  CONSTRAINT Package_has_Services_FK1 FOREIGN KEY (Package_PackageId) REFERENCES Package(PackageId),
  CONSTRAINT Package_has_Services_FK2 FOREIGN KEY (Services_ServiceID) REFERENCES Services(ServiceID));



CREATE TABLE SubTasks 
 (TaskID INTEGER  CHECK(TaskID>0) NOT NULL PRIMARY KEY,
  Services_ServiceID INTEGER CHECK(Services_ServiceID>0) NOT NULL,
  TaskDuration INTEGER NOT NULL,
  TariffPrices INTEGER CHECK(TariffPrices>0) NOT NULL,
  MembershipPrices INTEGER CHECK(MembershipPrices>0) NOT NULL,
  CONSTRAINT SubTasks_FK1 FOREIGN KEY (Services_ServiceID) REFERENCES Services(ServiceID));

CREATE TABLE SubTasks1
 (SubTasks_TaskID INTEGER  CHECK(SubTasks_TaskID>0) NOT NULL,
  TaskName VARCHAR(20) NOT NULL,
  PRIMARY KEY(TaskName),
  CONSTRAINT SubTasks1_FK FOREIGN KEY (SubTasks_TaskID) REFERENCES SubTasks(TaskID));



CREATE TABLE Staff 
 (StaffID INTEGER CHECK(StaffID>0) NOT NULL PRIMARY KEY,
  Guest_ID INTEGER  CHECK(Guest_ID>0) NULL,
  BusinessCentre_CentreID INTEGER CHECK(BusinessCentre_CentreID>0) NOT NULL,
  Member_MembershipNo INTEGER CHECK(Member_MembershipNo>0) NULL,
  Name VARCHAR(10) NOT NULL,
  CONSTRAINT Staff_FK1 FOREIGN KEY (Member_MembershipNo) REFERENCES Member(MembershipNo),
  CONSTRAINT Staff_FK2 FOREIGN KEY (Guest_ID) REFERENCES Guest(ID),
  CONSTRAINT Staff_FK3 FOREIGN KEY (BusinessCentre_CentreID) REFERENCES BusinessCentre(CentreID),
  CONSTRAINT Staff_FK4 FOREIGN KEY (BusinessCentre_CentreID) REFERENCES BusinessCentre(CentreID));

CREATE TABLE FixedSalaryStaff
 (Staff_StaffID INTEGER CHECK(Staff_StaffID>0) NOT NULL,
  FixedSalary FLOAT NOT NULL,
  PRIMARY KEY(Staff_StaffID),
  CONSTRAINT Staff1_FK FOREIGN KEY (Staff_StaffID) REFERENCES Staff(StaffID));

CREATE TABLE ChargesperTaskStaff
 (Staff_StaffID INTEGER CHECK(Staff_StaffID>0) NOT NULL,
  NumberofTasksInMonth INTEGER CHECK(NumberofTasksperDay>0) NOT NULL,
  SalaryBasedonNoofTasks FLOAT NOT NULL,
  PRIMARY KEY(Staff_StaffID, NumberofTasksperDay),
  CONSTRAINT Staff2_FK FOREIGN KEY (Staff_StaffID) REFERENCES Staff(StaffID));

  
CREATE TABLE Cosmetics 
 (CosmeticsID INTEGER CHECK(CosmeticsID>0) NOT NULL PRIMARY KEY,
  BusinessCentre_CentreID INTEGER CHECK(BusinessCentre_CentreID>0) NOT NULL,
  Staff_StaffID INTEGER CHECK(Staff_StaffID>0) NOT NULL,
  Amount INTEGER CHECK(Amount>0) NULL, 
  Supplier VARCHAR(10) NULL,
  OrderDate DATE NULL,
  Description VARCHAR(20) NULL,
  CONSTRAINT Cosmetics_FK1 FOREIGN KEY (Staff_StaffID) REFERENCES Staff(StaffID),
  CONSTRAINT Cosmetics_FK2 FOREIGN KEY (BusinessCentre_CentreID) REFERENCES BusinessCentre(CentreID));



CREATE TABLE Management 
 (idManagement INTEGER CHECK(idManagement>0) NOT NULL PRIMARY KEY,
  BusinessCentre_CentreID INTEGER CHECK(BusinessCentre_CentreID>0) NOT NULL,
  DailyCashReport VARCHAR(20) NOT NULL,
  CONSTRAINT Management_FK1 FOREIGN KEY (BusinessCentre_CentreID) REFERENCES BusinessCentre(CentreID));



CREATE TABLE ManagementSendRecToBusCen 
 (Management_idManagement INTEGER CHECK(Management_idManagement>0) NOT NULL,
  BusinessCentre_CentreID INTEGER CHECK(BusinessCentre_CentreID>0) NOT NULL,
  Dated DATE NOT NULL,
  Expenses FLOAT NOT NULL,
  Revenue FLOAT NULL,
  PRIMARY KEY(Management_idManagement, Dated),
  CONSTRAINT ManagementSendRecToBusCen_FK1 FOREIGN KEY(Management_idManagement) REFERENCES Management(idManagement),
  CONSTRAINT ManagementSendRecToBusCen_FK2 FOREIGN KEY(BusinessCentre_CentreID) REFERENCES BusinessCentre(CentreID));


