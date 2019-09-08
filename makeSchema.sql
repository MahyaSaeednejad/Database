--
--  Create a small demo WhoDoesThat database
--

set termout on
set feedback on
prompt Building sample WhoDoesThat database.  Please wait ...
set termout off
set feedback off

drop table Account 		cascade constraint;
drop table Category   	cascade constraint;
drop table SocialMedia  cascade constraint;
drop table Users    	cascade constraint;
drop table Business     cascade constraint;
drop table Admins       cascade constraint;
drop table Features     cascade constraint;
drop table Jobs    		cascade constraint;
drop table Transactions cascade constraint;
drop table Review   	cascade constraint;
drop table Messages     cascade constraint;
drop table Favourite    cascade constraint;
drop table Profile_view cascade constraint;
drop table Membership_Payment   cascade constraint;

create table Account (
	Account_ID   	  int NOT NULL,
	Account_type	  VARCHAR(15),
    Address   		  VARCHAR(30),
	City	  		  VARCHAR(20),
	states     		  VARCHAR(20),
	Zip_Code  		  int,
	PhoneNumber   	  NUMBER(15) CONSTRAINT valid_PhoneNumber CHECK (REGEXP_LIKE  (PhoneNumber, '^[[:digit:]]+$')),
	Email   		  VARCHAR(30) CONSTRAINT valid_Email CHECK (REGEXP_LIKE  (Email, '^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$')),
	Password   	  	  VARCHAR(20),
	CreditCardNo   	  VARCHAR(30),
	Payment_Address   VARCHAR(30),
	ExpDate			  VARCHAR(20),
	CreditSecurityCode VARCHAR(5),
	Status				VARCHAR(20 char),
	PRIMARY KEY (Account_ID)
);

insert into Account (Account_ID, Account_type, Address, City, states, Zip_Code, PhoneNumber, Email, Password, CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status) 
values (1,'User','2414 South LBJ','San Marcos','TX',78666,5125552323,'JaneDoe@gmail.com','12rt345','78994561232165498','2414 South LBJ','03/23','156','True');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (2,'User','1414 Oliver','Canyon Lake','TX',78133,8308583650,'JohnSmith@gmail.com','hi98762','4561258965470236','1414 Oliver','05/22','789','True');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (3,'User','5520 FM 518','Pearland','TX',77581,2815555656,'AmyRounder@gmail.com','salam123','2589654115963574','5520 FM 518','08/20','159','False');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (4,'User','2222 N Broadway','Pearland','TX',77581,8326655656,'DannyWoods@gmail.com','fym7652','1425365285697854','2222 N Broadway','06/24','471','False');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (5,'User','1236 Post Road', 'San Marcos','TX',77666,7862346754,'GernotHeiser@gmail.com','lkj876','5678345609876666','123 Post Road','11/21','654','True');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (6,'Admin','2414 North LBJ','San Marcos','TX',77156,8745522123,'MahyaSaeednejad@gmail.com','1232ewd','7635723854121001','2414 North LBJ','07/23','446','True');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (7,'Admin','7856 Mill','Canyon Lake','TX',78543,7208588475,'NishantGurung@gmail.com','hi98dsd2','9999888877776666','7856 Mill','10/25','889','False');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (8,'Admin','4598 Holland','Pearland','TX',77991,6515559956,'KayleChilek@gmail.com','ssm123','1111222233334444','4598 Holland','08/19','979','True');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (9,'Admin','2255 Wonder World','Pearland','TX',77574,9826754444,'DanialJohanson@gmail.com','765jbk2','4433226688765129','2255 Wonder World','09/25','171','True');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (10,'Admin','3311 Ranch Road', 'San Marcos','TX',77654,9961246334,'KateSmith@gmail.com','wedg6','6547872345098866','3311 Ranch Road','12/22','554','False');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (11,'Business','1885 S IH 35','San Marcos','TX',78666,5122335523,'LawnCare@gmail.com','5wuybb','1234567891011121','1885 S IH 35','01/23','423','True');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (12,'Business','506 FM 306','Canyon Lake','TX',78133,8308852314,'SolidWaste@gmail.com','omasmde','0987654321098765','506 FM 306','12/22','756','True');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (13,'Business','512 Harkey Ave','Pearland','TX',78133,8328886654,'PearlandAuto@gmail.com','bbbcwi76','5678234509871234','512 Harkey Ave','05/19','435','False');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (14,'Business','805 FM 518','Pearland','TX',77581,8325562323,'HVAC@gmail.com','ncvyw76','00008888855552222','805 FM 518','02/24','842','True');
insert into Account (Account_ID, Account_type, Address, City,states,Zip_Code,PhoneNumber,Email,Password,CreditCardNo,Payment_Address,ExpDate,CreditSecurityCode, Status)
values (15,'Business','298 Student Drive', 'San Marcos','TX',77666,5122452161,'healthcenter@gmail.com','qwbsu56','8293401837263754','298 Student Drive','12/21','234','False');

create table SocialMedia (
	Account_ID   int	NOT NULL,
    SocialMedia  VARCHAR(30),
	PRIMARY KEY (Account_ID,SocialMedia),
	FOREIGN KEY (Account_ID) REFERENCES Account(Account_ID) 
);

insert into SocialMedia (Account_ID, SocialMedia) values (1, 'Instagram.com/jane');
insert into SocialMedia (Account_ID, SocialMedia) values (2, 'facebook.com/Johnsmith6523');
insert into SocialMedia (Account_ID, SocialMedia) values (3, 'Instagram.com/amy');
insert into SocialMedia (Account_ID, SocialMedia) values (4, 'facebook.com/danny5643');
insert into SocialMedia (Account_ID, SocialMedia) values (5, 'facebook.com/Gernot1230');

create table Users (
	User_ID  	  int	NOT NULL,
	First_Name    VARCHAR(15),
	Last_Name     VARCHAR(15),
	Loyalty_Points int,
	Plan    	  VARCHAR(10),
	PRIMARY KEY (User_ID),
	FOREIGN KEY (User_ID) REFERENCES Account(Account_ID) 
);

insert into Users (User_ID, First_Name, Last_Name, Loyalty_Points, Plan) values (1, 'Jane','Doe',10, 'U-MLB');
insert into Users (User_ID, First_Name, Last_Name, Loyalty_Points, Plan) values (2, 'John','Smith',12,'U-MLS');
insert into Users (User_ID, First_Name, Last_Name, Loyalty_Points, Plan) values (3, 'Amy','Rounder',0,'U-MLB');
insert into Users (User_ID, First_Name, Last_Name, Loyalty_Points, Plan) values (4, 'Danny','Woods',2,'U-MLP');
insert into Users (User_ID, First_Name, Last_Name, Loyalty_Points, Plan) values (5, 'Gernot','Heiser',5,'U-MLS');

create table Admins (
	Admin_ID  	  int	NOT NULL,
	First_Name    VARCHAR(20),
	Last_Name     VARCHAR(20),
	PRIMARY KEY (Admin_ID),
	FOREIGN KEY (Admin_ID) REFERENCES Account(Account_ID)
);

insert into Admins (Admin_ID, First_Name, Last_Name) values (6,'Mahya','Saeednejad');
insert into Admins (Admin_ID, First_Name, Last_Name) values (7,'Nishant','Gurung');
insert into Admins (Admin_ID, First_Name, Last_Name) values (8,'Kayle','Chilek');
insert into Admins (Admin_ID, First_Name, Last_Name) values (9,'Danial','Johanson');
insert into Admins (Admin_ID, First_Name, Last_Name) values (10,'Kate','Smith');

create table Membership_Payment  (
	Payment_ID	 	 int	NOT NULL,
	Plan 		 	 VARCHAR(20),
	PaymentAmount    REAl,
	PaymentDate 	 Date,
	PaymentTime      VARCHAR(20),
	Account_ID  	 int,
	PRIMARY KEY (Payment_ID),
	FOREIGN KEY (Account_ID) REFERENCES Account(Account_ID) 
);
insert into Membership_Payment (Payment_ID, Plan, PaymentAmount, PaymentDate, PaymentTime, Account_ID) values (1, 'U-MLB', 0, TO_DATE('2017-01-01','YYYY-MM-DD'),'13:30',1);
insert into Membership_Payment (Payment_ID, Plan, PaymentAmount, PaymentDate, PaymentTime, Account_ID) values (2, 'U-MLS', 4.99, TO_DATE('2017-01-01','YYYY-MM-DD'),'15:30',2);
insert into Membership_Payment (Payment_ID, Plan, PaymentAmount, PaymentDate, PaymentTime, Account_ID) values (3, 'U-MLB', 0, TO_DATE('2018-04-03','YYYY-MM-DD'),'20:20',3);
insert into Membership_Payment (Payment_ID, Plan, PaymentAmount, PaymentDate, PaymentTime, Account_ID) values (4, 'U-MLP', 9.99, TO_DATE('2016-05-02','YYYY-MM-DD'),'18:20',4);
insert into Membership_Payment (Payment_ID, Plan, PaymentAmount, PaymentDate, PaymentTime, Account_ID) values (5, 'U-MLS', 4.99, TO_DATE('2018-10-23','YYYY-MM-DD'),'13:13',5);
insert into Membership_Payment (Payment_ID, Plan, PaymentAmount, PaymentDate, PaymentTime, Account_ID) values (6, 'B-MLB', 99.00, TO_DATE('2018-12-30','YYYY-MM-DD'),'5:45',11);
insert into Membership_Payment (Payment_ID, Plan, PaymentAmount, PaymentDate, PaymentTime, Account_ID) values (7, 'B-MLP', 34.99, TO_DATE('2017-01-25','YYYY-MM-DD'),'2:35',12);
insert into Membership_Payment (Payment_ID, Plan, PaymentAmount, PaymentDate, PaymentTime, Account_ID) values (8, 'B-MLS', 199.99, TO_DATE('2018-02-11','YYYY-MM-DD'),'4:05',13);
insert into Membership_Payment (Payment_ID, Plan, PaymentAmount, PaymentDate, PaymentTime, Account_ID) values (9, 'B-MLB', 9.99, TO_DATE('2018-03-16','YYYY-MM-DD'),'2:35',14);
insert into Membership_Payment (Payment_ID, Plan, PaymentAmount, PaymentDate, PaymentTime, Account_ID) values (10, 'B-MLP', 349.99, TO_DATE('2016-07-09','YYYY-MM-DD'),'1:45',15);

create table Category (
	Category_ID 	int	NOT NULL,
	CategoryName 	VARCHAR(30),
	Speciality_ID 	int,
	Speciality_name	VARCHAR(30),
	PRIMARY KEY (Category_ID),
	FOREIGN KEY (Speciality_ID) REFERENCES Category(Category_ID)
);

insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (1, 'Accounting',1, null);
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (2, 'Automotive',2,'Parts');
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (3, 'Automotive',2,'Transmission');
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (4, 'Automotive',2,'Used Sales');
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (5, 'Automotive',2,'Repair');
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (6, 'Business Schools',3,null);
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (7, 'Business Services',4,null);
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (8, 'Chemicals',5,null);
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (9, 'Construction',6,'Driveway');
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (10, 'Construction',6,'New Construction');
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (11, 'Cooperatives',7,null);
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (12, 'Health',12,null);
insert into Category (Category_ID, CategoryName, Speciality_ID, Speciality_name) values (13, 'Trash',13,null);

create table Business (
	Business_ID    int	NOT NULL,
	Business_Name  VARCHAR(20),
	Owner		   VARCHAR(20),
    Description    VARCHAR(50),
	Hours  		   VARCHAR(20),
    Image    	   VARCHAR(20),
	URL  		   VARCHAR(20),
	Connections	   int,
	Clicks  	   int,
    Plan    	   VARCHAR(10),
	Duration		VARCHAR(10),
	Rate	 	   REAL,
	Category_ID    int,
	PRIMARY KEY (Business_ID),
	FOREIGN KEY (Business_ID) REFERENCES Account(Account_ID),
	FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);

insert into Business (Business_ID, Business_Name, Owner, Description, Hours, Image, URL, Connections, Clicks, Plan, Duration, Rate, Category_ID) 
values (11, 'Billys Lawn Care','Zachary Buck', 'Billys Lawn Care provides lawn maintenance','9am-5pm','E:/logopic.jpg', 'www.billy.com',0,0,'B-MLB','Annually',0,9);
insert into Business (Business_ID, Business_Name, Owner, Description, Hours, Image, URL, Connections, Clicks, Plan, Duration, Rate, Category_ID) 
values (12, 'Hill Country Solid','Amir Zakeri', 'trash pickup services','8am-3pm','F:/pic.jpg', 'www.hill.com',32,20,'B-MLP','Monthly',4.8,13);
insert into Business (Business_ID, Business_Name, Owner, Description, Hours, Image, URL, Connections, Clicks, Plan, Duration, Rate, Category_ID) 
values (13, 'Pearland Auto','Adam Starr', 'automotive repair services','11am-12pm','G:/logo.jpg', 'www.pearland.com',8,7,'B-MLS','Annually',4.3,5);
insert into Business (Business_ID, Business_Name, Owner, Description, Hours, Image, URL, Connections, Clicks, Plan, Duration, Rate, Category_ID) 
values (14, 'Cool Breeze HVAC','Jon Broblec', 'installations, repairs, and maintenance','9am-11pm','H:/pic.jpg', 'www.cool.com',12,10,'B-MLB','Monthly',3,10);
insert into Business (Business_ID, Business_Name, Owner, Description, Hours, Image, URL, Connections, Clicks, Plan, Duration, Rate, Category_ID) 
values (15, 'Dog Care','Phoebe Tonkin', 'Dog Care provides healthservices','8am-8pm','C:/picture.jpg', 'www.hi.com',25,17,'B-MLP','Annually',2,12);

create table Jobs (
	Job_ID 			int	NOT NULL,
	Job_Description VARCHAR(20),
	Employee_Name	VARCHAR(20),
	User_ID			int,
	Business_ID 	int,
	PRIMARY KEY (Job_ID),
	FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
	FOREIGN KEY (Business_ID) REFERENCES Business(Business_ID)
);

insert into Jobs (Job_ID, Job_Description, Employee_Name, User_ID, Business_ID) values (1, 'Reparing washer', 'Jack',1,11);
insert into Jobs (Job_ID, Job_Description, Employee_Name, User_ID, Business_ID) values (2, 'fix cabinet', 'Kevin',2,12);
insert into Jobs (Job_ID, Job_Description, Employee_Name, User_ID, Business_ID) values (3, 'water problem', 'Ashley',3,13);
insert into Jobs (Job_ID, Job_Description, Employee_Name, User_ID, Business_ID) values (4, 'electricity problem', 'David',4,14);
insert into Jobs (Job_ID, Job_Description, Employee_Name, User_ID, Business_ID) values (5, 'maintenance services', 'Jon',5,15);
insert into Jobs (Job_ID, Job_Description, Employee_Name, User_ID, Business_ID) values (6, 'Pick up the trash', 'Maya',3,11);

create table Features (
	Features_ID 	int	NOT NULL,
	UorB			VARCHAR(10),
	Plan			VARCHAR(10),
	Duration		VARCHAR(10),
	Description 	VARCHAR(80),
	price			REAl,
	PRIMARY KEY (Features_ID)
);

insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (1,'user','U-MLB','Monthly', null, 0);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (2,'user','U-MLB','Monthly','Full access to search database', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (3,'user','U-MLS','Monthly', null, 4.99);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (4,'user','U-MLS','Monthly', 'show services with ratings', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (5,'user','U-MLS','Monthly', 'real-time views', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (6,'user','U-MLP','Monthly', null, 9.99);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (7,'user','U-MLP','Monthly', 'Ability to schedule services and appointments', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (8,'user','U-MLP','Monthly', 'Real-time interaction with other users', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (9,'business','B-MLB','Monthly', null, 9.99);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (10,'business','B-MLB','Annually', null, 99.00);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (11,'business','B-MLB','Monthly', 'Business name and contact information available to all users', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (12,'business','B-MLB','Monthly', 'Links to business website and Facebook page made available to all users', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (13,'business','B-MLB','Monthly', 'Access to 5 most recent reviews (with reviewer information)',  null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (14,'business','B-MLS','Monthly', null, 19.99);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (15,'business','B-MLS','Annually', null, 199.99);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (16,'business','B-MLS','Monthly', '25% discount on banner', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (17,'business','B-MLS','Monthly','FREE access to CONNECT limited to 25 connections', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (18,'business','B-MLS','Monthly', 'FREE access to CONNECT-PAY', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (19,'business','B-MLP','Monthly', null, 34.99);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (20,'business','B-MLP','Annually', null, 349.99);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (21,'business','B-MLP','Monthly', 'database of business and users', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (22,'business','B-MLP','Monthly', '25 percent discount', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (23,'business','B-MLP','Monthly', 'free monthly DB dumps', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (24,'business','B-MLP','Monthly', 'free scoial media blasts', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (25,'business','B-MLP','Monthly', 'free access to connect pay', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (26,'business','B-MLP','Monthly', '2 free ads', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (27,'business','B-MLP','Monthly', 'link to businesss social media', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (28,'user','U-MLS','Monthly', 'Constant contact on business', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (29,'user','U-MLS','Monthly', 'phone-numbers of business', null);
insert into Features (Features_ID, UorB, Plan, Duration, Description, price) values (30,'user','U-MLS','Monthly', 'database of business', null);


create table Messages (
	Messages_ID 	int	NOT NULL,
	Description 	VARCHAR(30),
	Dates			Date,
	Time_Stamp		VARCHAR(10),
	User_ID			int,
	Business_ID 	int,
	PRIMARY KEY (Messages_ID),
	FOREIGN KEY (User_ID) REFERENCES Users(User_ID) ,
	FOREIGN KEY (Business_ID) REFERENCES Business(Business_ID) 
);

insert into Messages (Messages_ID, Description, Dates, Time_Stamp, User_ID, Business_ID) values (1, 'hello, please return my money', TO_DATE('2019-12-01','YYYY-MM-DD'),'12:45',1,11);
insert into Messages (Messages_ID, Description, Dates, Time_Stamp, User_ID, Business_ID) values (2, 'when are you available', TO_DATE('2019-10-13','YYYY-MM-DD'),'1:25',2,12);
insert into Messages (Messages_ID, Description, Dates, Time_Stamp, User_ID, Business_ID) values (3, 'bye', TO_DATE('2019-02-25','YYYY-MM-DD'),'3:12',3,13);
insert into Messages (Messages_ID, Description, Dates, Time_Stamp, User_ID, Business_ID) values (4, 'Thanks', TO_DATE('2018-03-14','YYYY-MM-DD'),'15:37',4,14);
insert into Messages (Messages_ID, Description, Dates, Time_Stamp, User_ID, Business_ID) values (5, 'please repair my car', TO_DATE('2017-08-12','YYYY-MM-DD'),'22:34',5,15);


create table Transactions (
	Transaction_ID	 	int	NOT NULL,
	Amount 				REAl,
	Transaction_Date	Date,
	Transaction_Time	VARCHAR(30),
	Job_ID	 			int,
	PRIMARY KEY (Transaction_ID),
	FOREIGN KEY (Job_ID) REFERENCES Jobs(Job_ID) 
);

insert into Transactions (Transaction_ID, Amount, Transaction_Date, Transaction_Time, Job_ID) values (1, 30.75, TO_DATE('2019-03-03','YYYY-MM-DD'),'8:30', 1);
insert into Transactions (Transaction_ID, Amount, Transaction_Date, Transaction_Time, Job_ID) values (2, 50, TO_DATE('2019-01-23','YYYY-MM-DD'),'8:12', 2);
insert into Transactions (Transaction_ID, Amount, Transaction_Date, Transaction_Time, Job_ID) values (3, 20.15, TO_DATE('2018-09-12','YYYY-MM-DD'),'6:15', 3);
insert into Transactions (Transaction_ID, Amount, Transaction_Date, Transaction_Time, Job_ID) values (4, 20, TO_DATE('2018-05-11','YYYY-MM-DD'),'12:12',4);
insert into Transactions (Transaction_ID, Amount, Transaction_Date, Transaction_Time, Job_ID) values (5, 10.50, TO_DATE('2019-03-07','YYYY-MM-DD'),'21:32',5);

create table Review (
	Review_ID 		int	NOT NULL,
	Rating 			REAl,
	Description		VARCHAR(20),
	Job_ID	 		int,
	Review_Date		Date,
	PRIMARY KEY (Review_ID),
	FOREIGN KEY (Job_ID) REFERENCES Jobs(Job_ID) 
);

insert into Review (Review_ID, Rating, Description, Job_ID, Review_Date) values (1, 2.8, 'weak', 1, TO_DATE('2018-10-13','YYYY-MM-DD'));
insert into Review (Review_ID, Rating, Description, Job_ID, Review_Date) values (2, 4.5, 'good', 2, TO_DATE('2019-02-14','YYYY-MM-DD'));
insert into Review (Review_ID, Rating, Description, Job_ID, Review_Date) values (3, 5, 'perfect', 3, TO_DATE('2018-09-17','YYYY-MM-DD'));
insert into Review (Review_ID, Rating, Description, Job_ID, Review_Date) values (4, 5, 'excellent', 4, TO_DATE('2019-03-23','YYYY-MM-DD'));
insert into Review (Review_ID, Rating, Description, Job_ID, Review_Date) values (5, 3.2, 'not bad', 5, TO_DATE('2019-04-05','YYYY-MM-DD'));
insert into Review (Review_ID, Rating, Description, Job_ID, Review_Date) values (6, 3, 'good for me', 6, TO_DATE('2018-10-15','YYYY-MM-DD'));

create table Favourite (
	User_ID 		int	NOT NULL,
	Business_ID 	int	NOT NULL,
	PRIMARY KEY (User_ID,Business_ID),
	FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
	FOREIGN KEY (Business_ID) REFERENCES Business(Business_ID) 	
);

insert into Favourite (User_ID, Business_ID) values (1,11);
insert into Favourite (User_ID, Business_ID) values (1,12);
insert into Favourite (User_ID, Business_ID) values (1,13);
insert into Favourite (User_ID, Business_ID) values (2,14);
insert into Favourite (User_ID, Business_ID) values (3,15);
insert into Favourite (User_ID, Business_ID) values (4,11);
insert into Favourite (User_ID, Business_ID) values (4,13);
insert into Favourite (User_ID, Business_ID) values (5,12);
insert into Favourite (User_ID, Business_ID) values (5,14);

create table Profile_view (
	User_ID 		int	NOT NULL,
	Business_ID 	int	NOT NULL,
	times			int,
	PRIMARY KEY (User_ID,Business_ID),
	FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
	FOREIGN KEY (Business_ID) REFERENCES Business(Business_ID) 	
);

insert into Profile_view (User_ID, Business_ID, times) values (1,11,3);
insert into Profile_view (User_ID, Business_ID, times) values (1,15,3);
insert into Profile_view (User_ID, Business_ID, times) values (2,12,4);
insert into Profile_view (User_ID, Business_ID, times) values (2,11,1);
insert into Profile_view (User_ID, Business_ID, times) values (2,14,5);
insert into Profile_view (User_ID, Business_ID, times) values (3,13,5);
insert into Profile_view (User_ID, Business_ID, times) values (3,14,1);
insert into Profile_view (User_ID, Business_ID, times) values (4,15,2);
insert into Profile_view (User_ID, Business_ID, times) values (4,12,2);
insert into Profile_view (User_ID, Business_ID, times) values (5,13,10);


