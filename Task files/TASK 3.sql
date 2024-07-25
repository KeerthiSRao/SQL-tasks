CREATE DATABASE TASK1;
CREATE TABLE state_info(id int,state_name varchar (20), state_capital varchar (20), state_language varchar (20), state_tree varchar (20)); 

ALTER TABLE state_info ADD COLUMN (state_animal varchar (20), state_pincode int, state_rain boolean,state_population bigint, state_area bigint);

ALTER TABLE state_info RENAME COLUMN state_capital to capital;
ALTER TABLE state_info RENAME COLUMN state_tree to tree;
ALTER TABLE state_info RENAME COLUMN state_animal to animal;
ALTER TABLE state_info RENAME COLUMN capital  to state_capital;
ALTER TABLE state_info RENAME COLUMN tree to state_tree;

alter table state_info modify column state_area int;
alter table state_info modify column state_population int;
alter table state_info modify column state_pincode bigint;
alter table state_info modify column state_population int;
alter table state_info modify column state_area bigint;


INSERT INTO state_info VALUES(1, 'KARNATAKA', 'BANGLORE', 'KANNADA', 'BANYAN', 'ELEPHANT', 577412, true, 250000000, 750000000);
INSERT INTO state_info VALUES(2, 'TAMIL NADU', 'CHENNAI', 'TAMIL', 'PALM', 'NILGIRI TAHR ', 548589, true, 300000000, 1250000000);
INSERT INTO state_info VALUES(3, 'ANDRA PRADESH', 'AMARAVATI', 'TELUGU', 'NEEM', 'BLACKBUCK ', 245875, true, 200000000, 600000000);
INSERT INTO state_info VALUES(4, 'ASSAM', 'DISPUR', 'ASSAMESE', 'HOLLLONG', 'RHINOCEROS', 562589, true, 250000000, 1200000000);
INSERT INTO state_info VALUES(5, 'BIHAR', 'PATNA ', 'HINDI', 'PEEPAL', 'OX', 600004, true, 200000000, 650000000);
INSERT INTO state_info VALUES(6, 'CHATTISGARH', 'RAIPUR', 'HINDI', 'SAL', 'WILD BUFFALO', 256874, true, 250000000, 750000000);
INSERT INTO state_info VALUES(7, 'GOA', 'PANAJI', 'KONKANI', 'MATTI', 'GAUR', 857496, true, 250000000, 750000000);
INSERT INTO state_info VALUES(8, 'GUJRAT', 'GANDHINAGAR ', 'GUJRATHI', 'MANGO', 'ASIATIC LION', 857456, true, 250000000, 750000000);
INSERT INTO state_info VALUES(9, 'HARYANA', 'CHANDIGARH', 'HINDI', 'PEEPAL', 'ANTELOPE', 758965, true, 250000000, 750000000);
INSERT INTO state_info VALUES(10, 'JHARKHAND', 'RANCHI', 'HINDI', 'SAL', 'ELEPHANT', 847596, true, 250000000, 750000000);
INSERT INTO state_info VALUES(11, 'KERALA', 'THIRUVANANTAPURAM', 'MALYALAM', 'COCONUT', 'ELEPHANT', 528745, true, 250000000, 750000000);
INSERT INTO state_info VALUES(12, 'MADHYA PRADESH', 'BHOPAL', 'HINDI', 'BANYAM', 'SWAMP DEER ', 785496, true, 300000000, 1250000000);
INSERT INTO state_info VALUES(13, 'MAHARASHTRA', 'MUMBAI', 'HINDI', 'MANGO', 'GIANT SQUIRREL ', 857456, true, 200000000, 600000000);
INSERT INTO state_info VALUES(14, 'MANIPUR', 'IMPHAL', 'MEITEI', 'UNIGTHOU', 'SANGAI', 845796, true, 250000000, 1200000000);
INSERT INTO state_info VALUES(15, 'MEGHALAYA', 'SHILLONG ', 'KHASI', 'WHITE TEAK', 'CLOUDED LEOPARD', 954785, true, 200000000, 650000000);
INSERT INTO state_info VALUES(16, 'MIZORAM', 'AIZWAL', 'LUSHAI', 'NAHAR', 'SEROW', 854213, true, 250000000, 750000000);
INSERT INTO state_info VALUES(17, 'NAGALAND', 'KOHIMA', 'AO', 'ALDER', 'MITHUN', 965847, true, 250000000, 750000000);
INSERT INTO state_info VALUES(18, 'ODISHA', 'BHUBANESHWAR ', 'ODIA', 'ASHWATTA', 'SAMBAR', 548621, true, 250000000, 750000000);
INSERT INTO state_info VALUES(19, 'PUNJAB', 'CHANDIGARH', 'PUNJABI', 'SHEESHAM', 'BLACK BUCK', 658235, true, 250000000, 750000000);
INSERT INTO state_info VALUES(20, 'RAJASTHAN', 'JAIPUR', 'HINDI', 'KHEJRI', 'CAMEL', 547832, true, 250000000, 750000000);



select * FROM state_info;
UPDATE state_info SET state_name ='ODISSHHA' WHERE id=18;
UPDATE state_info SET state_capital ='AZIAWL' WHERE id=16;
UPDATE state_info SET state_language ='ENGLISH' WHERE id=17;
UPDATE state_info SET state_tree ='UNIGTHOUR' WHERE id=14;
UPDATE state_info SET animal ='buffalo' WHERE id=6;
UPDATE state_info SET state_pincode =562148 WHERE id=10;
UPDATE state_info SET state_rain =FALSE WHERE id=1;
UPDATE state_info SET state_population =500000000 WHERE id=2;
UPDATE state_info SET state_area =700000000 WHERE id=3;
UPDATE state_info SET animal ='ELEPHANT' WHERE id=4;

delete from state_info where id=1;
delete from state_info where id=3;
delete from state_info where id=5;

/*FETCH*/
UPDATE state_info SET animal='none' WHERE id in (8,9);
rollback;
select * from state_info where id in (6,7,8);
select * from state_info where id not in (8,9,10);
select * from state_info where id =4 and animal='NONE';
select * from state_info where id=2 or state_rain=TRUE;










CREATE TABLE scam_info(id int,scam_name varchar(20),scam_contact int,scam_scamName varchar(20),scam_type varchar(20)); 

ALTER TABLE scam_info ADD COLUMN (scam_date bigint,scam_time bigint,scam_location varchar(20),scam_state int,scam_mail varchar(20));

ALTER TABLE scam_info RENAME COLUMN scam_location to location;
ALTER TABLE scam_info RENAME COLUMN scam_state to state;
ALTER TABLE scam_info RENAME COLUMN scam_mail to mail;
ALTER TABLE scam_info RENAME COLUMN state  to scam_state;
ALTER TABLE scam_info RENAME COLUMN location to scam_location;

ALTER TABLE scam_info MODIFY COLUMN scam_state bigint;
ALTER TABLE scam_info MODIFY COLUMN scam_time int;
ALTER TABLE scam_info MODIFY COLUMN scam_contact bigint;
ALTER TABLE scam_info MODIFY COLUMN scam_time varchar(20);
ALTER TABLE scam_info MODIFY COLUMN scam_state varchar(20);


INSERT INTO scam_info VALUES(1,'KEERTHI',9482868712,'MUKHESH','CALL',2,'2 PM','SHIMOGA','KARNATAKA','keerthi.com');
INSERT INTO scam_info VALUES(2,'KAVYA',6363951869,'SIDDIQI','FACEBOOK',3,'3 AM','MANGLORE','KARNATAKA','kavya@gmail.com');
INSERT INTO scam_info VALUES(3,'KALAVATHI',9380067464,'RAMESH','INSTAGRAM',10,'19 PM','AGUMBE','KARNATAKA','kalavathi@gmail.com');
INSERT INTO scam_info VALUES(4,'SRINIVAS',9880809156,'GHAYAL','RUMMY',1,'1 PM','KOLAR','KARNATAKA','srinivas@gmail.com');
INSERT INTO scam_info VALUES(5,'UDAY',9741700497,'NIKITH','RUMMY',7,'7 AM','KOLLUR','KARNATAKA','uday@gmail.com');
INSERT INTO scam_info VALUES(6,'SHEELA',7022313369,'PRIYA','RUMMY',9,'9 AM','DAVANAGERE','KANATAKA','sheela@gmail.com');
INSERT INTO scam_info VALUES(7,'VARUN',8105790497,'KHAN','GOOGLE',10,'10 PM','MYSORE','KARNATAKA','varun@gmail.com');
INSERT INTO scam_info VALUES(8,'NAMRATHA',7485325660,'RAMYA','WHATSAPP',3,'3 AM','GUNTUR','ANDRA PRADESH','namratha@gmail.com');
INSERT INTO scam_info VALUES(9,'MANSI',9462023035,'KIARA','FACEBOOK',6,'6 PM','PUNE','MAHARASHTRA','mani@gmail.com');
INSERT INTO scam_info VALUES(10,'CHINMAYI',9463023035,'ANANYA','CALL',12,'12 AM','MUMBAI','MAHARASHTRA','chinmayi@gmail.com');
INSERT INTO scam_info VALUES(11,'RAGHU',9460023035,'JAHNAVI','CALL',2,'2 PM','KOHLAPUR','MAHARASHTRA','raghu@gmail.com');
INSERT INTO scam_info VALUES(12,'SHAMITHA',9160023035,'AFSANA','BANKFRAUD',3,'3 AM','BADAMI','KARNATAKA','shamitha@gmail.com');
INSERT INTO scam_info VALUES(13,'LAVANYA',9260023035,'SURESH','FACEBOOK',10,'19 PM','UDUPI','KARNATAKA','lavanya@gmail.com');
INSERT INTO scam_info VALUES(14,'SUSHMA',9360023035,'UMESH','INSTAGRAM',1,'1 PM','JAMKHANDI','KARNATAKA','sushma@gmail.com');
INSERT INTO scam_info VALUES(15,'RISHI',9560023035,'PRABHAKAR','EMAIL',7,'7 AM','TIRUPATHI','ANDRA PRADESH','rishi@gmail.com');
INSERT INTO scam_info VALUES(16,'RUTHIKA',9470023035,'SWEETIE','TWITTER',9,'9 AM','DAVANAGERE','KARNATAKA','ruthika@gmail.com');
INSERT INTO scam_info VALUES(17,'CHETAN',9480023035,'MUSTAFA','GOOGLE',10,'10 PM','SAGAR','MAHARASHTRA','chetan@gmail.com');
INSERT INTO scam_info VALUES(18,'SUMANTH',9461023035,'ALI','RUMMY',3,'3 AM','TALGUPPA','KARNATAKA','sumanth@gmail.com');
INSERT INTO scam_info VALUES(19,'CHAITRA',9462023035,'SULEMAN','RUMMY',6,'6 PM','CHIKMAGLUR','KARNATAKA','chaitra@gmail.com');
INSERT INTO scam_info VALUES(20,'JANHAVI',9463023035,'RAKSHITHA','GOOGLE',12,'12 AM','CHANDIGARH','PUNJAB','janhavi@gmail.com');




select * FROM scam_info;
UPDATE scam_info SET scam_name ='STEVE' WHERE id=18;
UPDATE scam_info SET scam_contact =8541526398 WHERE id=16;
UPDATE scam_info SET scam_scamName ='GIREESH' WHERE id=17;
UPDATE scam_info SET scam_type ='FACEBOOK' WHERE id=14;
UPDATE scam_info SET scam_date =6 WHERE id=6;
UPDATE scam_info SET scam_time ='8 AM' WHERE id=10;
UPDATE scam_info SET scam_location ='RAIPUR' WHERE id=1;
UPDATE scam_info SET scam_state ='JHARKHAND' WHERE id=2;
UPDATE scam_info SET mail ='kala@gmail.com' WHERE id=3;
UPDATE scam_info SET scam_name ='SEENA' WHERE id=4;

delete from scam_info where id=1;
delete from scam_info where id=3;
delete from scam_info where id=5;

/*FETCH*/
UPDATE scam_info SET mail='none' WHERE id in (8,9);
rollback;
select * from scam_info where id in (6,7,8);
select * from scam_info where id not in (8,9,10);
select * from scam_info where id =4 and mail='NONE';
select * from scam_info where id=2 or scam_name='KAVYASHREE';




























