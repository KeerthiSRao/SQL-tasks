CREATE DATABASE bookshop;
USE bookshop;
CREATE TABLE books (book_id INT PRIMARY KEY,title VARCHAR(255) NOT NULL,author VARCHAR(100) NOT NULL,genre VARCHAR(50),published_year YEAR,isbn VARCHAR(20) UNIQUE NOT NULL);
SELECT * FROM books;
CREATE TABLE customers (member_id INT PRIMARY KEY,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL,email VARCHAR(100) UNIQUE NOT NULL,phone_number VARCHAR(15),membership_start_date DATE NOT NULL);
SELECT * FROM customers;
CREATE TABLE book_records (borrow_id INT PRIMARY KEY,book_id INT,member_id INT,borrow_date DATE NOT NULL,return_date DATE,due_date DATE NOT NULL,CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES books(book_id),CONSTRAINT fk_member_id FOREIGN KEY (member_id) REFERENCES customers(member_id));
SELECT * FROM book_records;
CREATE TABLE staff (staff_id INT PRIMARY KEY,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL,position VARCHAR(50) NOT NULL,email VARCHAR(100) UNIQUE NOT NULL,hire_date DATE NOT NULL);
SELECT * FROM staff;
INSERT INTO books VALUES(1, '1984', 'George Orwell', 'Fiction', 1984, '9780143028574');
INSERT INTO books VALUES(2, 'Pride and prejudice', 'JAne austin', 'Historical Fiction', 1993, '9780679738713');
INSERT INTO books VALUES(3, 'The lord of rings', 'John Ronald', 'Fiction', 1981, '9780099578512');
INSERT INTO books VALUES(4, 'The White Tiger', 'Aravind Adiga', 'Fiction', 2008, '9781416562603');
INSERT INTO books VALUES(5, 'Train to Pakistan', 'Khushwant Singh', 'Historical Fiction', 1956, '9780143065881');
INSERT INTO books VALUES(6, 'To kill a mocking bird', 'Harper lee', 'Fiction', 2006, '9780802142818');
INSERT INTO books VALUES(7, 'The great Gatsby', 'Scott fitzgerald', 'Short Stories', 1999, '9780395927205');
INSERT INTO books VALUES(8, 'Anna Krenina', 'Leo tolstoy', 'Fiction', 1958, '9788185986005');
INSERT INTO books VALUES(9, 'Gitanjali', 'Rabindranath Tagore', 'Poetry', 1910, '9788129104630');
INSERT INTO books VALUES(10, 'Lolita', 'Herman Melville', 'Fiction', 1936, '9788171674053');
INSERT INTO books VALUES(11, 'Malgudi Days', 'RK Narayan', 'Short Stories', 1943, '9788185986173');
INSERT INTO books VALUES(12, 'The Great Expectations', 'Charles dickens', 'Fiction', 2004, '9780618711666');
INSERT INTO books VALUES(13, 'Beloved', 'Toni Morrison', 'Historical Fiction', 2000, '9780375758775');
INSERT INTO books VALUES(14, 'Crime and punishmet', 'Fyodor Dostoevsky', 'Romance', 1999, '9780375709241');
INSERT INTO books VALUES(15, 'Frankenstein', 'Mary Shelley', 'History', 1946, '9780143031033');

INSERT INTO customers VALUES(1, 'Keerthi', 'Raj', 'Keerthirao@gmailcom', '9812345678', '2024-01-01');
INSERT INTO customers VALUES(2, 'Kavya', 'Rao', 'Kavyarao@gmailcom', '9823456789', '2024-02-08');
INSERT INTO customers VALUES(3, 'Srinivas', 'Surya', 'Srinivassurya@gmailcom', '9834567890', '2024-03-07');
INSERT INTO customers VALUES(4, 'Kalavathi', 'naik', 'Kalavathi@gmailcom', '9845678901', '2024-04-11');
INSERT INTO customers VALUES(5, 'Raghu', 'Patel', 'Raghu18@gmailcom', '9856789012', '2024-05-21');
INSERT INTO customers VALUES(6, 'Uday', 'Iyer', 'Uday@gmailcom', '9867890123', '2023-06-12');
INSERT INTO customers VALUES(7, 'Sheela', 'Kumar', 'Sheela@gmailcom', '9878901234', '2023-07-11');
INSERT INTO customers VALUES(8, 'Namratha', 'Gowda', 'Namratha@gmailcom', '9889012345', '2023-08-09');
INSERT INTO customers VALUES(9, 'Varun', 'Desai', 'Varun@gmailcom', '9890123456', '2023-09-05');
INSERT INTO customers VALUES(10, 'Mansi', 'Verma', 'Mansi@gmailcom', '9901234567', '2023-10-03');
INSERT INTO customers VALUES(11, 'Chinmayi', 'Naidu', 'Chinmayi@gmailcom', '9912345678', '2023-11-02');
INSERT INTO customers VALUES(12, 'Bhoomi', 'Raj', 'Bhoomi@gmailcom', '9923456789', '2023-12-07');
INSERT INTO customers VALUES(13, 'Hamsa', 'Joshi', 'Hamsa@gmailcom', '9934567890', '2024-01-08');
INSERT INTO customers VALUES(14, 'Niharika', 'Chauhan', 'Niharika@gmailcom', '9945678901', '2024-02-06');
INSERT INTO customers VALUES(15, 'Ananya', 'Shah', 'Ananya@gmailcom', '9956789012', '2024-03-07');

INSERT INTO book_records VALUES(1, 1, 1, '2024-01-01', NULL, '2024-01-15');
INSERT INTO book_records VALUES(2, 2, 2, '2024-01-05', '2024-01-12', '2024-01-19');
INSERT INTO book_records VALUES(3, 3, 3, '2024-01-10', NULL, '2024-01-24');
INSERT INTO book_records VALUES(4, 4, 4, '2024-01-15', '2024-01-22', '2024-01-29');
INSERT INTO book_records VALUES(5, 5, 5, '2024-01-20', NULL, '2024-02-03');
INSERT INTO book_records VALUES(6, 6, 6, '2024-01-25', NULL, '2024-02-08');
INSERT INTO book_records VALUES(7, 7, 7, '2024-01-30', '2024-02-06', '2024-02-13');
INSERT INTO book_records VALUES(8, 8, 8, '2024-02-05', NULL, '2024-02-19');
INSERT INTO book_records VALUES(9, 9, 9, '2024-02-10', NULL, '2024-02-24');
INSERT INTO book_records VALUES(10, 10, 10, '2024-02-15', NULL, '2024-03-01');
INSERT INTO book_records VALUES(11, 11, 11, '2024-02-20', NULL, '2024-03-05');
INSERT INTO book_records VALUES(12, 12, 12, '2024-02-25', '2024-03-04', '2024-03-11');
INSERT INTO book_records VALUES(13, 13, 13, '2024-03-01', NULL, '2024-03-15');
INSERT INTO book_records VALUES(14, 14, 14, '2024-03-05', NULL, '2024-03-19');
INSERT INTO book_records VALUES(15, 15, 15, '2024-03-10', NULL, '2024-03-24');

INSERT INTO staff VALUES(1, 'Ramya', 'Mohan', 'Librarian', 'ramyamohan@gmailcom', '2022-05-01');
INSERT INTO staff VALUES(2, 'Sangeeta', 'Shekar', 'Assistant Librarian', 'sangeetashekar@gmailcom', '2022-06-01');
INSERT INTO staff VALUES(3, 'Ananya', 'Kulkarni', 'Library Assistant', 'ananyakulkarni@gmailcom', '2022-07-01');
INSERT INTO staff VALUES(4, 'Vandana', 'Rao', 'Library Clerk', 'vandanarao@gmailcom', '2022-08-01');
INSERT INTO staff VALUES(5, 'Manoj', 'Patel', 'Library Technician', 'manojpatel@gmailcom', '2022-09-01');
INSERT INTO staff VALUES(6, 'Geeta', 'Deshmukh', 'Librarian', 'geetadeshmukh@gmailcom', '2022-10-01');
INSERT INTO staff VALUES(7, 'Prakash', 'Jain', 'Assistant Librarian', 'prakashjain@gmailcom', '2022-11-01');
INSERT INTO staff VALUES(8, 'Rekha', 'Bhat', 'Library Assistant', 'rekhabhatt@gmailcom', '2022-12-01');
INSERT INTO staff VALUES(9, 'Ashok', 'Shiva', 'Library Clerk', 'ashokshiva@gmailcom', '2023-01-01');
INSERT INTO staff VALUES(10, 'Vikas', 'Pande', 'Library Technician', 'vikaspandey@gmailcom', '2023-02-01');
INSERT INTO staff VALUES(11, 'Anita', 'Naik', 'Librarian', 'anitanaik@gmailcom', '2023-03-01');
INSERT INTO staff VALUES(12, 'Mahesh', 'Chauhan', 'Assistant Librarian', 'maheshchauhan@gmailcom', '2023-04-01');
INSERT INTO staff VALUES(13, 'Ritu', 'Mesta', 'Library Assistant', 'ritumesta@gmailcom', '2023-05-01');
INSERT INTO staff VALUES(14, 'Amit', 'Bhargava', 'Library Clerk', 'amitbhargava@gmailcom', '2023-06-01');
INSERT INTO staff VALUES(15, 'Sunita', 'Kumari', 'Library Technician', 'sunitakumari@gmailcom', '2023-07-01');

SELECT * FROM customers m INNER JOIN book_records br ON m.member_id = br.member_id INNER JOIN books b ON br.book_id = b.book_id INNER JOIN staff s ON s.staff_id = br.borrow_id;  

SELECT * FROM customers m LEFT JOIN book_records br ON m.member_id = br.member_id LEFT JOIN books b ON br.book_id = b.book_id
LEFT JOIN staff s ON s.staff_id = br.borrow_id;  

SELECT * FROM customers m RIGHT JOIN book_records br ON m.member_id = br.member_id RIGHT JOIN books b ON br.book_id = b.book_id RIGHT JOIN staff s ON s.staff_id = br.borrow_id; 

SELECT * FROM customers m INNER JOIN book_records br ON m.member_id = br.member_id
LEFT JOIN books b ON br.book_id = b.book_id
LEFT JOIN staff s ON s.staff_id = br.borrow_id; 

SELECT m.first_name, m.last_name, b.title, br.borrow_date, s.first_name , s.last_name FROM customers m
INNER JOIN book_records br ON m.member_id = br.member_id RIGHT JOIN books b ON br.book_id = b.book_id
 RIGHT JOIN staff s ON s.staff_id = br.borrow_id; 

SELECT * FROM customers m LEFT JOIN book_records br ON m.member_id = br.member_id
RIGHT JOIN books b ON br.book_id = b.book_id
RIGHT JOIN staff s ON s.staff_id = br.borrow_id;  

SELECT m.first_name, m.last_name, b.title, br.borrow_date, s.first_name , s.last_name FROM customers m
RIGHT JOIN book_records br ON m.member_id = br.member_id
LEFT JOIN books b ON br.book_id = b.book_id
LEFT JOIN staff s ON s.staff_id = br.borrow_id; 

SELECT * FROM books CROSS JOIN book_records; 