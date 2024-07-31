CREATE DATABASE FOOD_DETAILS;
USE FOOD_DETAILS;
CREATE TABLE order_food(id int,order_name varchar(20), cost int, order_id varchar(20) primary key,created_at varchar(20),created_by varchar(20),modified_at varchar(20),modified_by varchar(20));
INSERT INTO order_food VALUES(1, 'DOSA', 70, 'KBJ2480', 'ZOMATO', 'KEERTHI','08:00:00', 'MANAGER');
INSERT INTO order_food VALUES(2, 'IDLI VADA', 65, 'KBJ2580', 'SWIGGY', 'KAVYA','08:05:00', 'MANAGER');
INSERT INTO order_food VALUES(3, 'PULAV', 60, 'KBJ2680', 'ZOMATO', 'NISARGA','08:10:00', 'MANAGER');
INSERT INTO order_food VALUES(4, 'BISI BELE BATH', 55, 'KBJ2780', 'SWIGGY', 'PALLAVI','08:15:00', 'MANAGER');
INSERT INTO order_food VALUES(5, 'PAVBHAJI', 50, 'KBJ2880', 'ZOMATO', 'RAO','08:20:00', 'MANAGER');
SELECT * FROM order_food;
	
USE FOOD_DETAILS;
CREATE TABLE payment(id int, price int, payment_id varchar(20) primary key,order_id varchar(20) ,foreign key(order_id) references order_food(order_id), payment_status boolean, created_at varchar(20), created_by varchar(20), modified_at varchar(20), modified_by varchar(20));
INSERT INTO payment VALUES(1,70, 'IBC1240', 'KBJ2480',TRUE,'ZOMATO', 'KEERTHI', '08:00:00', 'MANAGER');
INSERT INTO payment VALUES(2,65, 'IBC1250', 'KBJ2580',TRUE,'SWIGGY', 'KAVYA', '08:05:00', 'MANAGER');
INSERT INTO payment VALUES(3,60, 'IBC1260', 'KBJ2680',TRUE,'ZOMATO', 'NISARGA', '08:10:00', 'MANAGER');
INSERT INTO payment VALUES(4,55, 'IBC1270', 'KBJ2780',TRUE,'SWIGGY', 'PALLAVI', '08:15:00', 'MANAGER');
INSERT INTO payment VALUES(5,50, 'IBC1280', 'KBJ2880',TRUE,'ZOMATO', 'RAO', '08:20:00', 'MANAGER');
SELECT * FROM payment;

USE FOOD_DETAILS;
CREATE TABLE restaurent(id int, r_name varchar(20), r_id varchar(20) primary key, r_loc varchar(20), order_id varchar(20) ,foreign key(order_id) references order_food(order_id), ratings int, payment_id varchar(20),foreign key(payment_id) references payment(payment_id), created_at varchar(20), created_by varchar(20), modified_at varchar(20), modified_by varchar(20));
INSERT INTO restaurent VALUES(1, 'AYODHYA RESTAURENT', 'R20', 'BANGLORE', 'KBJ2480', 5, 'IBC1240', 'ZOMATO', 'KEERTHI', '08:00:00', 'MANAGER');
INSERT INTO restaurent VALUES(2, 'UDUPI RESTAURENT', 'R21', 'SHIMOGA', 'KBJ2580', 5, 'IBC1250', 'SWIGGY', 'KAVYA', '08:05:00', 'MANAGER');
INSERT INTO restaurent VALUES(3, 'MADHURA RESTAURENT', 'R22', 'SAGAR', 'KBJ2680', 5, 'IBC1260', 'ZOMATO', 'NISARGA', '08:10:00', 'MANAGER');
INSERT INTO restaurent VALUES(4, 'BHAVYA RESTAURENT', 'R23', 'DHARWAD', 'KBJ2780', 5, 'IBC1270', 'SWIGGY', 'PALLVI', '08:15:00', 'MANAGER');
INSERT INTO restaurent VALUES(5, 'NISARGA RESTAURENT', 'R24', 'HUBLI', 'KBJ2880', 5, 'IBC1280', 'ZOMATO', 'RAO', '08:20:00', 'MANAGER');
SELECT * FROM restaurent;

USE FOOD_DETAILS;
CREATE TABLE delivery(id int, p_name varchar(20), mode_of_payment enum('SUCCESS','FAILURE'), r_id varchar(20), foreign key(r_id) references restaurent(r_id), order_id varchar(20) ,foreign key(order_id) references order_food(order_id), created_by varchar(20), modified_at varchar(20), modified_by varchar(20));
INSERT INTO delivery VALUES(1, 'KEERTHI', 1, 'R20', 'KBJ2480', 'ZOMATO', 'KEERTHI', '08:00:00', 'MANAGER');
INSERT INTO delivery VALUES(1, 'KAVYA', 1, 'R21', 'KBJ2580', 'SWIGGY', 'KAVYA', '08:05:00', 'MANAGER');
INSERT INTO delivery VALUES(1, 'NISARGA', 1, 'R22', 'KBJ2680', 'ZOMATO', 'NISARGA', '08:10:00', 'MANAGER');
INSERT INTO delivery VALUES(1, 'PALLAVI', 1, 'R23', 'KBJ2780', 'SWIGGY', 'PALLAVI', '08:15:00', 'MANAGER');
INSERT INTO delivery VALUES(1, 'RAO', 1, 'R24', 'KBJ2880', 'ZOMATO', 'RAO', '08:20:00', 'MANAGER');
SELECT * FROM delivery;

