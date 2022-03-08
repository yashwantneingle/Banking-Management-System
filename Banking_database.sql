show databases;
create database Banking;
USE Banking;


CREATE TABLE Admin (
  id int(14) NOT NULL,
  branch_id int(14) NOT NULL,
  name varchar(40) NOT NULL,
  email_id varchar(40) NOT NULL,
  password varchar(20) NOT NULL,
  message varchar(50) NOT NULL,
  PRIMARY KEY (id , branch_id));


INSERT INTO Admin (id, branch_id, name, email_id, password,message) VALUES
(111, 1 ,'Nagpur_admin', 'admin1@gmail.com', 'admin',""),
(224, 2 ,'Mumbai_admin2', 'admin2@gmail.com', 'admin',""),
(312, 3 ,'admin3', 'admin3@gmail.com', 'admin',""),
(243, 4 ,'admin56', 'admin56@gmail.com', 'admin',""),
(242, 5 ,'admin4', 'admin4@gmail.com', 'admin',"");



CREATE TABLE Customer (
  id int(14) NOT NULL,
  account_no varchar(15),
  branch_id int(14) NOT NULL,
  name varchar(40) NOT NULL,
  email_id varchar(40) NOT NULL,
  phone int(14) NOT NULL,
  password varchar(20) NOT NULL,
  DOB date NOT NULL,
  Balance decimal(10,2) NOT NULL,
  address varchar(100) NOT NULL,
  PRIMARY KEY (id , Board_id)
);


INSERT INTO Customer (id, account_no,branch_id, name, email_id, phone, password, DOB, address) VALUES
(1,'351313513513', 1, 'Avinash', 'avinash@gmail.com', 2147483647, 'pass1234', '1995-12-15', '1200.00','Gandhi nagar'),
(2,'351313513513', 1 ,'Yadnyadeep','yadnya@gmail.com', 999999999, 'pass1234', '1998-12-15', '1200.00','Saraswati colony'),
(3,'351313513513', 2 ,'Vrushabh', 'vrushabhl@gmail.com', 2147483647, 'pass1234', '1995-12-15','1200.00','Main road'),
(4, '351313513513',2 , 'Vivek', 'vivek@gmail.com', 2147483647, 'pass1234', '1992-12-10', '1200.00','Main raod'),
(5, '351313513513',3 , 'Vinay', 'abc@gmail.com', 2147483647, 'pass1234', '1989-12-08', '1200.00','Maharashtra'),
(6,'351313513513', 3 , 'xyz', 'xyz@gmail.com', 2147483647, 'pass1234', '1989-02-15', '1200.00','Maharashtra'),
(7, '351313513513',4 ,'akash', 'akash@gmail.com', 123456789, 'pass1234', '1989-02-15','1200.00', 'Maharshtra'),
(757, '351313513513',4 ,'Rahul', 'rahul@gmail.com', 123456789, 'pass1234', '1989-12-15', '1200.00','India'),
(7,'351313513513', 5 ,'Ram', 'ram@gmail.com', 123456789, 'pass1234', '1996-01-15', '1200.00', 'Maharastra'),
(75,'351313513513', 5 ,'Yashwant', 'yashwant@gmail.com', 123456789, 'pass1234', '1989-01-15', '120000.00', 'Maharashtra');




CREATE TABLE Ministatement (
  Account_no int(14) NOT NULL,
  branch_id int(14) NOT NULL,
  payment_date date NOT NULL,
  transaction_id int(14) NOT NULL,
  Amount decimal(10,2) NOT NULL,
  transaction_type varchar(10) NOT NULL,
  opening decimal(10,2) NOT NULL,
  PRIMARY KEY (Account_no , transaction_id , payment_date));



INSERT INTO Ministatement (Account_no, branch_id,payment_date, transaction_id, Amount, transaction_type,opening) VALUES
('351313513513',1,'2021-12-01',3535135153,'1000.00',"credited",'12000.00')
('351313513513',1,'2021-12-05',3535185153,'1200.00',"credited",'13000.00')
('351313513513',1,'2022-01-01',3535175153,'1200.00',"credited",'14000.00');



CREATE TABLE query (
  id int(14) NOT NULL,
  branch_id int(14) NOT NULL,
  complaint varchar(140) NOT NULL,
  response varchar(40) NOT NULL,
  PRIMARY KEY (id , Board_id));



INSERT INTO query (id, branch_id, complaint, response) VALUES
(1, 1, 'Transaction Not Processed', 'Queued'),
(2, 1, 'Transaction Not Processed', 'PROCESSED'),
(3, 2, 'Previous Complaint Not Processed', 'Queued'),
(757, 4, 'Transaction Not Processed', 'Queued');



CREATE TABLE transaction (
  id int(14) NOT NULL,
  Branch_id int(14) NOT NULL,
  Payable_amount decimal(10,2) NOT NULL,
  Pay_date date NOT NULL,
  status varchar(20) NOT NULL,
  PRIMARY KEY (id , Board_id , Pay_date));



INSERT INTO transaction (id, Branch_id, Payable_amount, Pay_date, status) VALUES
(1, 1, '1024.00', '2020-01-06', 'PROCESSED'),
(2, 1, '1400.00', '2020-10-10', 'PROCESSED'),
(4, 2, '1206.00', '2020-10-10', 'PROCESSED'),
(3, 2, '2665.00', '2020-10-10', 'PROCESSED'),
(6, 3, '4440.00', '2020-10-10', 'PROCESSED'),
(7, 4, '3990.00', '2020-10-10', 'PROCESSED'),
(7, 5, '6760.00', '2020-10-10', 'PROCESSED'),
(9, 5, '3470.00', '2020-10-10', 'PROCESSED');


CREATE TABLE Employee (
  id int(14) NOT NULL,
  Branch_id int(14) NOT NULL,
  name varchar(40) NOT NULL,
  email_id varchar(40) NOT NULL,
  phone int(15) NOT NULL,
  password varchar(20) NOT NULL,
  PRIMARY KEY (id , Board_id));



INSERT INTO Employee (id, Branch_id, name, email_id, phone, password) VALUES
(3551, 1, 'Aman', 'aman@gmail.com', 2147483647, 'pass'),
(3852, 1 ,'Abhishek', 'abhishek@gmail.com', 999999999, 'pass'),
(68683, 2 ,'Ana', 'ana@gmail.com', 2147483123, 'pass'),
(3684, 2 , 'Manoj', 'manaj@gmail.com', 214748647, 'pass'),
(5885, 3 , 'abc', 'abc@gmail.com', 2147483647, 'pass'),
(2254, 3 , 'xyz', 'xyz@gmail.com', 458748547, 'pass'),
(12, 4 ,'akash', 'akash@gmail.com', 12445689, 'pass'),
(72, 4 ,'Rahul', 'rahul@gmail.com', 12456789, 'pass'),
(241, 5 ,'abc', 'abc@gmail.com', 123456789, 'pass'),
(74, 5 ,'xyz', 'xyz@gmail.com', 274567889, 'pass');

COMMIT;
