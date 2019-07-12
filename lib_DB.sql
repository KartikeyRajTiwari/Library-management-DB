 create database libproject;
 use libproject;
CREATE TABLE BOOKS(ISBN int(100) not null,book_title
varchar(50) not null,category varchar(50) not null,rental_price int(10) not
null,status varchar(50),author varchar(50) not null,publisher varchar(50) not
null,primary key(ISBN)) ;

CREATE TABLE EMPLOYEE(employ_id int(10) not
null,employ_name varchar(50) not null,position varchar(30) not null,salary
int(10) not null,primary key(employ_id));

create table customer(customer_id int(10) not null,customer_name
varchar(50),customer_address varchar(100) not null,registration_date date not
null,primary key(customer_id));

create table brach(branch_no int(10) not null,manager_id int(10) not
null,branch_address varchar(100) not null,contact_no int(10) not null,primary
key(branch_no));

create table issue_status(issue_id int(10) not null,issued_cust int(10) not
null,issued_book_name varchar(50) not null,issue_date date not null,isbn_book
int(10) not null,primary key(issue_id),constraint foreign key(isbn_book)
references BOOKS(ISBN),constraint foreign key(issued_cust) references
customer(customer_id));
alter table brach rename branch;

create table return_status(return_id int(10) not null,return_cust int(10)
not null,returned_book_name varchar(50) not null,return_date date not
null,isbn_book2 int(10) not null,primary key(return_id),constraint foreign
key(isbn_book2) references BOOKS(ISBN),constraint foreign key(return_cust)
references issue_status(issued_cust));
