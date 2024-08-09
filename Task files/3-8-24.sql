CREATE DATABASE student;
use student;
CREATE TABLE student(id int primary key,name varchar(20),dob varchar(20),gender varchar(10),email varchar(30),phone bigint,
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20));
INSERT INTO student values(1,'Harsh',2002-10-27,'Female','harsh27@gmail.com',8796457892,now(),'leader',now(),'HOD');
INSERT INTO student values(2,'Jeevi',2002-07-24,'Female','jeevi24@gmail.com',8796467892,now(),'leader',now(),'HOD');
INSERT INTO student values(3,'Priya',2002-12-14,'Female','priya14@gmail.com',8796438292,now(),'leader',now(),'HOD');
INSERT INTO student values(4,'Jaishu',2003-01-31,'Female','jaishu31@gmail.com',0293768282,now(),'leader',now(),'HOD');
INSERT INTO student values(5,'Lakshmish',2002-06-18,'Male','laksh18@gmail.com',9296457892,now(),'leader',now(),'HOD');
INSERT INTO student values(6,'Spoorthi',2002-04-24,'Female','spoorthi@gmail.com',728938920,now(),'leader',now(),'HOD');
INSERT INTO student values(7,'Ranjitha',2002-03-27,'Female','ranj27@gmail.com',637826390,now(),'leader',now(),'HOD');
INSERT INTO student values(8,'Lakshmi',2002-12-21,'Female','lakshmi21@gmail.com',7482964829,now(),'leader',now(),'HOD');
INSERT INTO student values(9,'Renu',2002-06-02,'Female','renu02@gmail.com',6378291769,now(),'leader',now(),'HOD');
INSERT INTO student values(10,'Sanvi',2002-07-15,'Female','sanvi15@gmail.com',7638829917,now(),'leader',now(),'HOD');
INSERT INTO student values(11,'Bharath',2002-02-17,'Male','bharath17@gmail.com',6478929378,now(),'leader',now(),'HOD');
INSERT INTO student values(12,'Arun',2002-01-29,'Male','arun29@gmail.com',9296457892,now(),'leader',now(),'HOD');
INSERT INTO student values(13,'Abhi',2002-05-19,'Male','abhi19@gmail.com',7482964829,now(),'leader',now(),'HOD');
INSERT INTO student values(14,'Sanjay',2002-03-17,'Male','sanjay17@gmail.com',6478929378,now(),'leader',now(),'HOD');
INSERT INTO student values(15,'Sanju',2002-06-07,'Female','sanju7@gmail.com',728938920,now(),'leader',now(),'HOD');
INSERT INTO student values(16,'Gunvith',2002-12-17,'Male','gunvith17@gmail.com',8796467892,now(),'leader',now(),'HOD');
INSERT INTO student values(17,'Bhuvan',2002-08-23,'Male','bhuvan23@gmail.com',728938920,now(),'leader',now(),'HOD');
INSERT INTO student values(18,'Poorvi',2003-09-31,'Female','poorvi31@gmail.com',0293768282,now(),'leader',now(),'HOD');
INSERT INTO student values(19,'Varun',2002-08-18,'Male','varun18@gmail.com',9296457892,now(),'leader',now(),'HOD');
INSERT INTO student values(20,'Hashi',2002-05-24,'Female','hashi@gmail.com',728938920,now(),'leader',now(),'HOD');
SELECT * FROM student;

CREATE TABLE student_result(result_id int primary key,student_id int,branch varchar(20),CGPA int,credits int,backlogs int,
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(student_id) references student(id));
INSERT INTO student_result values(101,1,'ECE',9.5,10,0,now(),'admin',now(),'Principal');
INSERT INTO student_result values(102,2,'ISE',8.5,9,1,now(),'admin',now(),'Principal');
INSERT INTO student_result values(103,3,'CSE',9,8,3,now(),'admin',now(),'Principal');
INSERT INTO student_result values(104,4,'CIV',7,6,4,now(),'admin',now(),'Principal');
INSERT INTO student_result values(105,5,'ME',6.5,7,5,now(),'admin',now(),'Principal');
INSERT INTO student_result values(106,6,'EEE',8.2,8,3,now(),'admin',now(),'Principal');
INSERT INTO student_result values(107,7,'BT',8.1,4,2,now(),'admin',now(),'Principal');
INSERT INTO student_result values(108,8,'EIE',7.6,5,1,now(),'admin',now(),'Principal');
INSERT INTO student_result values(109,9,'ECE',7.2,7,3,now(),'admin',now(),'Principal');
INSERT INTO student_result values(110,10,'CSE',9.2,9,5,now(),'admin',now(),'Principal');
INSERT INTO student_result values(111,11,'ISE',8.9,8,7,now(),'admin',now(),'Principal');
INSERT INTO student_result values(112,12,'ECE',9.5,4,3,now(),'admin',now(),'Principal');
INSERT INTO student_result values(113,13,'EEE',7.9,6,4,now(),'admin',now(),'Principal');
INSERT INTO student_result values(114,14,'BT',8.4,7,2,now(),'admin',now(),'Principal');
INSERT INTO student_result values(115,15,'CIV',7.1,9,0,now(),'admin',now(),'Principal');
INSERT INTO student_result values(116,16,'AI',9.4,4,3,now(),'admin',now(),'Principal');
INSERT INTO student_result values(117,17,'ML',6.5,5,4,now(),'admin',now(),'Principal');
INSERT INTO student_result values(118,18,'ECE',7.5,6,1,now(),'admin',now(),'Principal');
INSERT INTO student_result values(119,19,'CSE',8.5,7,2,now(),'admin',now(),'Principal');
INSERT INTO student_result values(120,20,'ECE',9.5,8,3,now(),'admin',now(),'Principal');
SELECT * FROM student_result;
UPDATE student_result SET credits = CASE WHEN CGPA>=7.5 THEN 9
ELSE 5
END;
SELECT * FROM student ORDER BY id LIMIT 5 OFFSET 5;
SELECT branch, AVG(CGPA) AS average_cgpa FROM student_result GROUP BY branch HAVING AVG(CGPA)>=5.5;
SELECT * FROM student ORDER BY gender;



create table university(id int,uni_name varchar(30),uni_id int primary key,uni_type varchar(20),uni_chancellor varchar(30),total_students int,
created_at timestamp,created_by varchar(20), modified_at timestamp, modified_by varchar(20));
INSERT INTO university values(1,"VTU",100200,"public state","governor of karnataka",809345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(2,"bengaluru",100201,"public state","governor of karnataka",1009345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(3,"christ",100202,"deemed to be","governor of karnataka",909345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(4,"indian institute",100203,"public state","governor of karnataka",129345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(5,"christ",100204,"public state","governor of karnataka",900345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(6,"jain",100205,"public state","governor of karnataka",789345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(7,"reva",100206,"public state","governor of karnataka",569345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(8,"dayananda sagar",100207,"public state","governor of karnataka",329345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(9,"karnataka sanskrit",100208,"public state","governor of karnataka",649345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(10,"pes",100209,"public state","governor of karnataka",219345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(11,"alliance",100210,"public state","governor of karnataka",729345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(12,"rajiv gandhi",100211,"public state","governor of karnataka",789345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(13,"azim premji",100212,"public state","governor of karnataka",459345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(14,"st joseph's",100213,"public state","governor of karnataka",739345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(15,"ramaiah",100214,"public state","governor of karnataka",1029345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(16,"rv",100215,"public state","governor of karnataka",699345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(17,"presidency",100216,"public state","governor of karnataka",399345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(18,"rai technology",100217,"public state","governor of karnataka",939345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(19,"garden city",100218,"public state","governor of karnataka",389345,now(),"Spoorthi",now(),"Raju");
INSERT INTO university values(20,"bms",100219,"public state","governor of karnataka",479345,now(),"Spoorthi",now(),"Raju");

create table college_info(id int,college_name varchar(90),college_id int primary key,uni_id int,college_address varchar(50),no_students int,
created_at timestamp,created_by varchar(20), modified_at timestamp, modified_by varchar(20),foreign key(uni_id) references university(uni_id));
INSERT INTO college_info values(1,"Sapthagiri college of engineering",1002,100200,"Bangalore",2000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(2,"acharya institute of management",1003,100201,"bangalore",3000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(3,"Atria college of engineering",1004,100200,"Bangalore",2100,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(4,"gupta college of engineering",1005,100201,"Bangalore",2200,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(5,"harsha institute of management",1006,100201,"Bangalore",4000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(6,"Rajeshwari college of engineering",1007,100200,"Bangalore",12000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(7,"Shri sairam college of engineering",1008,100200,"hesarghatta",22000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(8,"Jnana mandira",1009,100201,"Bangalore",32000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(9,"kle degree college",1010,100201,"Bangalore",28000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(10,"reva college of engineering",1011,100206,"Bangalore",2500,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(11,"Impact college of engineering",1012,100200,"Bangalore",12300,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(12,"reva pu college",1013,100206,"Bangalore",13400,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(13,"reva medical college",1014,100206,"Bangalore",18000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(14,"Kalapatru college of engineering",1015,100200,"Bangalore",45000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(15,"christ college of engineering",1016,100204,"Bangalore",14500,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(16,"Oxford college of engineering",1017,100200,"Bangalore",89000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(17,"Christ college of management",1018,100204,"Bangalore",34000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(18,"SJB institute of engineering",1019,100200,"Bangalore",6000,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(19,"Shri venkateshwara college of engineering",1020,100200,"Bangalore",2900,now(),"harsh",now(),"sparsh");
INSERT INTO college_info values(20,"vivekanada college of engineering",1021,100200,"Bangalore",7000,now(),"harsh",now(),"sparsh");
UPDATE university SET uni_type=CASE WHEN total_students>=100000 THEN "public state" else "deemed" end;
SELECT * FROM college_info ORDER BY id LIMIT 15 OFFSET 15;
SELECT college_name,avg(no_students) as average_students from college_info group by college_name having avg(no_students)>=2000;
SELECT * FROM college_info ORDER BY uni_id;



CREATE TABLE manager(manager_id int primary key,name varchar(20),email varchar(20),gender varchar(20),phone bigint,department varchar(20),
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20));
INSERT INTO manager values(1,'Harsh','harsh27@gmail.com','Female',8796457892,'HR',now(),'admin',now(),'supervisor');
INSERT INTO manager values(2,'Jeevi','jeevi24@gmail.com','Female',8796467892,'Engineering',now(),'admin',now(),'supervisor');
INSERT INTO manager values(3,'Priya','priya14@gmail.com','Female',8796438292,'Marketing',now(),'admin',now(),'supervisor');
INSERT INTO manager values(4,'Jaishu','jaishu31@gmail.com','Female',0293768282,'Finance',now(),'admin',now(),'supervisor');
INSERT INTO manager values(5,'Lakshmish','laksh18@gmail.com','Male',9296457892,'Sales',now(),'admin',now(),'supervisor');
INSERT INTO manager values(6,'Spoorthi','spoorthi@gmail.com','Female',728938920,'Product',now(),'admin',now(),'supervisor');
INSERT INTO manager values(7,'Ranjitha','ranj27@gmail.com','Female',637826390,'HR',now(),'admin',now(),'supervisor');
INSERT INTO manager values(8,'Lakshmi','lakshmi21@gmail.com','Female',7482964829,'Engineering',now(),'admin',now(),'supervisor');
INSERT INTO manager values(9,'Renu','renu02@gmail.com','Female',6378291769,'Marketing',now(),'admin',now(),'supervisor');
INSERT INTO manager values(10,'Sanvi','sanvi15@gmail.com','Female',7638829917,'Finance',now(),'admin',now(),'supervisor');
INSERT INTO manager values(11,'Bharath','bharath17@gmail.com','Male',6478929378,'Sales',now(),'admin',now(),'supervisor');
INSERT INTO manager values(12,'Arun','arun29@gmail.com','Male',9296457892,'Product',now(),'admin',now(),'supervisor');
INSERT INTO manager values(13,'Abhi','abhi19@gmail.com','Male',7482964829,'HR',now(),'admin',now(),'supervisor');
INSERT INTO manager values(14,'Sanjay','sanjay17@gmail.com','Male',6478929378,'Finance',now(),'admin',now(),'supervisor');
INSERT INTO manager values(15,'Sanju','sanju7@gmail.com','Female',728938920,'Marketing',now(),'admin',now(),'supervisor');
INSERT INTO manager values(16,'Gunvith','gunvith17@gmail.com','Male',8796467892,'Engineering',now(),'admin',now(),'supervisor');
INSERT INTO manager values(17,'Bhuvan','bhuvan23@gmail.com','Male',728938920,'Sales',now(),'admin',now(),'supervisor');
INSERT INTO manager values(18,'Poorvi','poorvi31@gmail.com','Female',0293768282,'Marketing',now(),'admin',now(),'supervisor');
INSERT INTO manager values(19,'Varun','varun18@gmail.com','Male',9296457892,'Product',now(),'admin',now(),'supervisor');
INSERT INTO manager values(20,'Hari','hari8@gmail.com','Male',9746457892,'Sales',now(),'admin',now(),'supervisor');
SELECT * FROM manager;

CREATE TABLE employee(employee_id int primary key,manager_id int,name varchar(20),email varchar(20),phone bigint,salary bigint,
created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),
foreign key(manager_id) references manager(manager_id));
INSERT INTO employee values(101,1,'Sanvi','sanvi24@gmail.com',7893547839,50000,now(),'admin',now(),'manager');
INSERT INTO employee values(102,2,'Abhi','abhi1@gmail.com',645738628,30000,now(),'admin',now(),'manager');
INSERT INTO employee values(103,3,'Arun','arun2@gmail.com',672873922,20000,now(),'admin',now(),'manager');
INSERT INTO employee values(104,4,'Akil','akil5@gmail.com',873863892,12000,now(),'admin',now(),'manager');
INSERT INTO employee values(105,5,'Sanju','sanju4@gmail.com',963892098,15000,now(),'admin',now(),'manager');
INSERT INTO employee values(106,6,'Sanjay','sanjay24@gmail.com',738749022,25000,now(),'admin',now(),'manager');
INSERT INTO employee values(107,7,'Harsh','harsh27@gmail.com',637847922,35000,now(),'admin',now(),'manager');
INSERT INTO employee values(108,8,'Jeevi','jeevi24@gmail.com',978376829,45000,now(),'admin',now(),'manager');
INSERT INTO employee values(109,9,'Lakshmish','lakshmish3@gmail.com',637829233,55000,now(),'admin',now(),'manager');
INSERT INTO employee values(110,10,'Laxmi','laxmi24@gmail.com',647538922,44000,now(),'admin',now(),'manager');
INSERT INTO employee values(111,11,'Divya','divya24@gmail.com',637939748,29000,now(),'admin',now(),'manager');
INSERT INTO employee values(112,12,'Amar','amar1@gmail.com',645738628,30000,now(),'admin',now(),'manager');
INSERT INTO employee values(113,13,'Akul','akul2@gmail.com',672873922,20000,now(),'admin',now(),'manager');
INSERT INTO employee values(114,14,'Sahil','sahil5@gmail.com',873863892,12000,now(),'admin',now(),'manager');
INSERT INTO employee values(115,15,'Suhas','suhas4@gmail.com',963892098,15000,now(),'admin',now(),'manager');
INSERT INTO employee values(116,16,'Harish','harish24@gmail.com',738749022,25000,now(),'admin',now(),'manager');
INSERT INTO employee values(117,17,'Anju','anju27@gmail.com',637847922,35000,now(),'admin',now(),'manager');
INSERT INTO employee values(118,18,'Gaana','gaana4@gmail.com',978376829,45000,now(),'admin',now(),'manager');
INSERT INTO employee values(119,19,'Harsha','harsha3@gmail.com',637829233,55000,now(),'admin',now(),'manager');
INSERT INTO employee values(120,20,'Ram','ram4@gmail.com',647538922,44000,now(),'admin',now(),'manager');
UPDATE employee SET name = CASE WHEN salary>=35000 THEN 'Harsha'
ELSE 'Abhi'
END;
SELECT * FROM manager ORDER BY manager_id LIMIT 5 OFFSET 5;
SELECT name, AVG(salary) AS average_salary FROM employee GROUP BY name HAVING AVG(salary)>=35000;
SELECT * FROM manager ORDER BY department;