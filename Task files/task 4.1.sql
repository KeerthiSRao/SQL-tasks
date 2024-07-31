CREATE DATABASE BANGALORE;
USE BANGALORE;
CREATE TABLE show_room(id int, show_room_name varchar(20), show_room_type varchar(20),show_room_loc varchar(20) unique,show_room_company varchar(20),company_country varchar(20),vehicle_price bigint not null, vehicle_color varchar(20), show_room_employees int,vehicle_insurance boolean);
INSERT INTO show_room VALUES(1, 'ABHAYA MOTORS', 'CAR', 'RR NAGAR', 'TOYOTA', 'JAPAN', 250000, 'BLUE', 5, TRUE);
INSERT INTO show_room VALUES(2, 'KALPANA MOTORS', 'BIKE', 'JP NAGAR', 'HONDA', 'JAPAN', 100000, 'BLACK', 15, TRUE);
INSERT INTO show_room VALUES(3, 'KEERTHI MOTORS', 'CAR', 'RAJAJI NAGAR', 'SUZUKI', 'JAPAN', 300000, 'RED', 25, TRUE);
INSERT INTO show_room VALUES(4, 'KAVYA MOTORS', 'CAR', 'MG ROAD', 'VOLKSWAGEN', 'GERMANY', 750000, 'GREY', 150, TRUE);
INSERT INTO show_room VALUES(5, 'SRINIVAS MOTORS', 'BIKE', 'DAVANAGERE', 'ADLER', 'GERMANY', 850000, 'BLUE', 5, TRUE);
INSERT INTO show_room VALUES(6, 'KALAVATHI MOTORS', 'CAR', 'SHIMOGA', 'BAJAJ', 'INDIA', 100000, 'BLACK', 20, TRUE);
INSERT INTO show_room VALUES(7, 'UDAY MOTORS', 'CAR', 'SAGAR', 'AUDI', 'GERMANY', 280000, 'BLUE', 30, TRUE);
INSERT INTO show_room VALUES(8, 'SHEELA MOTORS', 'BIKE', 'BHADRAVATHI', 'ALAN', 'ITALY', 100000, 'ORANGE', 125, TRUE);
INSERT INTO show_room VALUES(9, 'RAGHU MOTORS', 'CAR', 'HONNALI', 'APRILIA', 'ITALY', 1000000, 'GREY', 200, TRUE);
INSERT INTO show_room VALUES(10, 'VARUN MOTORS', 'CAR', 'HARIHARA', 'ASPARK', 'JAPAN', 980000, 'RED', 250, TRUE);
INSERT INTO show_room VALUES(11, 'NAMRATHA MOTORS', 'BIKE', 'MALEBENNUR', 'ARIEL', 'ENGLAND', 560000, 'BLACK', 330, TRUE);
INSERT INTO show_room VALUES(12, 'PAVAN MOTORS', 'CAR', 'HUBLI', 'ASHOK LEYLAND', 'INDIA', 300000, 'BLUE',225, TRUE);
INSERT INTO show_room VALUES(13, 'DARSHAN MOTORS', 'BIKE', 'DHARWAD', 'BH', 'SPAIN', 1000000, 'PURPLE', 280, TRUE);
INSERT INTO show_room VALUES(14, 'LAKSHMI MOTORS', 'BIKE', 'MADIKERI', 'BILENKY', 'USA', 200000, 'VIOLET', 185, TRUE);
INSERT INTO show_room VALUES(15, 'SRISHA MOTORS', 'CAR', 'UDUPI', 'FERRARI', 'ITALY', 3000000, 'DARK BLUE', 163, TRUE);
INSERT INTO show_room VALUES(16, 'SRINIDHI MOTORS', 'CAR', 'RAMNAGAR', 'BENZ', 'INDIA', 1000000, 'DEEP BLUE', 184, TRUE);
INSERT INTO show_room VALUES(17, 'SANJANA MOTORS', 'BIKE', 'CHITRADURGA', 'CALOI', 'BRAZIL', 100000, 'RED', 196, TRUE);
INSERT INTO show_room VALUES(18, 'SURABHI MOTORS', 'CAR', 'KOLAR', 'FIAT', 'ITALY', 8500000, 'BLUE', '260', TRUE);
INSERT INTO show_room VALUES(19, 'PRIYANKA MOTORS', 'CAR', 'MYSORE', 'FORD', 'USA', 1000000, 'YELLOW', 233, TRUE);
INSERT INTO show_room VALUES(20, 'BHARATH MOTORS', 'CAR', 'HAMPI', 'HERO', 'INDIA', 850000, 'BLACK', 155, TRUE);
ALTER TABLE show_room MODIFY show_room_employees int not null;
ALTER TABLE show_room MODIFY show_room_name varchar(20) unique;
ALTER TABLE show_room MODIFY vehicle_price bigint check (vehicle_price > 10000);
ALTER TABLE show_room MODIFY show_room_employees int check (show_room_employees > 1);



USE BANGALORE;
CREATE TABLE chat_center (id INT PRIMARY KEY,username VARCHAR(50) NOT NULL,email VARCHAR(100) UNIQUE,message TEXT,timestamp DATETIME NOT NULL,status VARCHAR(20) NOT NULL,user_id INT UNIQUE,rating INT CHECK (rating BETWEEN 1 AND 5),created_at DATETIME DEFAULT CURRENT_TIMESTAMP,updated_at DATETIME);
INSERT INTO chat_center VALUES(1, 'user1', 'user1@example.com', 'Hello World', NOW(), 'active', 101, 5, NOW(), NOW());
INSERT INTO chat_center VALUES(2, 'user2', 'user2@example.com', 'Hi there', NOW(), 'inactive', 102, 4, NOW(), NOW());
INSERT INTO chat_center VALUES(3, 'user3', 'user3@example.com', 'Good morning', NOW(), 'active', 103, 3, NOW(), NOW());
INSERT INTO chat_center VALUES(4, 'user4', 'user4@example.com', 'How are you?', NOW(), 'active', 104, 5, NOW(), NOW());
INSERT INTO chat_center VALUES(5, 'user5', 'user5@example.com', 'I am fine', NOW(), 'inactive', 105, 2, NOW(), NOW());
INSERT INTO chat_center VALUES(6, 'user6', 'user6@example.com', 'What\'s up?', NOW(), 'active', 106, 1, NOW(), NOW());
INSERT INTO chat_center VALUES(7, 'user7', 'user7@example.com', 'Good night', NOW(), 'active', 107, 4, NOW(), NOW());
INSERT INTO chat_center VALUES(8, 'user8', 'user8@example.com', 'See you', NOW(), 'inactive', 108, 3, NOW(), NOW());
INSERT INTO chat_center VALUES(9, 'user9', 'user9@example.com', 'Take care', NOW(), 'active', 109, 5, NOW(), NOW());
INSERT INTO chat_center VALUES(10, 'user10', 'user10@example.com', 'Good luck', NOW(), 'inactive', 110, 2, NOW(), NOW());
INSERT INTO chat_center VALUES(11, 'user11', 'user11@example.com', 'Happy day', NOW(), 'active', 111, 4, NOW(), NOW());
INSERT INTO chat_center VALUES(12, 'user12', 'user12@example.com', 'What\'s new?', NOW(), 'inactive', 112, 1, NOW(), NOW());
INSERT INTO chat_center VALUES(13, 'user13', 'user13@example.com', 'See you later', NOW(), 'active', 113, 5, NOW(), NOW());
INSERT INTO chat_center VALUES(14, 'user14', 'user14@example.com', 'Good morning', NOW(), 'inactive', 114, 2, NOW(), NOW());
INSERT INTO chat_center VALUES(15, 'user15', 'user15@example.com', 'Nice to meet you', NOW(), 'active', 115, 3, NOW(), NOW());
INSERT INTO chat_center VALUES(16, 'user16', 'user16@example.com', 'Take care', NOW(), 'active', 116, 4, NOW(), NOW());
INSERT INTO chat_center VALUES(17, 'user17', 'user17@example.com', 'Good evening', NOW(), 'inactive', 117, 5, NOW(), NOW());
INSERT INTO chat_center VALUES(18, 'user18', 'user18@example.com', 'See you soon', NOW(), 'active', 118, 1, NOW(), NOW());
INSERT INTO chat_center VALUES(19, 'user19', 'user19@example.com', 'Goodbye', NOW(), 'inactive', 119, 2, NOW(), NOW());
INSERT INTO chat_center VALUES(20, 'user20', 'user20@example.com', 'Take care', NOW(), 'active', 120, 3, NOW(), NOW());
ALTER TABLE chat_center MODIFY status VARCHAR(20) NOT NULL;
ALTER TABLE chat_center ADD CONSTRAINT unique_username UNIQUE (username);
ALTER TABLE chat_center ADD CONSTRAINT chk_rating CHECK (rating BETWEEN 1 AND 5);
ALTER TABLE chat_center ADD CONSTRAINT chk_timestamp CHECK (timestamp IS NOT NULL);






USE BANGALORE;
create table temple_info(temple_id int not null,temple_name varchar(30) unique,location varchar(20)unique,built_at date,built_by varchar(20),open_time time,close_time time,distance int not null,no_of_devotees bigint,no_of_priest int);
insert into temple_info values(1,'ganesha temple','davanagere','2003/08/14','ravindra','06:00:00','8:00:00',109,50,6);
insert into temple_info values(2,'saibaba temple','shirdi','2004/11/08','yograj','07:00:00','9:00:00',60,350,7);
insert into temple_info values(3,'anjeneya swamy temple','rajajinagara','1957/09/20','raama','05:30:00','8:30:00',70,450,3);
insert into temple_info values(4,'vishnu temple','dharwad','1090/11/01','narendra','04:15:00','06:00:00',80,550,2);
insert into temple_info values(5,'rama temple','ayodye','2000/06/06','sandeep','06:00:00','8:45:00',90,500,5);
insert into temple_info values(6,'durgambika temple','huchhavanahalli','1970/09/09','virat','11:00:00','12:00:00',15,55,6);
insert into temple_info values(7,'karya siddi anjeneya temple','banashankari','1979/10/08','sukanya','12:00:00','13:00:00',25,150,4);
insert into temple_info values(8,'venkateshwara swamy temple','tirupati','1990/12/07','sahadeva','13:30:00','14:30:00',35,100,9);
insert into temple_info values(9,'lakshmi temple','mandya','1890/01/19','bhageeratha','14:15:00','15:00:00',45,200,6);
insert into temple_info values(10,'annapurneswari temple','horanaadu','1289/02/11','leelavathi','15:00:00','16:45:00',55,300,4);
insert into temple_info values(11,'ganpati temple','bidar','2003/08/14','ravi','06:00:00','8:00:00',109,50,6);
insert into temple_info values(12,'durgi temple','sirsi','2004/11/08','yoga','07:00:00','9:00:00',60,350,7);
insert into temple_info values(13,'shiva swamy temple','sagar','1957/09/20','raam','05:30:00','8:30:00',70,450,3);
insert into temple_info values(14,'karthikeya temple','kalburgi','1090/11/01','nara','04:15:00','06:00:00',80,550,2);
insert into temple_info values(15,'hanuman temple','raichur','2000/06/06','indra','06:00:00','8:45:00',90,500,5);
insert into temple_info values(16,'parvathi temple','hassan','1970/09/09','arjuna','11:00:00','12:00:00',15,55,6);
insert into temple_info values(17,'mallikarjun temple','koppal','1979/10/08','kanya','12:00:00','13:00:00',25,150,4);
insert into temple_info values(18,'chamundi temple','mysore','1990/12/07','arasu','13:30:00','14:30:00',35,100,9);
insert into temple_info values(19,'banshankari temple','kodagu','1890/01/19','vadeyar','14:15:00','15:00:00',45,200,6);
insert into temple_info values(20,'kannika temple','hubli','1289/02/11','leela','15:00:00','16:45:00',55,300,4);
ALTER TABLE temple_info MODIFY built_at date not null;
ALTER TABLE temple_info MODIFY built_by varchar(20) unique;
ALTER TABLE temple_info MODIFY no_of_priest int check(no_of_priest>1);
ALTER TABLE temple_info MODIFY no_of_devotees bigint check(no_of_devotees>1);


USE BANGALORE;
CREATE TABLE market_info(id int not null, market_type varchar(20),market_loc varchar(20) unique,open_time time,close_time time,distance int not null, no_of_shops int, no_of_customers bigint,shop_profit bigint,market_good boolean);
INSERT INTO market_info VALUES(1, 'flower','davanagere',' 06:00:00', '8:30:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(2, 'flower','sirsi',' 07:00:00', '8:25:00', 15, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(3, 'vegetables','raichur',' 06:30:00', '8:20:00', 20, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(4, 'flower','ramnagar',' 06:15:00', '8:15:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(5, 'flower','honnali',' 06:20:00', '8:10:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(6, 'vegetables','sagar',' 06:35:00', '8:05:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(7, 'vegetables','shimoga',' 06:25:00', '8:00:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(8, 'flower','banglore',' 06:10:00', '8:05:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(9, 'vegetables','manglore',' 06:05:00', '8:10:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(10, 'flower','udupi',' 06:12:00', '8:15:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(11, 'flower','madikeri',' 06:13:00', '8:20:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(12, 'vegetables','hampi',' 06:14:00', '8:25:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(13, 'vegetables','badami',' 06:04:00', '8:30:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(14, 'vegetables','ikkeri',' 06:03:00', '8:25:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(15, 'vegetables','talguppa',' 06:02:00', '8:00:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(16, 'flower','shikaripura',' 06:06:00', '8:00:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(17, 'flower','rippanpete',' 07:01:00', '8:00:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(18, 'flower','bhadravathi',' 06:08:00', '8:35:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(19, 'vegetables','hosur',' 06:09:00', '8:00:00', 25, 150, 15000,120000, TRUE);
INSERT INTO market_info VALUES(20, 'vegetables','mysore',' 06:11:00', '8:30:00', 25, 150, 15000,120000, TRUE);
ALTER TABLE market_info MODIFY no_of_shops int not null;
ALTER TABLE market_info MODIFY open_time time unique;
ALTER TABLE market_info MODIFY no_of_shops bigint check(no_of_shops > 100);
ALTER TABLE market_info MODIFY no_of_customers bigint check(no_of_customers > 100);







USE BANGALORE;
create table metro_info(id int not null,metro_name varchar(30),location varchar(20)unique,date_deparure date,passenger_name varchar(20),open_time time,close_time time,distance int not null,no_of_passengers bigint,no_of_bhogi int);
insert into metro_info values(1,'nammametro','davanagere','2003/08/14','raviii','06:00:00','8:00:00',10,50,6);
insert into metro_info values(2,' vijro','makere','2003/08/14','ravind','06:05:00','8:00:00',10,300,5);
insert into metro_info values(3,'naa metro','nelamangala','2003/08/14','ravin','06:10:00','8:00:00',10,300,6);
insert into metro_info values(4,'namma metro','rajajinagar','2003/08/14','ravindra','06:15:00','8:00:00',109,50,6);
insert into metro_info values(5,'na metro','yeswanthpura','2003/08/14','ravindra','06:20:00','8:00:00',10,300,6);
insert into metro_info values(6,'a metro','banavara','2003/03/14','ravindra','06:25:00','8:00:00',19,300,5);
insert into metro_info values(7,'namma tro','jalahalli','2003/04/14','ravindra','06:30:00','8:00:00',109,300,9);
insert into metro_info values(8,'nma metro','dasarahalli','2003/08/14','ravindra','06:29:00','8:00:00',109,300,7);
insert into metro_info values(9,'namma meo','kadur','2003/08/17','ravindra','06:28:00','8:00:00',109,500,8);
insert into metro_info values(10,'ma metro','channapatna','2003/09/14','ravindra','06:27:00','8:00:00',109,300,7);
insert into metro_info values(11,'namma mro','kolar','2003/08/14','ravindra','06:26:00','8:00:00',109,300,7);
insert into metro_info values(12,'nama tro','hasan','2003/08/14','ravindra','06:14:00','8:00:00',109,300,5);
insert into metro_info values(13,'ametro','mangalore','2003/08/14','ravindra','06:24:00','8:00:00',109,300,5);
insert into metro_info values(14,'mma metro','udupi','2003/08/14','ravindra','06:23:00','8:00:00',109,400,9);
insert into metro_info values(15,'namma mtro','arshike','2003/08/14','ravindra','06:22:00','8:00:00',109,400,6);
insert into metro_info values(16,'nammmetro','tumkur','2003/08/14','ravindra','06:21:00','8:00:00',109,300,7);
insert into metro_info values(17,'namma mero','banglore','2003/08/24','ravindra','06:19:00','8:00:00',109,600,8);
insert into metro_info values(17,'valro','bglore','2003/08/24','ravindra','06:18:00','8:00:00',109,300,9);
insert into metro_info values(19,'nammaro','davnere','2003/08/15','ravindra','06:17:00','8:00:00',109,500,8);
insert into metro_info values(20,'namma metro','shivmogga','2003/09/16','ravindra','06:16:00','8:00:00',109,400,6);
alter table metro_info modify date_deparure date not null;
alter table metro_info modify open_time time unique;
alter table metro_info modify no_of_bhogi int check(no_of_bhogi >1);
ALTER TABLE metro_info MODIFY no_of_passengers bigint check(no_of_passengers > 10);


