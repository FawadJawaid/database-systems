-- Data File for Problem # 3 (Second-hand-Books.com.pk)


INSERT INTO PrivateCourier VALUES(11, 'Junaid', 50);
INSERT INTO PrivateCourier VALUES(12, 'Ali', 70);
INSERT INTO PrivateCourier VALUES(13, 'Ahmed', 100);
INSERT INTO PrivateCourier VALUES(14, 'Rashid', 30);
INSERT INTO PrivateCourier VALUES(15, 'Yasir', 60);


INSERT INTO Users VALUES('K112111@nu.edu.pk', 11, 'Ali', 'R12-A');
INSERT INTO Users VALUES('K112112@nu.edu.pk', 12, 'Ahmed', 'R199-A');
INSERT INTO Users VALUES('K112113@nu.edu.pk', 13, 'Arij', 'R16-A');
INSERT INTO Users VALUES('K112114@nu.edu.pk', 14, 'Amer', 'R120-A');
INSERT INTO Users VALUES('K112115@nu.edu.pk', 15, 'Bilal', 'R142-A');


INSERT INTO Users1 VALUES('K112111@nu.edu.pk', 'Seller', 120.5);
INSERT INTO Users1 VALUES('K112112@nu.edu.pk', 'Seller', 121.5);
INSERT INTO Users1 VALUES('K112113@nu.edu.pk', 'Buyer', NULL);
INSERT INTO Users1 VALUES('K112114@nu.edu.pk', 'Buyer', NULL);
INSERT INTO Users1 VALUES('K112115@nu.edu.pk', 'Seller', 100.5);


INSERT INTO User_Pays_to_PrivateCourier VALUES('K112111@nu.edu.pk', 11, 'Cash');
INSERT INTO User_Pays_to_PrivateCourier VALUES('K112112@nu.edu.pk', 12, 'Cash');
INSERT INTO User_Pays_to_PrivateCourier VALUES('K112113@nu.edu.pk', 13, 'Cheque');
INSERT INTO User_Pays_to_PrivateCourier VALUES('K112114@nu.edu.pk', 14, 'Cash');
INSERT INTO User_Pays_to_PrivateCourier VALUES('K112115@nu.edu.pk', 15, 'Cheque');
INSERT INTO User_Pays_to_PrivateCourier VALUES('K112111@nu.edu.pk', 11, 'Cash');
INSERT INTO User_Pays_to_PrivateCourier VALUES('K112112@nu.edu.pk', 12, 'Cash');
INSERT INTO User_Pays_to_PrivateCourier VALUES('K112113@nu.edu.pk', 13, 'Cheque');
INSERT INTO User_Pays_to_PrivateCourier VALUES('K112114@nu.edu.pk', 14, 'Cash');
INSERT INTO User_Pays_to_PrivateCourier VALUES('K112115@nu.edu.pk', 15, 'Cheque');


INSERT INTO Registration_Process VALUES(01, 'K112111@nu.edu.pk');
INSERT INTO Registration_Process VALUES(02, 'K112112@nu.edu.pk');
INSERT INTO Registration_Process VALUES(03, 'K112113@nu.edu.pk');
INSERT INTO Registration_Process VALUES(04, 'K112114@nu.edu.pk');
INSERT INTO Registration_Process VALUES(05, 'K112115@nu.edu.pk');


INSERT INTO Ranking_System VALUES('ABC', 1, 'No', 'K112111@nu.edu.pk');
INSERT INTO Ranking_System VALUES('XYZ', 6, 'Yes', 'K112112@nu.edu.pk');
INSERT INTO Ranking_System VALUES('ABC', 1, 'No', 'K112113@nu.edu.pk');


INSERT INTO Book VALUES('Database systems', 'Gaba', 5.0, 'K112111@nu.edu.pk', 200, 'Spiral', 850, 'Good', 'abc.jpg');
INSERT INTO Book VALUES('Oracle', 'ABC', 3.0, 'K112112@nu.edu.pk', 150, 'Spiral', 850, 'Good', 'xyz.jpg');
INSERT INTO Book VALUES('Database', 'XYZ', 4.0, 'K112113@nu.edu.pk', 100, 'Hard', 550, 'Good', 'jj.jpg');
INSERT INTO Book VALUES('Systems', 'Gill', 5.0, 'K112114@nu.edu.pk', 200, 'Spiral', 650, 'Average', 'abc1.jpg');
INSERT INTO Book VALUES('Base systems', 'Gaba', 6.0, 'K112115@nu.edu.pk', 300, 'Soft', 750, 'Bad', 'uio.jpg');


INSERT INTO Book1 VALUES('Database systems', 'Shyam');
INSERT INTO Book1 VALUES('Oracle', 'ABC');
INSERT INTO Book1 VALUES('Database', 'XYZ');
INSERT INTO Book1 VALUES('Systems', 'UTV');
INSERT INTO Book1 VALUES('Base systems', 'Juji');


INSERT INTO Book_ShipmentBy_PvtCourier VALUES('Database systems', 11, 'R-12-A');
INSERT INTO Book_ShipmentBy_PvtCourier VALUES('Oracle', 12, 'R-199-A');
INSERT INTO Book_ShipmentBy_PvtCourier VALUES('Database', 13, 'R-16-A');
INSERT INTO Book_ShipmentBy_PvtCourier VALUES('Systems', 14, 'R-120-A');
INSERT INTO Book_ShipmentBy_PvtCourier VALUES('Base systems', 15, 'R-142-A');


INSERT INTO RegularProcess VALUES(21, 'K112111@nu.edu.pk', 'Database systems');
INSERT INTO RegularProcess VALUES(22, 'K112111@nu.edu.pk', 'Database systems');
INSERT INTO RegularProcess VALUES(23, 'K112112@nu.edu.pk', 'Oracle');
INSERT INTO RegularProcess VALUES(24, 'K112115@nu.edu.pk', 'Base systems');
INSERT INTO RegularProcess VALUES(25, 'K112115@nu.edu.pk', 'Base systems');


INSERT INTO BiddingProcess VALUES(31, 'K112112@nu.edu.pk', 'Oracle');
INSERT INTO BiddingProcess VALUES(32, 'K112112@nu.edu.pk', 'Oracle');
INSERT INTO BiddingProcess VALUES(33, 'K112111@nu.edu.pk', 'Database systems');
INSERT INTO BiddingProcess VALUES(34, 'K112115@nu.edu.pk', 'Base systems');
INSERT INTO BiddingProcess VALUES(35, 'K112115@nu.edu.pk', 'Base systems');


INSERT INTO BiddingProcess1 VALUES(31, SYSDATE, 250);
INSERT INTO BiddingProcess1 VALUES(32, SYSDATE, 250);
INSERT INTO BiddingProcess1 VALUES(33, SYSDATE, 250);
INSERT INTO BiddingProcess1 VALUES(34, SYSDATE, 350);
INSERT INTO BiddingProcess1 VALUES(35, SYSDATE, 350);


INSERT INTO WebPageforBidProc VALUES(31, 4.00, 256);
INSERT INTO WebPageforBidProc VALUES(32, 5.00, 256);
INSERT INTO WebPageforBidProc VALUES(33, 6.00, 256);
INSERT INTO WebPageforBidProc VALUES(34, 7.00, 512);
INSERT INTO WebPageforBidProc VALUES(35, 9.00, 512);


INSERT INTO WebPageforRegProc VALUES(21, 5.20, 256);
INSERT INTO WebPageforRegProc VALUES(22, 6.40, 256);
INSERT INTO WebPageforRegProc VALUES(23, 7.20, 512);
INSERT INTO WebPageforRegProc VALUES(24, 8.20, 256);
INSERT INTO WebPageforRegProc VALUES(25, 8.50, 512);


INSERT INTO SellingProcPlacesAdon_WebPage VALUES(21, 30);
INSERT INTO SellingProcPlacesAdon_WebPage VALUES(22, 30);
INSERT INTO SellingProcPlacesAdon_WebPage VALUES(23, 30);
INSERT INTO SellingProcPlacesAdon_WebPage VALUES(24, 30);
INSERT INTO SellingProcPlacesAdon_WebPage VALUES(25, 30);


INSERT INTO SearchingProcess VALUES(41, 'Database systems', 'ABC', 'XYZ', 'ABC');
INSERT INTO SearchingProcess VALUES(42, 'Oracle', 'ABC', 'XYZ', 'ABC');
INSERT INTO SearchingProcess VALUES(43, 'Database', 'ABC', 'XYZ', 'ABC');
INSERT INTO SearchingProcess VALUES(44, 'Systems', 'ABC', 'XYZ', 'ABC');
INSERT INTO SearchingProcess VALUES(45, 'Base systems', 'ABC', 'XYZ', 'ABC');


