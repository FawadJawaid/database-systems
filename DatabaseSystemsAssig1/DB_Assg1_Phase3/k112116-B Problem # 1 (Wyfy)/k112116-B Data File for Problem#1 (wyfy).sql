-- Data File for Problem # 1 (Wyfy)


INSERT INTO Customer VALUES(42101, 'Ali', 'R12', 6932886, '14-June-1993','Male', 0333113345, 'k112111@nu.edu.pk', 'ABC');
INSERT INTO Customer VALUES(42102, 'Ahmed', 'R14', 6932887, '16-June-1993','Male', 0333113346, 'k112119@nu.edu.pk', 'ABC');
INSERT INTO Customer VALUES(42103, 'Sara', 'R16', 6932888, '17-June-1993','Female', 0333113365, 'k112118@nu.edu.pk', 'ABC');
INSERT INTO Customer VALUES(42104, 'Sana', 'R17', 6932889, '19-June-1993','Female', 0333113375, 'k112156@nu.edu.pk', 'ABC');
INSERT INTO Customer VALUES(42105, 'Junaid', 'R18', 6932880, '12-June-1993','Male', 0333113348, 'k112145@nu.edu.pk', 'ABC');


INSERT INTO Telephone_Operator VALUES(11, 42101);
INSERT INTO Telephone_Operator VALUES(12, 42102); 
INSERT INTO Telephone_Operator VALUES(13, 42103);


INSERT INTO Company VALUES('Lexol', 'Lexol', 11, 42101);
INSERT INTO Company VALUES('Dexol', 'Dexol', 12, 42102); 
INSERT INTO Company VALUES('Mexol', 'Mexol', 13, 42103);
INSERT INTO Company VALUES('Kexol', 'Kexol', NULL, 42104);
INSERT INTO Company VALUES('Zexol', 'Zexol', NULL, 42105;


INSERT INTO Device VALUES(31, 42101, 2311, 1);
INSERT INTO Device VALUES(32, 42102, 2312, 1);
INSERT INTO Device VALUES(33, 42103, 2313, 2);
INSERT INTO Device VALUES(34, 42104, 2314, 2);
INSERT INTO Device VALUES(35, 42105, 2311, 1);


INSERT INTO Device1 VALUES(31, 21, 'Qubee');
INSERT INTO Device1 VALUES(32, 22, 'Rubee');
INSERT INTO Device1 VALUES(33, 23, 'Tubee');
INSERT INTO Device1 VALUES(34, 24, 'Yubee');
INSERT INTO Device1 VALUES(35, 25, 'Hubee');


INSERT INTO Device2 VALUES(31, 'Desktop Modem', 1200, 1000);
INSERT INTO Device2 VALUES(32, 'Desktop Modem', 1200, 1000);
INSERT INTO Device2 VALUES(33, 'Wyfy Modem', 1500, 1500);
INSERT INTO Device2 VALUES(34, 'Pocket Modem', 1000, 1500);
INSERT INTO Device2 VALUES(35, 'Desktop Modem', 1200, 1000);


INSERT INTO Salesperson VALUES(1121,'Lexol', 42101, 'Jamshed');
INSERT INTO Salesperson VALUES(1122,'Dexol', 42102, 'Rashid');
INSERT INTO Salesperson VALUES(1123,'Mexol', 42103, 'Dhawan');
INSERT INTO Salesperson VALUES(1124,'Kexol', 42104, 'Shilpa');
INSERT INTO Salesperson VALUES(1125,'Zexol', 42105, 'Ranbir');


INSERT INTO Salesperson_SignedByCustomer VALUES (1121, 42101, 'Good');
INSERT INTO Salesperson_SignedByCustomer VALUES (1121, 42101, 'Good');
INSERT INTO Salesperson_SignedByCustomer VALUES (1121, 42101, 'Bad');
INSERT INTO Salesperson_SignedByCustomer VALUES (1122, 42101, 'Bad');
INSERT INTO Salesperson_SignedByCustomer VALUES (1122, 42101, 'Good');
INSERT INTO Salesperson_SignedByCustomer VALUES (1122, 42101, 'Average');
INSERT INTO Salesperson_SignedByCustomer VALUES (1123, 42101, 'Good');
INSERT INTO Salesperson_SignedByCustomer VALUES (1123, 42101, 'Average');
INSERT INTO Salesperson_SignedByCustomer VALUES (1124, 42101, 'Good');
INSERT INTO Salesperson_SignedByCustomer VALUES (1125, 42101, 'Average');



INSERT INTO Salesperson_Delivers_Device VALUES (1121,31,'R12-B');
INSERT INTO Salesperson_Delivers_Device VALUES (1121,32,'R11-G');
INSERT INTO Salesperson_Delivers_Device VALUES (1122,31,'R14-K');
INSERT INTO Salesperson_Delivers_Device VALUES (1122,34,'R12-L');
INSERT INTO Salesperson_Delivers_Device VALUES (1122,35,'R16-O');
INSERT INTO Salesperson_Delivers_Device VALUES (1123,31,'R111-U');
INSERT INTO Salesperson_Delivers_Device VALUES (1123,33,'R121-I');
INSERT INTO Salesperson_Delivers_Device VALUES (1124,34,'R124-A');
INSERT INTO Salesperson_Delivers_Device VALUES (1125,35,'R126-P');
INSERT INTO Salesperson_Delivers_Device VALUES (1125,32,'R127-L');


INSERT INTO Salesperson_Setup_Device VALUES(1121, 31, SYSDATE+1, SYSDATE,'120m');
INSERT INTO Salesperson_Setup_Device VALUES(1121, 32, SYSDATE+20, SYSDATE+10,'200m');
INSERT INTO Salesperson_Setup_Device VALUES(1122, 31, SYSDATE+2, SYSDATE+1,'140m');
INSERT INTO Salesperson_Setup_Device VALUES(1122, 34, SYSDATE+10, SYSDATE+7,'90m');
INSERT INTO Salesperson_Setup_Device VALUES(1122, 35, SYSDATE+12, SYSDATE+8,'80m');
INSERT INTO Salesperson_Setup_Device VALUES(1123, 31, SYSDATE+4, SYSDATE+1,'100m');
INSERT INTO Salesperson_Setup_Device VALUES(1123, 33, SYSDATE+30, SYSDATE+13,'180m');
INSERT INTO Salesperson_Setup_Device VALUES(1124, 34, SYSDATE+27, SYSDATE+12,'170m');
INSERT INTO Salesperson_Setup_Device VALUES(1125, 35, SYSDATE+24, SYSDATE+11,'150m');
INSERT INTO Salesperson_Setup_Device VALUES(1125, 32, SYSDATE+30, SYSDATE+16,'100m');


INSERT INTO Application VALUES('10.11.0', 'Lexol', 31, 8, 256, 400);
INSERT INTO Application VALUES('10.11.1', 'Dexol', 32, 9, 356, 600);
INSERT INTO Application VALUES('10.11.2', 'Mexol', 33, 12, 156, 300);
INSERT INTO Application VALUES('10.11.3', 'Kexol', 34, 7, 156, 300);
INSERT INTO Application VALUES('10.11.4', 'Zexol', 35, 4, 256, 400);


INSERT INTO Website VALUES('Lexol', 42101, 5, 256, '20000');
INSERT INTO Website VALUES('Dexol', 42102, 5, 356, '28000');
INSERT INTO Website VALUES('Mexol', 42103, 5, 456, '30000');
INSERT INTO Website VALUES('Kexol', 42104, 5, 656, '60000');
INSERT INTO Website VALUES('Zexol', 42105, 5, 556, '50000');


INSERT INTO AccountDepartment VALUES(81, 1121, 'Ali', 'ABC');
INSERT INTO AccountDepartment VALUES(82, 1122, 'Ahmed', 'ABC');
INSERT INTO AccountDepartment VALUES(83, 1123, 'Sara', 'ABC');
INSERT INTO AccountDepartment VALUES(84, 1124, 'Sana', 'ABC');
INSERT INTO AccountDepartment VALUES(85, 1125, 'Junaid', 'ABC');



INSERT INTO PostpaidPackage VALUES(441, 'Lexol', 512, 1000, 512, 150);
INSERT INTO PostpaidPackage VALUES(442, 'Dexol', 1024, 1000, 1024, 250);
INSERT INTO PostpaidPackage VALUES(443, 'Mexol', 1536, 1000, 1024, 350);
INSERT INTO PostpaidPackage VALUES(444, 'Kexol', 2048, 1000, 2048, 650);
INSERT INTO PostpaidPackage VALUES(445, 'Zexol', 512, 1536, 1024, 750);


INSERT INTO PostpaidPackage1 VALUES(441, 'Netsurfer', 900);
INSERT INTO PostpaidPackage1 VALUES(442, 'Discovery', 1550);
INSERT INTO PostpaidPackage1 VALUES(443, 'Unlimited-One', 1650);
INSERT INTO PostpaidPackage1 VALUES(444, 'Unlimited-Two', 2000);
INSERT INTO PostpaidPackage1 VALUES(445, 'Student-Plus', 1000);


INSERT INTO PostpaidPackage2 VALUES(441, '15GB', 1500);
INSERT INTO PostpaidPackage2 VALUES(442, '30GB', 2000);
INSERT INTO PostpaidPackage2 VALUES(443, 'Unlimited', 2500);
INSERT INTO PostpaidPackage2 VALUES(444, '35GB', 3000);
INSERT INTO PostpaidPackage2 VALUES(445, '25GB', 1500);



INSERT INTO PrepaidPackages VALUES(551, 'Lexol', 42101, 512, 1000);
INSERT INTO PrepaidPackages VALUES(552, 'Dexol', 42102, 512, 1000);
INSERT INTO PrepaidPackages VALUES(553, 'Mexol', 42103, 1024, 1000);
INSERT INTO PrepaidPackages VALUES(554, 'Kexol', 42104, 1024, 1000);
INSERT INTO PrepaidPackages VALUES(555, 'Zexol', 42105, 2048, 1000);


INSERT INTO PrepaidPackages1 VALUES(551, 'Desktop', 2000);
INSERT INTO PrepaidPackages1 VALUES(552, 'Pocket', 2500);
INSERT INTO PrepaidPackages1 VALUES(553, 'Wifi', 3000);
INSERT INTO PrepaidPackages1 VALUES(554, 'Desktop', 2000);
INSERT INTO PrepaidPackages1 VALUES(555, 'Pocket', 2500);


INSERT INTO PrepaidPackages2 VALUES(551, '15GB', 100);
INSERT INTO PrepaidPackages2 VALUES(552, '10GB', 100);
INSERT INTO PrepaidPackages2 VALUES(553, '25GB', 100);
INSERT INTO PrepaidPackages2 VALUES(554, '20GB', 100);
INSERT INTO PrepaidPackages2 VALUES(555, '35GB', 100);


INSERT INTO PrepaidPackages3 VALUES(551, 5, 100, 7);
INSERT INTO PrepaidPackages3 VALUES(552, 15, 250, 15);
INSERT INTO PrepaidPackages3 VALUES(553, 32, 500, 30);
INSERT INTO PrepaidPackages3 VALUES(554, 65, 1000, 35);
INSERT INTO PrepaidPackages3 VALUES(555, 5, 100, 7);

