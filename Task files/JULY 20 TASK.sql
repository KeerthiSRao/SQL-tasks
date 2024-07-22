CREATE DATABASE TASK;
CREATE TABLE movie_info(id int,movie_name varchar (20), movie_hero varchar (20), movie_heroine varchar (20), movie_villan varchar (20)); 

ALTER TABLE movie_info ADD COLUMN (movie_director varchar (20), theatre_cost int, movie_good boolean,movie_budget bigint, movie_profit bigint);

ALTER TABLE movie_info RENAME COLUMN movie_director to director;
ALTER TABLE movie_info RENAME COLUMN movie_hero to hero;
ALTER TABLE movie_info RENAME COLUMN movie_heroine to heroine;
ALTER TABLE movie_info RENAME COLUMN movie_name  to name_of_movie;
ALTER TABLE movie_info RENAME COLUMN movie_villan to villan;

INSERT INTO movie_info VALUES(1, 'BAHUBALI', 'PRABHAS', 'TAMANNAH', 'RAANA', 'RAJ MOULI', 250, true, 250000000, 750000000);
INSERT INTO movie_info VALUES(2, 'KGF', 'YASH', 'SREENIDHI SHETTY', 'WORKER', 'PAVAM ', 200, true, 300000000, 1250000000);
INSERT INTO movie_info VALUES(3, 'SSE', 'RAKSHITH SHETTY', 'RUKMINI VASANT', 'ACHYUTH', 'RAKSHITH SHETTY ', 150, true, 200000000, 600000000);
INSERT INTO movie_info VALUES(4, 'KANTAARA', 'RISHABH SHETTY', 'SAPTAMI GOWDA', 'ACHYUTH', 'RISHABH SHETTY', 250, true, 250000000, 1200000000);
INSERT INTO movie_info VALUES(5, 'CHICCHORE', 'SUSHANTH ', 'SHRADDHA KAPOOR', 'NILL', 'NITESH TIWARI', 300, true, 200000000, 650000000);
INSERT INTO movie_info VALUES(6, 'SANAM TERI KASAM', 'HARSHAVARDHAN', 'MAWRA HOCANE', 'NILL', 'RADHIKA RAO', 250, true, 250000000, 750000000);
INSERT INTO movie_info VALUES(7, 'VIVAH', 'SHAHID KAPOOR', 'AMRITA RAO', 'NILL', 'SOORAJ BARJATYA', 100, true, 250000000, 750000000);
INSERT INTO movie_info VALUES(8, 'DIL BECHARA', 'SUSHANTH ', 'SANJANA SANGHI', 'SAHIL VAID', 'MUKHESH CHHABRA', 200, true, 250000000, 750000000);
INSERT INTO movie_info VALUES(9, 'RNBDJ', 'SHAH RUKH KHAN', 'ANUSHKA SHARMA', 'NILL', 'ADITYA CHOPRA', 300, true, 250000000, 750000000);
INSERT INTO movie_info VALUES(10, 'DLKH', 'AYUSHMAN KHURANA', 'BHUMI PADNEKAR', 'NOPE', 'SHARATH KATARIYA', 200, true, 250000000, 750000000);

select * FROM movie_info;
UPDATE movie_info SET villan ='NO VILLAN' WHERE id=5;
UPDATE movie_info SET hero ='HARSHA' WHERE id=6;
UPDATE movie_info SET heroine ='AMRITA' WHERE id=7;
UPDATE movie_info SET name_of_movie ='DB' WHERE id=8;
UPDATE movie_info SET director ='ADITYA' WHERE id=9;
UPDATE movie_info SET theatre_cost =250 WHERE id=10;
UPDATE movie_info SET movie_good =FALSE WHERE id=1;
UPDATE movie_info SET movie_budget =500000000 WHERE id=2;
UPDATE movie_info SET movie_profit =700000000 WHERE id=3;
UPDATE movie_info SET villan ='NO VILLAN' WHERE id=4;

delete from movie_info where id=1;
delete from movie_info where id=3;
delete from movie_info where id=5;

/*FETCH*/
UPDATE movie_info SET villan='NO VILLAN' WHERE id in (8,9);
rollback;
select * from movie_info where id in (6,7,8);
select * from movie_info where id not in (8,9,10);
select * from movie_info where id =4 and name_of_movie='KANTHARA';
select * from movie_info where id=2 or villan='GARUDA RAM';















CREATE TABLE bank_details(id int, bank_name varchar (20), acc_type varchar (20), acc_manager varchar (20));
ALTER TABLE bank_details ADD COLUMN (deposit int, withdraw bigint, acc_num bigint, acc_holder varchar (20), joint_holder varchar (20), bank_good boolean);

ALTER TABLE bank_details RENAME COLUMN deposit to money_deposit;
ALTER TABLE bank_details RENAME COLUMN withdraw to money_withdraw;
ALTER TABLE bank_details RENAME COLUMN acc_type to account_type;
ALTER TABLE bank_details RENAME COLUMN money_deposit to deposit;
ALTER TABLE bank_details RENAME COLUMN money_withdraw to withdraw;

INSERT INTO bank_details VALUES(1, 'CANARA', 'SAVINGS', 'MANAGER', 10000, 5000, 251546352, 'SRINIVAS', 'KALAVATHI',true);
INSERT INTO bank_details VALUES(2, 'HDFC', 'SAVINGS', 'MANAGER', 15000, 5000, 24857623, 'KALAVTHI', 'KEERTHI',true);
INSERT INTO bank_details VALUES(3, 'ICICI', 'SAVINGS', 'MANAGER', 20000, 5000, 25741635, 'KEERTHI', 'KAVYA',true);
INSERT INTO bank_details VALUES(4, 'ASIAN BANK', 'SAVINGS', 'MANAGER', 25000, 5000, 25963874, 'KAVYA', 'KEERTHI',true);
INSERT INTO bank_details VALUES(5, 'MYSORE', 'SAVINGS', 'MANAGER', 10000, 5000, 25136541, 'CHIDAMBAR', 'SRINIVAS',true);
INSERT INTO bank_details VALUES(6, 'SYNDICATE', 'SAVINGS', 'MANAGER', 5000, 5000, 25321456, 'SRINIVAS', 'KEERTHI',true);
INSERT INTO bank_details VALUES(7, 'PRAGATI KRISHNA BANK', 'SAVINGS', 'MANAGER', 15000, 5000, 25654789, 'KALAVATHI', 'SRINIVAS',true);
INSERT INTO bank_details VALUES(8, 'UNION BANK OF INDIA', 'SAVINGS', 'MANAGER', 20000, 5000, 25369852, 'KAVYA', 'KALAVATHI',true);
INSERT INTO bank_details VALUES(9, 'BANK OF BARODA', 'SAVINGS', 'MANAGER', 25000, 5000, 25852147, 'KALAVATHI', 'KAVYA',true);
INSERT INTO bank_details VALUES(10, 'PUNJAB NATIONAL BANK', 'SAVINGS', 'MANAGER', 10000, 5000, 25149825, 'CHIDAMBAR', 'KEERTHI',true);

SELECT * FROM bank_details;
UPDATE bank_details SET bank_name ='ASIAN' WHERE id=4;
UPDATE bank_details SET account_type ='zero' WHERE id=2;
UPDATE bank_details SET acc_manager ='vishwanath' WHERE id=5;
UPDATE bank_details SET deposit =5000 WHERE id=1;
UPDATE bank_details SET withdraw =10000 WHERE id=3;
UPDATE bank_details SET acc_num =25100235 WHERE id=6;
UPDATE bank_details SET acc_holder ='KAVYA' WHERE id=7;
UPDATE bank_details SET joint_holder ='KEERTHI' WHERE id=8;
UPDATE bank_details SET bank_good =false WHERE id=9;
UPDATE bank_details SET bank_name ='PNB' WHERE id=10;

delete from bank_details where id=1;
delete from bank_details where id=7;
delete from bank_details where id=8;

/*FETCH*/
UPDATE bank_details SET account_type='ZERO' WHERE id in (6,4);
rollback;
select * from bank_details where id in (5,6,9);
select * from bank_details where id not in (4,9,10);
select * from bank_details where id =4 and account_type='ZERO';
select * from bank_details where id=2 or DEPOSIT=15000;



