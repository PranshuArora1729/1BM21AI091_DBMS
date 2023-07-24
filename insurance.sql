create database bank_anko;
use bank_anko;

create table depositors(
customer_name varchar(10),
customer_struct varchar(10),
customer_city varchar(10),
customer_id varchar(6),
primary key(customer_name)
);

create table depositors(
depositors_name varchar(10),
branch varchar(10),
amount int(10),
primary key(depositors_name)
);

create table loan(
loan_number int(10),
branch_name varchar(10),
city varchar(10),
assets varchar(10),
primary key(loan_number)
);

create table branch(
branch_name varchar(10),
branch_city varchar(10),
assets varchar(10),
primary key(branch_name),
foreign key(assets) references loan(laon_number)
);

create table bank_account(
acc_no int(10),
branch_name varchar(10),
balance int(50),
customer_id int(10),
primary key
