create database  COMP6212_A2_JaredR;
go 


use  COMP6212_A2_JaredR


create table Vendor(
v# int,
vFName varchar(25),
VLName varchar(25),
VStreet varchar(30),
VCity varchar(30),
ContactNo int,
CrStatus varchar(10),
CONSTRAINT vendor_pk PRIMARY KEY (v#)
);


create table Buyer(
B# int,
BFName varchar(25),
BLName varchar(25),
BStreet varchar(30),
BCity varchar(30),
ContactNo int,
CONSTRAINT Buyer_pk PRIMARY KEY (B#)
);


create table Category(
C# int,
CName varchar(20),
CONSTRAINT Category_pk PRIMARY KEY (C#)
);


create table suburb(
S# int,
SName varchar(20),
CONSTRAINT Suburb_pk PRIMARY KEY (S#)
);


create table Range(
R# int,
Range varchar(25),
CONSTRAINT Range_pk PRIMARY KEY (R#)
);


create table Property(
P# int,
Prop_Address varchar(30),
S# int,
R# int,
C# int,
B# int,
V# int,
CONSTRAINT Property_pk PRIMARY KEY (P#),
CONSTRAINT Suburb_Property_fk FOREIGN KEY(S#) REFERENCES Suburb(S#) ON DELETE CASCADE,
CONSTRAINT Range_Property_fk FOREIGN KEY(R#) REFERENCES Range(R#) ON DELETE CASCADE,
CONSTRAINT Category_Property_fk FOREIGN KEY(C#) REFERENCES Category(C#) ON DELETE CASCADE, 
CONSTRAINT Buyer_Property_fk FOREIGN KEY(B#) REFERENCES Buyer(B#) ON DELETE CASCADE,
CONSTRAINT Vendor_Property_fk FOREIGN KEY(V#) REFERENCES Vendor(V#) ON DELETE CASCADE
);




create table Offer(
O# int,
B# int,
P# int,
amount_offered varchar(25),
CONSTRAINT Offer_pk PRIMARY KEY (O#),
CONSTRAINT Buyer_Offer_fk FOREIGN KEY (B#) REFERENCES Buyer(B#) ON DELETE CASCADE,
CONSTRAINT Property_Offer_fk FOREIGN KEY (P#) REFERENCES Property(P#)
);


create table Requirement(
Req# int,
B# int,
S# int,
R# int,
C# int,
CONSTRAINT Requirement_pk PRIMARY KEY (Req#),
CONSTRAINT Buyer_Requirement_fk FOREIGN KEY (B#) REFERENCES Buyer(B#) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT Suburb_Requirement_fk FOREIGN KEY (S#) REFERENCES Suburb(S#) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT Range_Requirement_fk FOREIGN KEY (R#) REFERENCES Range(R#) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT Category_Requirement_fk FOREIGN KEY (C#) REFERENCES Category(C#) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Vendor(V#,vFName,VLName,Vstreet,ContactNo,CrStatus) VALUES(1,'Wynter','Tyler','2360 Leo. Road','41285187','good');
INSERT INTO Vendor(V#,vFName,VLName,Vstreet,ContactNo,CrStatus) VALUES(2,'Wynter','Tyler','2360 Leo. Road','41285187','bad');
INSERT INTO Vendor(V#,vFName,VLName,Vstreet,ContactNo,CrStatus) VALUES(3,'Slade','Coleman','3026 Lorem Rd.','18618967','good');
INSERT INTO Vendor(V#,vFName,VLName,Vstreet,ContactNo,CrStatus) VALUES(4,'Jelani','Zimmerman','P.O. Box 409, 1684 Et Rd.','66941676','good');
INSERT INTO Vendor(V#,vFName,VLName,Vstreet,ContactNo,CrStatus) VALUES(5,'Hayes','Woods','Ap #243-6549 Ante. Ave','52094123','good');
INSERT INTO Vendor(V#,vFName,VLName,Vstreet,ContactNo,CrStatus) VALUES(6,'Erica','Munoz','Ap #651-4775 At Road','20290706','good');
INSERT INTO Vendor(V#,vFName,VLName,Vstreet,ContactNo,CrStatus) VALUES(7,'Vivian','Harper','383-5805 Malesuada St.','17416959','bad');
INSERT INTO Vendor(V#,vFName,VLName,Vstreet,ContactNo,CrStatus) VALUES(8,'Ivory','Morrison','503-6927 Massa. Rd.','49780204','good');
INSERT INTO Vendor(V#,vFName,VLName,Vstreet,ContactNo,CrStatus) VALUES(9,'Teagan','Booker','5662 Ut Avenue','70856869','bad');
INSERT INTO Vendor(V#,vFName,VLName,Vstreet,ContactNo,CrStatus) VALUES(10,'Colt','Anderson','375-6215 Vitae, Avenue','67749699', 'bad');

INSERT INTO Buyer (B#,BFName,BLName,BStreet,BCity,ContactNo) VALUES ('1','Martina','Valenzuela','963-2093 Lorem Street','Palakkad','02638012');
INSERT INTO Buyer (B#,BFName,BLName,BStreet,BCity,ContactNo) VALUES (2,'Gray','Maddox','P.O. Box 197, 2351 Eu Rd.','Berwick','67199767');
INSERT INTO Buyer (B#,BFName,BLName,BStreet,BCity,ContactNo) VALUES (3,'Oscar','Castaneda','492 Sodales St.','Perth','76321439');
INSERT INTO Buyer (B#,BFName,BLName,BStreet,BCity,ContactNo) VALUES (4,'Chase','Cortez','231-9995 Ultricies Rd.','Nijkerk','93327817');
INSERT INTO Buyer (B#,BFName,BLName,BStreet,BCity,ContactNo) VALUES (5,'Howard','Bailey','7113 Vel, Rd.','Frankfurt','61274594');
INSERT INTO Buyer (B#,BFName,BLName,BStreet,BCity,ContactNo) VALUES (6,'Mufutau','Curtis','Ap 602 2665 Id, Road','Bihain','13623251');
INSERT INTO Buyer (B#,BFName,BLName,BStreet,BCity,ContactNo) VALUES (7,'Inga','Ryan','Ap 845 4910 Suspendisse Avenue','Petit-Thier','93198642');
INSERT INTO Buyer (B#,BFName,BLName,BStreet,BCity,ContactNo) VALUES (8,'Cooper','Guy','P.O. Box 585, 334 Duis Avenue','High Wycombe','28688255');
INSERT INTO Buyer (B#,BFName,BLName,BStreet,BCity,ContactNo) VALUES (9,'Erich','Franco','9137 Nonummy. Rd.','Saint-Louis','48484290');
INSERT INTO Buyer (B#,BFName,BLName,BStreet,BCity,ContactNo) VALUES (10,'Bree','Mathews','172-9330 Augue Road','Akron','23072707');

INSERT INTO Category (C#,CName) VALUES (1,'first');
INSERT INTO Category (C#,CName) VALUES (2,'first');
INSERT INTO Category (C#,CName) VALUES (3,'second');
INSERT INTO Category (C#,CName) VALUES (4,'second');
INSERT INTO Category (C#,CName) VALUES (5,'six');
INSERT INTO Category (C#,CName) VALUES (6,'six');
INSERT INTO Category (C#,CName) VALUES (7,'five');
INSERT INTO Category (C#,CName) VALUES (8,'third');
INSERT INTO Category (C#,CName) VALUES (9,'thrid');
INSERT INTO Category (C#,CName) VALUES (10,'third');

INSERT INTO Suburb (S#,SName) VALUES (1,'Errol');
INSERT INTO Suburb (S#,SName) VALUES (2,'Errol');
INSERT INTO Suburb (S#,SName) VALUES (3,'Errol');
INSERT INTO Suburb (S#,SName) VALUES (4,'Kersey');
INSERT INTO Suburb (S#,SName) VALUES (5,'Errol');
INSERT INTO Suburb (S#,SName) VALUES (6,'Saulsbury');
INSERT INTO Suburb (S#,SName) VALUES (7,'Kersey');
INSERT INTO Suburb (S#,SName) VALUES (8,'Saulsbury');
INSERT INTO Suburb (S#,SName) VALUES (9,'Kersey');
INSERT INTO Suburb (S#,SName) VALUES (10,'Saulsbury');

INSERT INTO Range (R#,Range) VALUES (1,566139);
INSERT INTO Range (R#,Range) VALUES (2,351094);
INSERT INTO Range (R#,Range) VALUES (3,513715);
INSERT INTO Range (R#,Range) VALUES (4,420396);
INSERT INTO Range (R#,Range) VALUES (5,969919);
INSERT INTO Range (R#,Range) VALUES (6,987062);
INSERT INTO Range (R#,Range) VALUES (7,479645);
INSERT INTO Range (R#,Range) VALUES (8,626243);
INSERT INTO Range (R#,Range) VALUES (9,664402);
INSERT INTO Range (R#,Range) VALUES (10,921270);

INSERT INTO Offer (O#,Amount_offered,B#,P#) VALUES (1,806021,1,1);
INSERT INTO Offer (O#,Amount_offered,B#,P#) VALUES (2,723656,2,2);
INSERT INTO Offer (O#,Amount_offered,B#,P#) VALUES (3,139455,3,3);
INSERT INTO Offer (O#,Amount_offered,B#,P#) VALUES (4,831217,4,4);
INSERT INTO Offer (O#,Amount_offered,B#,P#) VALUES (5,525279,5,5);
INSERT INTO Offer (O#,Amount_offered,B#,P#) VALUES (6,366274,6,6);
INSERT INTO Offer (O#,Amount_offered,B#,P#) VALUES (7,734763,7,7);
INSERT INTO Offer (O#,Amount_offered,B#,P#) VALUES (8,711568,8,8);
INSERT INTO Offer (O#,Amount_offered,B#,P#) VALUES (9,550269,9,9);
INSERT INTO Offer (O#,Amount_offered,B#,P#) VALUES (10,960721,10,10);

INSERT INTO Property (P#,Prop_Address,S#,R#,C#,B#,V#) VALUES (1,'5904 Quis, Road',1,1,1,1,1);
INSERT INTO Property (P#,Prop_Address,S#,R#,C#,B#,V#) VALUES (2,'4898 Ipsum Av.',2,2,2,2,2);
INSERT INTO Property (P#,Prop_Address,S#,R#,C#,B#,V#) VALUES (3,'P.O. Box 522, 3464 Fringilla Avenue',3,3,3,3,3);
INSERT INTO Property (P#,Prop_Address,S#,R#,C#,B#,V#) VALUES (4,'1303 Dignissim. Ave',4,4,4,4,4);
INSERT INTO Property (P#,Prop_Address,S#,R#,C#,B#,V#) VALUES (5,'Ap #428-2212 Luctus Street',5,5,5,5,5);
INSERT INTO Property (P#,Prop_Address,S#,R#,C#,B#,V#) VALUES (6,'Ap #190-341 Elit Road',6,6,6,6,6);
INSERT INTO Property (P#,Prop_Address,S#,R#,C#,B#,V#) VALUES (7,'515-5991 Sollicitudin St.',7,7,7,7,7);
INSERT INTO Property (P#,Prop_Address,S#,R#,C#,B#,V#) VALUES (8,'Ap #495-6351 Et, Av.',8,8,8,8,8);
INSERT INTO Property (P#,Prop_Address,S#,R#,C#,B#,V#) VALUES (9,'P.O. Box 171, 6701 Elementum Ave',9,9,9,9,9);
INSERT INTO Property (P#,Prop_Address,S#,R#,C#,B#,V#) VALUES (10,'P.O. Box 260, 5929 Gravida Rd.',10,10,10,10,10);
			
INSERT INTO Requirement (Req#,B#,S#,R#,C#) VALUES (1,1,1,1,1);
INSERT INTO Requirement (Req#,B#,S#,R#,C#) VALUES (2,2,2,2,2);
INSERT INTO Requirement (Req#,B#,S#,R#,C#) VALUES (3,3,3,3,3);
INSERT INTO Requirement (Req#,B#,S#,R#,C#) VALUES (4,4,4,4,4);
INSERT INTO Requirement (Req#,B#,S#,R#,C#) VALUES (5,5,5,5,5);
INSERT INTO Requirement (Req#,B#,S#,R#,C#) VALUES (6,6,6,6,6);
INSERT INTO Requirement (Req#,B#,S#,R#,C#) VALUES (7,7,7,7,7);
INSERT INTO Requirement (Req#,B#,S#,R#,C#) VALUES (8,8,8,8,8);
INSERT INTO Requirement (Req#,B#,S#,R#,C#) VALUES (9,9,9,9,9);
INSERT INTO Requirement (Req#,B#,S#,R#,C#) VALUES (10,10,10,10,10);

Use COMP6212_A2_JaredR
CREATE INDEX   Index_Offer_Buyer
ON offer (O#,B#);

Use COMP6212_A2_JaredR
CREATE INDEX   Index_Property_Suburb
ON Property (P#,S#);